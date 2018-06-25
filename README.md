# alienfile::theworks [![Build Status](https://secure.travis-ci.org/plicease/alienfile-theworks.png)](http://travis-ci.org/plicease/alienfile-theworks)

Order an alienfile with beetroot, pineapple and fried egg.

# SYNOPSIS

    use alienfile::theworks;

is the same as:

    use alienfile;
    use Path::Tiny    qw( path                   );
    use Path::Capture qw( capture capture_merged );
    use File::Which   qw( which where            );
    use File::chdir   qw( $CWD                   );

# DESCRIPTION

[Alien::Build](https://metacpan.org/pod/Alien::Build) internally uses a number of modules like [Path::Tiny](https://metacpan.org/pod/Path::Tiny)
and [File::Which](https://metacpan.org/pod/File::Which), but does not use them in external interfaces, even
though some of them can be very helpful in an [alienfile](https://metacpan.org/pod/alienfile).  The rationale
for this is to reduce interface dependencies.  At the moment, it seems
unlikely that [Alien::Build](https://metacpan.org/pod/Alien::Build) will stop using [Path::Tiny](https://metacpan.org/pod/Path::Tiny) for example,
but we make sure it isn't an interface dependency in case we decide to
change the internal implementation.  This pragma allows you to write an
[alienfile](https://metacpan.org/pod/alienfile) with these extras built in automatically.

# ETYMOLOGY

In my home town of Sydney, when you order a burger the works, it comes
with beetroot (pickled beet slices), pineapple and a fried egg.  Not for
everyone but I find it delicious!

# SEE ALSO

- [alienfile](https://metacpan.org/pod/alienfile)
- [Alien::Build](https://metacpan.org/pod/Alien::Build)

# AUTHOR

Graham Ollis <plicease@cpan.org>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2018 by Graham Ollis.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
