package Moonshine::Bootstrap::Component::EmbedResponsiveIframe;

use strict;
use warnings;

use Moonshine::Magic;
use Moonshine::Bootstrap::Component;

extends 'Moonshine::Bootstrap::Component';

has(
    embed_responsive_iframe_spec => sub {
        {
            tag        => { default => 'iframe' },
            class_base => { default => 'embed-responsive-item' },
        };
    }
);

sub embed_responsive_iframe {
    my ($self) = shift;

    my ( $base_args, $build_args ) = $self->validate_build(
        {
            params => $_[0] // {},
            spec => $self->embed_responsive_iframe_spec,
        }
    );
    return Moonshine::Element->new($base_args);
}

1;

__END__

=head1 NAME

Moonshine::Bootstrap::Component::EmbedResponsiveIframe

=head1 SYNOPSIS

    responsive_iframe({  });

returns a Moonshine::Element that renders too..

	<responsive_iframe type="responsive_iframe" class="btn btn-success">Left</responsive_iframe>

=cut


