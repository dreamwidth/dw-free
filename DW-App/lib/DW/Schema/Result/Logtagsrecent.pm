use utf8;
package DW::Schema::Result::Logtagsrecent;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DW::Schema::Result::Logtagsrecent

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

=head1 TABLE: C<logtagsrecent>

=cut

__PACKAGE__->table("logtagsrecent");

=head1 ACCESSORS

=head2 journalid

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 jitemid

  data_type: 'mediumint'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 kwid

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "journalid",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "jitemid",
  { data_type => "mediumint", extra => { unsigned => 1 }, is_nullable => 0 },
  "kwid",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</journalid>

=item * L</kwid>

=item * L</jitemid>

=back

=cut

__PACKAGE__->set_primary_key("journalid", "kwid", "jitemid");


# Created by DBIx::Class::Schema::Loader v0.07049 @ 2021-02-07 23:50:54
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Oe4zHfbknR61BFikDeYQ9A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
