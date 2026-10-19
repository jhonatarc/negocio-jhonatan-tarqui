# Parte 4: Fetch a una API pública

## Objetivo

Desarrollar una página web que permita buscar Pokémon mediante la PokeAPI, utilizando JavaScript y la función `fetch` para obtener información desde una API pública.

## Funcionamiento

La aplicación cuenta con un campo de texto para introducir el nombre de un Pokémon y un botón Buscar. Al realizar la consulta, se muestra un mensaje de carga mientras se obtiene la información. Si la petición es correcta, se presentan el nombre, la imagen, los tipos, el peso y la altura del Pokémon.

Para realizar las consultas se utiliza la siguiente URL:

`https://pokeapi.co/api/v2/pokemon/{nombre}`

El valor `{nombre}` se reemplaza por el nombre del Pokémon que se desea buscar.

## Tecnologías utilizadas

- HTML para la estructura de la página.
- JavaScript para la interacción y el procesamiento de los datos.
- Fetch API para realizar las peticiones HTTP.
- PokeAPI como fuente pública de información.

## Conversión de unidades

La API proporciona el peso en hectogramos y la altura en decímetros. Para mostrar los valores en unidades más conocidas, se realizan las siguientes conversiones:

- **Peso en kilogramos:** se divide el peso recibido entre 10.
- **Altura en metros:** se divide la altura recibida entre 10.

Por ejemplo, si un Pokémon tiene un peso de 60 hectogramos, su peso mostrado será de 6 kg. Si su altura es de 7 decímetros, se mostrará como 0,7 m.

## Manejo de errores

La aplicación utiliza `async/await` y `try/catch` para controlar las peticiones. También comprueba la propiedad `response.ok` para verificar si la respuesta HTTP fue correcta.

Si el Pokémon no existe, se muestra un mensaje indicando que no fue encontrado. Si ocurre un problema de conexión u otro error durante la consulta, se informa al usuario para que pueda intentarlo nuevamente.

## Evidencias de funcionamiento

### Captura 1. Búsqueda exitosa de un Pokémon

![image alt](https://github.com/user-attachments/assets/e4e251e5-86e4-4f2b-8330-2758d51b52d2)

### Captura 2. Búsqueda de un Pokémon inexistente

![image alt](https://github.com/user-attachments/assets/0d1f40c1-2bf8-4976-a0ec-8b0733856ebd)
