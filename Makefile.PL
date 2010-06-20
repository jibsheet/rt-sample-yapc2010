use inc::Module::Install;

RTx 'RT-Sample-YAPC2010';
all_from 'lib/RT/Sample/YAPC2010.pm';
author   q{Kevin Falcone <falcone@bestpractical.com>};
license  'gplv2';

build_requires 'Test::More';

auto_install;

WriteAll;

