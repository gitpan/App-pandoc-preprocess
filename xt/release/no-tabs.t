use strict;
use warnings;

# this test was generated with Dist::Zilla::Plugin::NoTabsTests 0.08

use Test::More 0.88;
use Test::NoTabs;

my @files = (
    'bin/ppp',
    'lib/App/pandoc/preprocess.pm',
    't/00-check-deps.t',
    't/00-compile.t',
    't/00-load.t',
    't/00-report-prereqs.dd',
    't/00-report-prereqs.t',
    't/000-report-versions.t',
    't/10-dirs.t',
    't/files/hello.md'
);

notabs_ok($_) foreach @files;
done_testing;
