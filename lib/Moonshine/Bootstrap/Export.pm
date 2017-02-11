package Moonshine::Bootstrap::Trait::Export;

use strict;
use warnings;

use Method::Traits ':for_providers';

sub Export {
    my ($meta, $method_name, $type, $slot_name) = @_;

    use Data::Dumper;
    warn Dumper $meta;



}

1;
