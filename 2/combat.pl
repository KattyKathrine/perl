#!/usr/bin/perl


use strict;
use Knight;
use Giant;

# Создаем экземпляры классов Knight и Giant
my $first_knight = Knight->new("Рыцарь печального образа", 100);
my $mean_giant = Giant->new("Злой великан", 150);

# Бой между персонажами мог бы выглядеть как-то так
do {

    print $first_knight->{name}.": здоровье ".$first_knight->{health}."\n";
    print $mean_giant->{name}.": здоровье ".$mean_giant->{health}."\n";

    $first_knight->spear($mean_giant);
    $mean_giant->club($first_knight);
    
    $first_knight->perish($mean_giant);
    $mean_giant->perish($first_knight);

} until ($first_knight->{dead} || $mean_giant->{dead});

print $first_knight->{name}.": здоровье ".$first_knight->{health}."\n";
print $mean_giant->{name}.": здоровье ".$mean_giant->{health}."\n";
    
if ($first_knight->{health} > 0) {

    print "Выиграл ".$first_knight->{name}."\n";
    
} elsif ($mean_giant->{health} > 0) {

    print "Выиграл ".$mean_giant->{name}."\n";

} else {

      print "Никто не выиграл"."\n";

}
