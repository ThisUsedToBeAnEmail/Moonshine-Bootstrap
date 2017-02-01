use 5.006;
use strict;
use warnings;
use ExtUtils::MakeMaker;
use Module::Metadata;

WriteMakefile(
    NAME             => 'Moonshine::Bootstrap',
    AUTHOR           => q{Robert Acock <thisusedtobeanemail@gmail.com>},
    VERSION_FROM     => 'lib/Moonshine/Bootstrap.pm',
    ABSTRACT_FROM    => 'lib/Moonshine/Bootstrap.pm',
    LICENSE          => 'artistic_2',
    PL_FILES         => {},
    MIN_PERL_VERSION => 5.006,
    CONFIGURE_REQUIRES => {
        'ExtUtils::MakeMaker' => 0,
    },
    BUILD_REQUIRES => {
        'Test::More' => 0,
        'Moonshine::Test' => 0.06,
        'strict' => 0,
        'warnings' => 0,
    },
    PREREQ_PM => {
        'Moonshine::Component' => '0.04',
        'Moonshine::Element' => '0.05',
        'Moonshine::Magic' => '0.04',
        'Moonshine::Util' => '0.02',
        'feature' => 0,
        'strict' => 0,
        'warnings' => 0,
    },
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES => 'Moonshine-Bootstrap-*' },
    META_MERGE => {
        'meta-spec' => { version => 2 },
        resources => {
            repository => {
                type => 'git',
                url  => 'https://github.com/ThisUsedToBeAnEmail/Moonshine-Bootstrap.git',
                web  => 'https://github.com/ThisUsedToBeAnEmail/Moonshine-Bootstrap',
            },
        },
    },
    META_ADD => {
        provides => Module::Metadata->provides(version => '2', dir => 'lib'),
	},
);
