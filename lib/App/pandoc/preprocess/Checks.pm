package App::pandoc::preprocess;
BEGIN {
  $App::pandoc::preprocess::AUTHORITY = 'cpan:DBR';
}
{
  $App::pandoc::preprocess::VERSION = '0.3.0';
}

#  PODNAME: App::pandoc::preprocess::Checks
# ABSTRACT: Checks your environment

use v5.14;
use strict;
use warnings;

use Moo;
use MooX::Types::MooseLike::Base qw| :all |;

has installed_ditaa   => (is => 'ro', isa => Defined, required => 1, default => sub { `which ditaa`   or die q<Can't find program ditaa -- Abort>  });
has installed_rdfdot  => (is => 'ro', isa => Defined, required => 1, default => sub { `which rdfdot`  or die q<Can't find program rdfdot -- Abort> });
has installed_dot     => (is => 'ro', isa => Defined, required => 1, default => sub { `which dot`     or die q<Can't find program dot -- Abort>    });
has installed_mogrify => (is => 'ro', isa => Defined, required => 1, default => sub { `which mogrify` or die q<Can't find program mogrify -- Abort>});

1;

__END__

=pod

=head1 NAME

App::pandoc::preprocess::Checks - Checks your environment

=head1 VERSION

version 0.3.0

=head1 AUTHOR

DBR <dbr@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by DBR.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
