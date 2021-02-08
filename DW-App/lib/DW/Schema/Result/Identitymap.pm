use utf8;
package DW::Schema::Result::Identitymap;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

DW::Schema::Result::Identitymap

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

=head1 TABLE: C<identitymap>

=cut

__PACKAGE__->table("identitymap");

=head1 ACCESSORS

=head2 idtype

  data_type: 'char'
  is_nullable: 0
  size: 1

=head2 identity

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 userid

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "idtype",
  { data_type => "char", is_nullable => 0, size => 1 },
  "identity",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "userid",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</idtype>

=item * L</identity>

=back

=cut

__PACKAGE__->set_primary_key("idtype", "identity");


# Created by DBIx::Class::Schema::Loader v0.07049 @ 2021-02-07 23:50:54
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:uUMk42sPz6D49bIFRIDw1g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
