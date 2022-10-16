#!/usr/bin/perl

# Родительский класс "Участник сражения"
package Champion;
    use strict;
    
    sub new {
        
        my ($class, $name, $health) = @_;
        my $self = {
            name => $name,
            health => $health,
            maxhealth => $health,
            dead => 0,
        };
        
        bless $self, $class;
        
    }
    # метод "умереть", общий для потомков
    sub perish {
        
        my($self) = @_;
        $self->{dead} = 1 if $self->{health} <= 0;
    
    }

1;
