package Music::DB::DataTypes::ArtistList;

use strict 'vars';
use Music::DB::DataTypes::Artist;

use vars '@ISA';
@ISA = qw/Music::DB::DataTypes::Artist/;


# THIS COULD BE FURTHER ABSTRACTED INTO A SINGLE LIST OBJECT
# FOR ALL TYPES

sub artists {
  my $self = shift;
  my @artists = @{$self->{artists}};
  return (wantarray ? @artists : \@artists);
}

1;
