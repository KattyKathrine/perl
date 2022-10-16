# “Замечательная телефонная книжка”. Нужно реализовать самые замечательные функции:
# - показать все контакты
# - добавить контакт
# - удалить контакт
# - изменить контакт
# Данные должны храниться в базе данных.


package MyApp;
use Dancer2;
use Dancer2::Plugin::Database;
use Dancer2::Plugin::DBIC;


our $VERSION = '0.1';

get '/' => sub {
    template 'index' => { 'title' => 'MyApp' };
};

# Страница, выводящая все контакты
get '/contacts' => sub {
    my @contacts = map { { $_->get_columns } } schema->resultset('Contact')->all;

    template 'contacts', {
        contacts => \@contacts,
    };
};

# Страница, отображающая контакт с заданным ID
get '/contacts/:id[Int]' => sub {
    
    my $contact =  schema->resultset('Contact')->find(route_parameters->get('id'));
    
    template 'contact', {
        contact => $contact,
    };
};

# Удаление контакта с заданным ID
post '/contacts/:id[Int]/delete' => sub {
    
    my $contact =  schema->resultset('Contact')->find(route_parameters->get('id'));
    $contact->delete;
    
    redirect '/contacts'
    
};

# Страница редактирования контакта
get '/contacts/:id[Int]/edit' => sub {
    
    my $contact =  schema->resultset('Contact')->find(route_parameters->get('id'));
       
    template 'edit_contact', {
        contact => $contact,
    };
    
};

# Будут отредактированы только те поля, которые были заполнены
post '/contacts/:id[Int]/edit' => sub {
    
    my $name = body_parameters->get('name');
    my $number = body_parameters->get('number');
    my $email = body_parameters->get('email');
    
    my $contact =  schema->resultset('Contact')->find(route_parameters->get('id'));
    
    $contact->name($name) if $name; 
    $contact->number($number) if $number; 
    $contact->email($email) if $email; 
    $contact->update;
    
    redirect '/contacts/'.$contact->id;
    
};

# Создание нового контакта
get '/contacts/create' => sub {
    
    template 'create_contact'
};

post '/contacts/create' => sub {
    
    my $contact =  schema->resultset('Contact')->create({
        name  => body_parameters->get('name'),
        number => body_parameters->get('number'),
        email => body_parameters->get('email'),
    });
    
    redirect '/contacts/'.$contact->id;
    
};

true;
