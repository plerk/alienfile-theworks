package alienfile::theworks;

use strict;
use warnings;
use Exporter;
use alienfile       1.46;
use Path::Tiny      0.077 qw( path                   );
use Capture::Tiny   0.17  qw( capture capture_merged );
use File::Which     0     qw( which where            );
use File::chdir     0;
use 5.008001;

# ABSTRACT: Order an alienfile with beetroot, pineapple and fried egg.
# VERSION

=head1 SYNOPSIS

 use alienfile::theworks;

is the same as:

 use alienfile;
 use Path::Tiny    qw( path                   );
 use Path::Capture qw( capture capture_merged );
 use File::Which   qw( which where            );
 use File::chdir   qw( $CWD                   );

=head1 DESCRIPTION

L<Alien::Build> internally uses a number of modules like L<Path::Tiny>
and L<File::Which>, but does not use them in external interfaces, even
though some of them can be very helpful in an L<alienfile>.  The rationale
for this is to reduce interface dependencies.  At the moment, it seems
unlikely that L<Alien::Build> will stop using L<Path::Tiny> for example,
but we make sure it isn't an interface dependency in case we decide to
change the internal implementation.  This pragma allows you to write an
L<alienfile> with these extras built in automatically.

=head1 ETYMOLOGY

In my home town of Sydney, when you order a burger the works, it comes
with beetroot (pickled beet slices), pineapple and a fried egg.  Not for
everyone but I find it delicious!

=head1 SEE ALSO

=over

=item L<alienfile>

=item L<Alien::Build>

=back

=cut

our @EXPORT = @alienfile::EXPORT;

push @EXPORT, qw( path capture capture_merged which where $CWD );

sub import
{
  strict->import;
  warnings->import;
  goto &Exporter::import;
}

1;
