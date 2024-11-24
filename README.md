# Alien::cargo::clone ![static](https://github.com/PerlAlien/Alien-cargo-clone/workflows/static/badge.svg) ![linux](https://github.com/PerlAlien/Alien-cargo-clone/workflows/linux/badge.svg)

Find or build the cargo clone command

# SYNOPSIS

```perl
use Alien::cargo::clone;
use Env qw( @PATH );

push @PATH, Alien::cargo::clone->bin_dir;
system 'cargo', 'clone', 'foo-bar';
```

# DESCRIPTION

This [Alien](https://metacpan.org/pod/Alien) provides the [cargo clone](https://crates.io/crates/cargo-clone) command.

# METHODS

## bin\_dir

```perl
my @dir = Alien::cargo::clone->bin_dir;
```

Returns the list of directories (if any) that need to be added to the `PATH` to use
`cargo clone`.

# AUTHOR

Graham Ollis <plicease@cpan.org>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2024 by Graham Ollis.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
