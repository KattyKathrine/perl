#!/usr/bin/perl

# Класс "Рыцарь", наследующий от класса Champion
package Knight;
    
    use base Champion;
    use strict;
    
    sub new {
        my($class, $name, $health) = @_;
        my $self = Champion::new($class, $name, $health);
        $self->{mounted} = 0;
        $self->{spelled} = 0;
        return $self;
    } 
    
    # метод “нанести урон копьём”
    sub spear {
        
        $_[1]->{health} -= 10;        
        
    }
    
    # метод “оседлать коня”
    sub mount {
        
        my($self) = @_;
        $self->{mounted} = 1;
    
    }
    
    # метод “исцелиться”
    sub heal_self {
    
        my($self) = @_;
        $self->{health} = $self->{maxhealth};
    
    }
    
1;
