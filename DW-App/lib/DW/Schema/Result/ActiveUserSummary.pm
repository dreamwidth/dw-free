use utf8;
package DW::Schema::Result::ActiveUserSummary;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DW::Schema::Result::ActiveUserSummary

=cut

use strict;
use warnings;

use Moose;
use MooseX::NonMoose;
use MooseX::MarkAsMethods autoclean => 1;
extends 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::InflateColumn::DateTime>

=back

=cut

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 TABLE: C<active_user_summary>

=cut

__PACKAGE__->table("active_user_summary");

=head1 ACCESSORS

=head2 year

  data_type: 'smallint'
  is_nullable: 0

=head2 month

  data_type: 'tinyint'
  is_nullable: 0

=head2 day

  data_type: 'tinyint'
  is_nullable: 0

=head2 hour

  data_type: 'tinyint'
  is_nullable: 0

=head2 clusterid

  data_type: 'tinyint'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 type

  data_type: 'char'
  is_nullable: 0
  size: 1

=head2 count

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "year",
  { data_type => "smallint", is_nullable => 0 },
  "month",
  { data_type => "tinyint", is_nullable => 0 },
  "day",
  { data_type => "tinyint", is_nullable => 0 },
  "hour",
  { data_type => "tinyint", is_nullable => 0 },
  "clusterid",
  { data_type => "tinyint", extra => { unsigned => 1 }, is_nullable => 0 },
  "type",
  { data_type => "char", is_nullable => 0, size => 1 },
  "count",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
);


# Created by DBIx::Class::Schema::Loader v0.07049 @ 2021-02-07 23:50:53
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Y7SImXAFDLP/QusVzC2WOQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
