package MyApp::Schema;

use warnings;
use strict;
use parent qw/DBIx::Class::Schema/;

our $VERSION = '1.00';

__PACKAGE__->load_namespaces;

1; 
