package Music::DB::DataTypes::SongList;
use strict 'vars';
use vars '@ISA';

sub songs {  @{shift->{songs} };  }

1;
