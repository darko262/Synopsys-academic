#! /usr/bin/perl
use strict;
use warnings;

sub generar_combi {
    my ($simbolos, $longitud) = @_;
    my @array_simbolos = split //, $simbolos; #separa en un arreglo la palabra
    my @combinaciones = distintas_combis(\@array_simbolos, $longitud);#\@entra alos parametros del array
    return @combinaciones;
}

sub distintas_combis {
    my ($array_simbolos, $longitud) = @_;
    return () if $longitud == 0;
    my $largo = scalar @$array_simbolos; #largo del arreglo
    #print "logitud: $largo\n";
    my @combinaciones;

    for( my $i=0; $i<$largo ;$i++){
        #print "HOLa\n";
        my @resto = @$array_simbolos;
        splice(@resto , $i,1); #elimina el elemnto i de arrat 1 indica qie es un elemento
       
        print "@resto\n";
        #print "@$array_simbolos[$i]\n";
        push @combinaciones, map { $array_simbolos->[$i] . $_ } @resto;
    }
    return @combinaciones;
}

if (@ARGV != 2) {
    die "uso $0 <secuencia de simbolos> <numero_m>\n";
}

my ($secuencia, $m) = @ARGV;
my @resultado = generar_combi($secuencia, $m);

print "combinaciones\n";
print "$_ \n" for @resultado;
