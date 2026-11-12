#!/usr/bin/env raku

sub encode($input, $output) {
    # https://trac.ffmpeg.org/wiki/Encode/MP3
    my $proc = run <ffmpeg -loglevel fatal -i >, $input.absolute, < -acodec:a libmp3lame -q:a 7 >, $output.absolute, :out;
    $proc.out.slurp(:close);
}

class File {
    has $.path;
    has $.target;
}

sub collect($folder) {
    my @d;
    for $folder.dir -> $entry {
        if $entry.f {
            if $entry.basename ~~ / ^ ( .+ ) \. [ opus | ogg | flac ] $ / {
                my $name = $0;
                my $target = $folder.add($name ~ ".mp3");
                #next if $target.e;
                $target.unlink if $target.e;
                @d.push: File.new(path => $entry, :$target);
            }
        }
        elsif $entry.d {
            @d.append: collect($entry);
        }
    }
    return @d;
}

sub process(@files) {
    my $count = @files.elems;
    my atomicint $progress = 0;
    #@files.race(:degree(32), :batch(1)).map: -> $entry {
    race for @files -> $entry {
        encode($entry.path, $entry.ziel);
        if $entry.target.s {
            $entry.path.unlink;
        }
        $progress⚛++;
        say $entry.path;
        say "################## " ~ (⚛$progress / $count * 100).round(0.01) ~ "% ####################";
    }
}

sub MAIN($folder where *.IO.d) {
    my @list = collect($folder.IO);
    #@list = @list[0..20];
    process(@list);
}
