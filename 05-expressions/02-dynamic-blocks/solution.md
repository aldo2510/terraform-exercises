# Solución — Dynamic blocks

La solución utiliza una colección como fuente de un `dynamic block`.

## Punto didáctico

`dynamic` genera bloques anidados dentro de un resource. No reemplaza `for_each` cuando se necesitan múltiples instances de un resource.

Antes de usar dynamic conviene comprobar si unos pocos bloques explícitos resultan más legibles.