# <img src="imagenes/salesforce.jpg" width="30"/> Evaluación Técnica Salesforce - ProContacto

###### Este repositorio contiene la resolución de la prueba técnica para el proceso de selección como Salesforce Developer.
---
## 📑 Índice

- [Ejercicio 1 - Instalación del ambiente](#ejercicio-1---instalación-del-ambiente)
- [Ejercicio 2 - Protocolo HTTP](#ejercicio-2---protocolo-http)
---
##  Ejercicio 1 - Instalación del ambiente

Para la realización de esta prueba técnica se configuró el siguiente entorno de desarrollo:

### 🔹 Visual Studio Code
Se instaló Visual Studio Code como entorno de desarrollo principal, el cual permite trabajar con múltiples lenguajes como JavaScript, HTML, CSS y Apex.

Se agregaron extensiones como:
- Salesforce Extension Pack
- Prettier
- GitLens

### 🔹 Git y Git Bash
Se instaló Git como sistema de control de versiones para gestionar los cambios en el código.

Se configuraron las credenciales globales con los siguientes comandos:

```bash
git config --global user.name "Martha Paola Prestado Ramirez"
git config --global user.email "marthapaolaprestadoramirez@gmail.com"
```
------------

## 🌐 Ejercicio 2 - Protocolo HTTP

### 1. ¿Qué es un servidor HTTP?
Un servidor HTTP es un sistema que se encarga de recibir solicitudes (requests) de clientes, como navegadores web, y responder con recursos como páginas HTML, imágenes o datos.

Funciona bajo el protocolo HTTP, permitiendo la comunicación entre cliente y servidor en aplicaciones web.

### 2. ¿Qué son los verbos HTTP?

Los verbos HTTP son métodos que indican la acción que se desea realizar sobre un recurso en un servidor.

Los más comunes son:

* `GET` (Obtener datos)
* `POST` (Enviar datos nuevos)
* `PUT` / `PATCH` (Actualizar datos)
* `DELETE` (Eliminar datos)
* `PATCH` (Modificar parcialmente datos)

### 3. ¿Qué es un request y un response en una comunicación HTTP? ¿Qué son los headers?
* **Request (Petición):** Es el mensaje que el cliente envía al servidor solicitando una acción o información.
* **Response (Respuesta):** Es el mensaje que el servidor devuelve al cliente tras procesar el request, conteniendo el estado de la operación y, de ser necesario, los datos solicitados.
* **Headers (Encabezados):** Son metadatos que acompañan tanto al request como al response. Proporcionan contexto adicional sobre la comunicación, como el tipo de navegador, tokens de seguridad, formato de los datos, etc.

### 4. ¿Qué es un queryString?

Es una parte de la URL que se utiliza para enviar parámetros o variables estructuradas al servidor. Comienza después de un signo de interrogación `?` y agrupa pares de clave-valor separados por un ampersand `&`

 * Ejemplo:
https://api.com/users?name=Pao&age=22

 * En este caso:
- name=Pao
- age=22

### 5. ¿Qué es el responseCode? ¿Qué significado tiene los posibles valores devueltos?
Es un código numérico de tres dígitos que el servidor devuelve en el response para indicar el resultado de la petición HTTP. Sus principales rangos significan:
* **2xx (Éxito):** La petición fue recibida y procesada correctamente (ej. 200 OK).
* **3xx (Redirección):** El cliente debe tomar una acción adicional para completar la petición (ej. 301 Moved Permanently).
* **4xx (Error del cliente):** Hubo un error en la petición del cliente, como un recurso que no existe o falta de permisos (ej. 404 Not Found, 400 Bad Request).
* **5xx (Error del servidor):** El servidor falló al procesar una petición aparentemente válida (ej. 500 Internal Server Error).

### 6. ¿Cómo se envía la data en un Get y cómo en un POST?
* **GET:** La data se envía de forma visible a través de la URL utilizando el *QueryString*.
* **POST:** La data se envía oculta dentro del cuerpo (*body*) del request, lo que permite enviar estructuras más complejas y es una práctica más segura.

### 7. ¿Qué verbo http utiliza el navegador cuando accedemos a una página?
Cuando ingresamos una dirección web en el navegador y presionamos Enter, el navegador utiliza por defecto el verbo `GET` para solicitar y cargar la página.

### 8. Explicar brevemente qué son las estructuras de datos JSON y XML dando ejemplo de estructuras posibles.
* **JSON (JavaScript Object Notation):** Es un formato de texto muy ligero y fácil de leer para intercambio de datos, basado en la estructura de pares clave-valor.
  * *Ejemplo:* `{"usuario": "desarrollador", "activo": true}`
* **XML (eXtensible Markup Language):** Es un formato de texto más formal que estructura los datos de forma jerárquica utilizando etiquetas de apertura y cierre (similar a HTML).
  * *Ejemplo:* `<usuario><nombre>desarrollador</nombre><activo>true</activo></usuario>`

### 9. Explicación breve del estándar SOAP
SOAP (Simple Object Access Protocol) es un protocolo de mensajería altamente estructurado y estricto. Permite a los programas comunicarse en red utilizando exclusivamente el formato XML y siguiendo reglas muy definidas de seguridad y transaccionalidad.

### 10. Explicación breve del estándar REST Full
RESTfull (Representational State Transfer) es un estilo de arquitectura más flexible y ligero que SOAP. Utiliza los estándares de la web (HTTP y sus verbos) de forma semántica para interactuar con los recursos. Generalmente, las APIs RESTful devuelven la información en formato JSON.

### 11. ¿Qué son los headers en un request? ¿Para qué se utiliza el key Content-type en un header?
Como se definió en la pregunta 3, los headers son información adicional sobre la petición. La clave específica `Content-Type` sirve para indicarle al servidor exactamente en qué formato se está enviando la información dentro del *body* del request, para que el servidor sepa cómo interpretarla (por ejemplo: `Content-Type: application/json` le dice al servidor "la información que te envío está estructurada como un JSON").
