#!/usr/bin/perl

# Класс “Великан”, наследующий от класса Champion
package Giant;
    
    use base Champion;
    use strict;
    
    sub new {
        my($class, $name, $health) = @_;
        my $self = Champion::new($class, $name, $health);
        return $self;
    } 
    
    # метод “нанести урон дубиной”
    sub club {
        
        $_[1]->{health} -= 5;        
        
    }
    
    # метод “околдовать”
    sub spell {
    
        $_[1]->{spelled} = 1;   
    
    }
    
1;
