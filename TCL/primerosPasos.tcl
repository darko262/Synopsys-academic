# Este es un comentario en Tcl

# Definir una variable
set mensaje "Hola, mundo!"

# Imprimir el mensaje en la consola
puts $mensaje

# Definir una lista
set numeros {1 2 3 4 5}

# Iterar sobre la lista y imprimir cada elemento
foreach num $numeros {
    puts "Número: $num"
}

#matrices y arreglos
set m1(uno) 123456
puts $m1(uno)
set m1(dos) 789101112
puts $m1(dos)

#arreglos no ocupar la letra ñ
set tamano [array size m1 ]
puts $tamano

set nombres [array names m1]
puts $nombres

set matriz [array get m1]
puts $matriz

foreach {name contenido} [array get m1] {
    puts "$name $contenido"
}