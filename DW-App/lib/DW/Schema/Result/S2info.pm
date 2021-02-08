use utf8;
package DW::Schema::Result::S2info;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DW::Schema::Result::S2info

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

=head1 TABLE: C<s2info>

=cut

__PACKAGE__->table("s2info");

=head1 ACCESSORS

=head2 s2lid

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 infokey

  data_type: 'varchar'
  is_nullable: 0
  size: 80

=head2 value

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=cut

__PACKAGE__->add_columns(
  "s2lid",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "infokey",
  { data_type => "varchar", is_nullable => 0, size => 80 },
  "value",
  { data_type => "varchar", is_nullable => 0, size => 255 },
);

=head1 PRIMARY KEY

=over 4

=item * L</s2lid>

=item * L</infokey>

=back

=cut

__PACKAGE__->set_primary_key("s2lid", "infokey");


# Created by DBIx::Class::Schema::Loader v0.07049 @ 2021-02-07 23:50:54
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:nc35lzh/UABuwNEGiiw3EQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
