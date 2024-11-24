package Alien::cargo::clone;

use strict;
use warnings;
use parent qw( Alien::Base );
use Alien::cargo;
use 5.008004;

# ABSTRACT: Find or build the cargo clone command
# VERSION

=head1 SYNOPSIS

 use Alien::cargo::clone;
 use Env qw( @PATH );
 
 unshift @PATH, Alien::cargo::clone->bin_dir;
 system 'cargo', 'clone', 'foo-bar';

=head1 DESCRIPTION

This L<Alien> provides the L<cargo clone|https://crates.io/crates/cargo-clone> command.

=head1 METHODS

=head2 bin_dir

 my @dir = Alien::cargo::clone->bin_dir;

Returns the list of directories (if any) that need to be added to the C<PATH> to use
C<cargo clone>.

=cut

sub bin_dir {
    my $self = shift;
    my @dirs = Alien::cargo->bin_dir;
    unshift @dirs, $self->SUPER::bin_dir;
    @dirs;
}

1;

=head1 SEE ALSO

=over 4

=item L<Alien::Rust>

=item L<Alien::cargo>

=item L<FFI::Build::File::Cargo>>

=back

=cut
