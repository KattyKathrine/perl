package MyApp::Schema::Result::Contact;

use warnings;
use strict;
use parent qw/DBIx::Class::Core/;

__PACKAGE__->table('contact');

__PACKAGE__->add_columns(
    id => {
        data_type => 'integer',
        is_auto_increment => 1
    },
    name => {
        data_type => 'text',
    },
    number => {
        data_type => 'text',
    },
    email => {
        data_type => 'text',
    },
);

__PACKAGE__->set_primary_key('id');



1; 
