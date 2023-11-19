# bmi_calculator

## `theme` 
Podemos definir la paletta de colores de 3 maneras distintas>
### dentro del mismo widget
Solo funciona para el widget en el que se usa 
```dart
<widget>(
  data : ThemeData(
    propiedades...
  )
)
```
### Usar el widget `theme`
Para definir una paleta general
```dart
theme: ThemeData(
  propiedades...
)

```

### Modificar algunos aspectos de otro `theme`
Modificar por ej: tema oscuro
```dart
theme: ThemeData.dark().copywith(
  propiedades...
)
```

## Extraer widget
Define automaticamente un `stateless widget` <br>
`refactor` -> `extract widget`

## inmutabilidad
Los `stateless` widgets son inmutables, no deberian tener propiedaes que cambien, por lo tanto se les debe anteponer `final` o `const`.

## `final` vs `const`
Si la variable nunca se va a modificar se puede usar `const` o `final`. Se puede omitir el tipo.  
- `final` solo se puede establecer una vez
- `const` es una constante en tiempo de compilacion: al momento de correr el codigo, se debe poder calcular el valor de `const`, pero no para `final` que se puede sacar en cualquier momento.
```dart
// es valido
final myFinal = DateTime.now();
// no es valido
const myConst = DateTime.now();
```
## Widgets propios
FALTA AGREGAR

## Widget GestureDetector
Podriamos usar `TextButton` pero este afecta el ancho de nuestro boton, y otros estilos mas. Sólo necesitamos detectar un toque. Podemos usar en su lugar `GestureDetector`. 

Su método `onTap` es igual al `onpressed` del `TextButton` pero este `GestureDetector` no afecta el estilo del contenedor.

## Enums
Como un booleano pero con mas opciones, y mas expresivo ya que podemos asignar los valores que queramos
```dart
enum CarType{suv, hatchback, convertible, coupe}
print(Carype.suv);
```