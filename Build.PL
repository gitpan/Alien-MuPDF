
# This file was automatically generated by Dist::Zilla::Plugin::Alien v0.014.
use strict;
use warnings;

use Module::Build 0.28;
use lib qw{inc}; use Alien::Base::ModuleBuild;

my %module_build_args = (
  "alien_build_commands" => [
    "make"
  ],
  "alien_inline_auto_include" => [],
  "alien_install_commands" => [
    "make prefix=%s install"
  ],
  "alien_name" => "MuPDF",
  "alien_repository" => {
    "host" => "mupdf.com",
    "location" => "/downloads/",
    "pattern" => "^mupdf-([\\d\\.]+)-source\\.tar\\.gz\$",
    "protocol" => "http"
  },
  "build_requires" => {},
  "configure_requires" => {
    "Alien::Base" => "0.002",
    "File::ShareDir" => "1.03"
  },
  "dist_abstract" => "Alien package for the MuPDF PDF rendering library",
  "dist_author" => [
    "Zakariyya Mughal <zmughal\@cpan.org>"
  ],
  "dist_name" => "Alien-MuPDF",
  "dist_version" => "0.001",
  "license" => "perl",
  "module_name" => "Alien::MuPDF",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "Alien::Base" => "0.006",
    "Exporter" => 0,
    "File::ShareDir" => "1.03",
    "File::Spec" => 0,
    "parent" => 0,
    "strict" => 0,
    "warnings" => 0
  },
  "script_files" => [],
  "test_requires" => {
    "Cwd" => 0,
    "File::Basename" => 0,
    "Module::Load" => 0,
    "Test::More" => 0
  }
);


my %fallback_build_requires = (
  "Cwd" => 0,
  "File::Basename" => 0,
  "Module::Load" => 0,
  "Test::More" => 0
);


unless ( eval { Module::Build->VERSION(0.4004) } ) {
  delete $module_build_args{test_requires};
  $module_build_args{build_requires} = \%fallback_build_requires;
}

my $build = Alien::Base::ModuleBuild->new(%module_build_args);

$build->create_build_script;
