use ExtUtils::MakeMaker;
WriteMakefile(
    NAME                => 'Test::Signature',
    VERSION_FROM        => 'lib/Test/Signature.pm',
    PREREQ_PM => {
                'Test::Builder' => '0.17',
                'Test::More' => '0.47',
            },
    ($] >= 5.005 ?
      (ABSTRACT_FROM => 'lib/Test/Signature.pm',
      AUTHOR     => 'Autrijus Tang <autrijus@autrijus.org>') : ()),
    ( eval($ExtUtils::MakeMaker::VERSION) >= 6.21 ?
        ( SIGN => 1, ) : ()),
);
