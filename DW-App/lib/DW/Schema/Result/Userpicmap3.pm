use utf8;
package DW::Schema::Result::Userpicmap3;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DW::Schema::Result::Userpicmap3

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

=head1 TABLE: C<userpicmap3>

=cut

__PACKAGE__->table("userpicmap3");

=head1 ACCESSORS

=head2 userid

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 mapid

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 kwid

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 picid

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 redirect_mapid

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "userid",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "mapid",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "kwid",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
  "picid",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
  "redirect_mapid",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</userid>

=item * L</mapid>

=back

=cut

__PACKAGE__->set_primary_key("userid", "mapid");

=head1 UNIQUE CONSTRAINTS

=head2 C<userid>

=over 4

=item * L</userid>

=item * L</kwid>

=back

=cut

__PACKAGE__->add_unique_constraint("userid", ["userid", "kwid"]);


# Created by DBIx::Class::Schema::Loader v0.07049 @ 2021-02-07 23:50:54
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:zMG46jMhMkP0MDBcRXKMVQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
