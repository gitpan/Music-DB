package Music::DB::DataTypes::Genre;
use strict 'vars';
use vars '@ISA';
use Music::DB::Util::Rearrange;


# Data Accessors for Genre objects

sub genre    { shift->{genre};    }
sub genre_id { shift->{genre_id}; }


1;
