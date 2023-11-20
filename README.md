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

## Ternary operator
Escribe un if de manera mas corta
```dart
if(condición){
//   codigo si se cumple
}
else{
//   codigo si no se cumple
}
```
```dart
condición? //   codigo si se cumple : //   codigo si no se cumple;
```

## Higher-order functions
Podemos pasar funciones como parametros de otras funciones con las funciones de orden mayor:
```dart
final Function calculator = (int x, int y, Function calculation){
  return calculation(x, y);
};

int multiply(int x, int y){
  return x * y;
}

int add(int x, int y){
  return x + y;
}

void main(){  
  print(calculator(3, 5, add));
  print(calculator(3, 5, multiply));
}
```

Con clases:
```dart
class Car{
  Function drive;
  
  Car(this.drive);
}

Function? driveSlow(){
  print("driving slow");
}

Function? driveFast(){
  print("driving fast");
}

void main(){
  Car myCar = Car(driveSlow);
  // No llama al método
  print(myCar.drive); // <- Closure 'driveSlow'
  
  // Si llama al método
  myCar.drive(); // <- driving slow
  
  // Cambiamos la funcion asignada
  myCar.drive = driveFast;
  
  // Si llama al método
  myCar.drive(); // <- driving fast
}
```

## Constantes
Es buena idea separar las constantes en otro archivo `constants.dart` que contenga colores predeterminados, estilos de texto, etc. Y luego simplemente importar ese archivo en los demas archivos `.dart`

## Baseline
Para que los elemento esten alineados a la base de una fila se usa el `baseline`
```dart
Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.baseline,
    textBaseline: TextBaseline.alphabetic,
    children: [
        Text(), // texto grande
        Text()  // texto pequeño
    ],
),
```
## Slider widget
```dart
Slider(
    value: height.toDouble(), // required
    min: 120.0, // valor minimo
    max: 220.0, // valor maximo
    activeColor: Color(0xffeb1555), // color izquierda del punto
    inactiveColor: Color(0xff8d8e98), // color derecha del punto
    //required
    onChanged: (double newValue) {      
      setState(() {
        height = newValue.round(); 
      });
    },
  ),
```

## Personalizar widgets en general
Se puede lograr con constructores de la clase `ThemeData`, por ejemplo para el slider podemos usar `SliderTheme`, de data le pasamos una copia del estado actual de la aplicacion con `.of(context)`. Ya que solo queremos modificar algunos valores del theme, agregamos `copywith()` y cambiamos algunos parametros.
```dart
SliderTheme(
    data: SliderTheme.of(context).copyWith(
      
      inactiveTrackColor: Color(0xff8d8e98),
      activeTrackColor: Colors.white,
      thumbColor: Color(0xffeb1555),
      overlayColor: Color(0x29eb1555),
      thumbShape:
          RoundSliderThumbShape(enabledThumbRadius: 15.0),
      overlayShape:
          RoundSliderOverlayShape(overlayRadius: 30.0),
    ),
    child: Slider(
      value: height.toDouble(), // required
      min: 120.0,
      max: 220.0,
      onChanged: (double newValue) {
        //required
        setState(() {
          height = newValue.round();
        });
      },
    ),
  ),
```