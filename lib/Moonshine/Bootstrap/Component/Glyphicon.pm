package Moonshine::Bootstrap::Component::Glyphicon;

use strict;
use warnings;

use Moonshine::Magic;

extends 'Moonshine::Bootstrap::Component';

has (
	glyphicon_spec => sub { die "spec is required" },
);

sub glyphicon {
    my ($self) = shift;
    my ( $base_args, $build_args ) = $self->validate_build(
        {
            params => $_[0] // {},
            spec => $self->glyhicon_spec,
        }
    );
    return $self->span($base_args);
}

1;

__END__

=head2 Glyphicon 

    $self->glyphicon({ class => 'search' });

=head3 options

=over

=item tag

default span

=item class

is required

=item aria_hidden

default true

=back

=head3 Sample Output

    <span class="glyphicon glyphicon-search" aria-hidden="true"></span>

=cut


