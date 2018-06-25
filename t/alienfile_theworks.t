use Test2::V0 -no_srand => 1;
use alienfile::theworks;
use File::Temp qw( tempdir );
use File::Spec;

subtest alienfile => sub {

  imported_ok 'requires';
  imported_ok 'on';
  imported_ok 'plugin';
  # etc.

  is
    [@alienfile::theworks::EXPORT],
    bag {
      foreach my $symbol (sort @alienfile::EXPORT)
      {
        note "alienfile has $symbol";
        item $symbol;
      }
      etc;
    },
    'Exports are a superset of alienfile exports';

};

subtest 'path' => sub {
  imported_ok 'path';
  isa_ok path('.'), 'Path::Tiny';
};

subtest 'capture' => sub {

  imported_ok 'capture';
  imported_ok 'capture_merged';

  is
    [capture { print "hi"; print STDERR "ho"; 42 }],
    [qw( hi ho 42 )]
  ;
  
  is
    [capture_merged { print "hi\n"; print STDERR "ho\n"; 43 }],
    [ "hi\nho\n", 43 ]
  ;

};

subtest 'which' => sub {

  imported_ok 'which';
  imported_ok 'where';

  is
    [which 'perl'],
    [File::Which::which 'perl']
  ;

  is
    [where 'perl'],
    [File::Which::where 'perl']
  ;

  is
    [scalar which 'perl'],
    [scalar File::Which::which 'perl']
  ;

};

subtest '$CWD' => sub {

  imported_ok '$CWD';
  
  my $dir = tempdir( CLEANUP => 1 );

  my $old = $CWD;  
  chdir $dir;
  
  is($CWD, $dir);

  chdir $old;
};

done_testing
