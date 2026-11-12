use v6;

class Configuration {
}

my $config = Configuration.new;
my $attr = Attribute.new(
    :name('$.test'), # Trying to add a "test" attribute
    :type(Str),
    :has_accessor(1), 
    :package(Configuration)
);
$config.^add_attribute( $attr );  # <-- This gives no warnings/errors
$config.^compose();
say "Current attributes: ", join ', ', $config.^attributes();
$attr.set_value( $config, "Hello" ); # <-- This fails with no such attribute '$.test'
say $config.test;
