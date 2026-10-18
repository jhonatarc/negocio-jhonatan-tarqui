# Documentación de Métodos HTTP

## 1. GET
¿Para qué sirve?: Se utiliza para solicitar o recuperar información de un servidor. No modifica ningún dato en el servidor, solo lee recursos.
Cómo se usa: Se envía una petición indicando la URL del recurso que se desea obtener. No requiere cuerpo (*Body*).

# Ejemplo en Thunder Client:
- **Método:** `GET`
- **URL:** `https://jsonplaceholder.typicode.com/posts/1`
- **Body:** Ninguno (*None*)
- **Código de Estado de Respuesta:** `200 OK`
- **Respuesta obtenida:**

# 2. POST
¿Para qué sirve? Se utiliza para enviar información al servidor y crear un nuevo recurso, por ejemplo, una nueva publicación.
Cómo se usa: Se envía una petición a la URL correspondiente, incluyendo en el *Body* los datos que se desean registrar en formato JSON.

# Ejemplo en Thunder Client:
- **Método:** `POST`
- **URL:** `https://jsonplaceholder.typicode.com/posts`
- **Body:** Seleccionar `JSON` e introducir:
        {
        "title": "Mi primera publicación",
        "body": "Esta es una publicación de prueba.",
        "userId": 1
        }
- **Código de estado de respuesta:** `201 Created`
- **Respuesta obtenida:** Devuelve los datos enviados junto con un ID asignado a la publicación simulada.

# 3. PUT
¿Para qué sirve? Se utiliza para reemplazar completamente la información de un recurso existente por los nuevos datos enviados.
Cómo se usa: Se envía una petición a la URL del recurso que se desea actualizar, incluyendo en el *Body* todos los campos que se quieren establecer.

# Ejemplo en Thunder Client:
- **Método:** `PUT`
- **URL:** `https://jsonplaceholder.typicode.com/posts/1`
- **Body:** Seleccionar `JSON` e introducir:
        {
        "id": 1,
        "title": "Título actualizado",
        "body": "Contenido completamente actualizado.",
        "userId": 1
        }
- **Código de estado de respuesta:** `200 OK`
- **Respuesta obtenida:** Devuelve la representación actualizada de la publicación.

# 4. PATCH
¿Para qué sirve? Se utiliza para modificar parcialmente un recurso existente, cambiando únicamente los campos necesarios sin enviar toda su información.
Cómo se usa: Se envía una petición a la URL del recurso y en el *Body* se incluyen solamente los campos que se desean modificar.

# Ejemplo en Thunder Client:
- **Método:** `PATCH`
- **URL:** `https://jsonplaceholder.typicode.com/posts/1`
- **Body:** Seleccionar `JSON` e introducir:
        {
        "title": "Nuevo título de la publicación"
        }
- **Código de estado de respuesta:** `200 OK`
- **Respuesta obtenida:** Devuelve la publicación con el título modificado y los demás campos conservados en la respuesta simulada.

# 5. DELETE
¿Para qué sirve? Se utiliza para solicitar la eliminación de un recurso existente en el servidor.
Cómo se usa: Se envía una petición a la URL del recurso que se desea eliminar. Generalmente, no requiere cuerpo (*Body*).

# Ejemplo en Thunder Client:
- **Método:** `DELETE`
- **URL:** `https://jsonplaceholder.typicode.com/posts/1`
- **Body:** Ninguno (`None`)
- **Código de estado de respuesta:** `200 OK`
- **Respuesta obtenida:** Devuelve un objeto JSON vacío, indicando que la operación de eliminación fue simulada correctamente.

# Diferencia entre PUT y PATCH

La diferencia principal entre PUT y PATCH está en la forma de actualizar la información. PUT se utiliza para reemplazar el recurso completo, por lo que se envían todos los campos que se desean establecer. En cambio, PATCH permite modificar solamente uno o varios campos específicos, sin necesidad de enviar toda la información del recurso.