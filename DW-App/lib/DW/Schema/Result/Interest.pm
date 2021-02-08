use utf8;
package DW::Schema::Result::Interest;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DW::Schema::Result::Interest

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

=head1 TABLE: C<interests>

=cut

__PACKAGE__->table("interests");

=head1 ACCESSORS

=head2 intid

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 intcount

  data_type: 'mediumint'
  extra: {unsigned => 1}
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "intid",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "intcount",
  { data_type => "mediumint", extra => { unsigned => 1 }, is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</intid>

=back

=cut

__PACKAGE__->set_primary_key("intid");


# Created by DBIx::Class::Schema::Loader v0.07049 @ 2021-02-07 23:50:54
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:xEOvMsqlKQANglTnW6mDCA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
