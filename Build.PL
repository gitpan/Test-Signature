#!/usr/bin/perl -w
use strict;
use Module::Build 0.11;


my $m = Module::Build->new(
    dist_name => 'Test-Signature',
    dist_version => '1.03',
    license => 'perl',

    requires => {
	'Test::Builder'     => '0.17',
	'perl'              => '5.6.0',
    },
    recommends => {
	'Module::Signature' => '0.16',
    },
    build_requires => {
	'Test::More'        => '0.47',
    },

    verbose => 1,
);

$m->create_build_script;
