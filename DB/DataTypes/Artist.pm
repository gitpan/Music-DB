package Music::DB::DataTypes::Artist;
use strict;

use vars qw/@ISA/;

#use Music::DB::DataTypes::ArtistList;
#@ISA = qw/Music::DB::DataTypes::ArtistList/;
use Music::DB::Util::Rearrange;



# Data accessort for Artist objects

sub artist_id { return shift->{artist_id}; }
sub artist    { return shift->{artist};    }

# THESE MAY NEED TO BE AGGREGATED BY FETCHED SONGS FIRST
sub genres {
  my $self = shift;
  my @genres = @{$self->{genres}};
  return @genres;
}



# Add a song to the object
sub add_song {
  my ($self,$song) = @_;
  push (@{$self->{songs}},$song);
}

# Add a genre to the object
sub add_genre {
  my ($self,$genre) = @_;
  push (@{$self->{genre}},$genre);
}

# Add an album to the object
sub add_album {
  my ($self,$album) = @_;
  push (@{$self->{albums}},$album);
}

1;
