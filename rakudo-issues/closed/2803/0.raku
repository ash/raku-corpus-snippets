my $channel=Channel.new;    #create a new channel
$channel.send(0);           #kickstart the circular pipeline
react {
    whenever $channel {
        say $_;
        $channel.send($_ + 1); #send back to same pipeline
        #sit back and watch the memory usage grow
    }
}
