package Alien::cargo::clone;

use strict;
use warnings;
use parent qw( Alien::Base );
use 5.008004;

# ABSTRACT: Find or build the cargo clone command
# VERSION

=head1 SYNOPSIS

 use Alien::cargo::clone;
 use Env qw( @PATH );
 
 push @PATH, Alien::cargo::clone->bin_dir;
 system 'cargo', 'clone', 'foo-bar';

=head1 DESCRIPTION

This L<Alien> provides the L<cargo clone|https://crates.io/crates/cargo-clone> command.

=head1 METHODS

=head2 bin_dir

 my @dir = Alien::cargo::clone->bin_dir;

Returns the list of directories (if any) that need to be added to the C<PATH> to use
C<cargo clone>.

=cut

1;


