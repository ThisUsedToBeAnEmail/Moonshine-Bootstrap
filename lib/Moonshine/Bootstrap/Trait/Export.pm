package Moonshine::Bootstrap::Trait::Export;

use strict;
use warnings;

use Method::Traits ':for_providers';

our @EXPORT;

sub Export {
    my ($meta, $method_name) = @_;
    
    $meta->add_method( 'export' => sub {
        push @EXPORT, $method_name;
        return \@EXPORT;
    });
}

1;
