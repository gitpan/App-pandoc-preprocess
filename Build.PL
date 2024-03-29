
# This file was automatically generated by Dist::Zilla::Plugin::ModuleBuild v5.019.
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "Module::Build" => "0.3601"
  },
  "configure_requires" => {
    "ExtUtils::MakeMaker" => "6.30",
    "Module::Build" => "0.3601"
  },
  "dist_abstract" => "Preprocess Pandoc before Processing Pandoc",
  "dist_author" => [
    "DBR <dbr\@cpan.org>"
  ],
  "dist_name" => "App-pandoc-preprocess",
  "dist_version" => "0.9.5",
  "license" => "unrestricted",
  "module_name" => "App::pandoc::preprocess",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "File::Path" => 0,
    "File::Spec" => 0,
    "File::Temp" => 0,
    "perl" => "v5.14.0",
    "strict" => 0,
    "warnings" => 0
  },
  "script_files" => [
    "bin/ppp",
    "bin/ppp"
  ],
  "test_requires" => {
    "Carp" => 0,
    "ExtUtils::MakeMaker" => 0,
    "File::Spec" => 0,
    "Scalar::Util" => 0,
    "Test::CheckDeps" => "0.010",
    "Test::More" => "0.94",
    "Test::UseAllModules" => 0
  }
);


my %fallback_build_requires = (
  "Carp" => 0,
  "ExtUtils::MakeMaker" => 0,
  "File::Spec" => 0,
  "Module::Build" => "0.3601",
  "Scalar::Util" => 0,
  "Test::CheckDeps" => "0.010",
  "Test::More" => "0.94",
  "Test::UseAllModules" => 0
);


unless ( eval { Module::Build->VERSION(0.4004) } ) {
  delete $module_build_args{test_requires};
  $module_build_args{build_requires} = \%fallback_build_requires;
}

my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
