#language: es

@MóduloWeb @Contacto @US:22242 
Característica: Página de contacto de Innocv 
  Como usuario del sitio web de Innocv quiero acceder y utilizar la sección de contacto 
  para poderme comunicar con la empresa de manera efectiva.

Antecedentes: Dado que el usuario tiene el navegador web abierto 
  Y que se encuentra en la página principal de "Innocv"

@Desktop @Automatizado 
Escenario: Acceder a la página de contacto desde el menú principal 
Cuando el usuario hace clic en la opción "Contacto" del menú superior 
Entonces la aplicación muestra la página de contacto 
Y se visualiza el formulario de comunicación

@Navegacion 
Escenario: Regresar a la página principal desde la página de contacto 
  Dado que el usuario se encuentra en la página de contacto 
  Cuando el usuario presiona el logotipo de "INNOCV" en la barra de navegación 
  Entonces la aplicación navega de vuelta a la página principal 
  Y el formulario de contacto ya no es visible

@Redireccion @URL
Esquema del escenario: Redirección automática y normalización de URL 
  Cuando el usuario introduce la "<url_introducida>" en la barra de direcciones 
  Entonces el sistema redirige al usuario a la URL "https://www.innocv.com/contacto" 
  Y el contenido de la página de contacto se carga correctamente

Ejemplos:
| EjemplosDeNombre | url_introducida |
| Protocolo Inseguro | [http://www.innocv.com/contacto](http://www.innocv.com/contacto) |
| Sin subdominio WWW | [https://innocv.com/contacto](https://innocv.com/contacto) |
| Parámetros basura | [https://www.innocv.com/contacto?ert454545454](https://www.innocv.com/contacto?ert454545454) |
| Parámetros inválidos | [https://www.innocv.com/contacto?invalid=error](https://www.innocv.com/contacto?invalid=error) |

@Error @Validacion 
Escenario: Intentar enviar el formulario con campos obligatorios vacíos 
  Dado que el usuario se encuentra en la página de contacto 
  Cuando el usuario hace clic en el botón de enviar sin completar los campos requeridos 
  Entonces el sistema bloquea el envío del formulario 
  Y muestra mensajes de validación específicos debajo de cada campo obligatorio

@Error @correo
Escenario: Validación de formato de correo electrónico incorrecto 
  Dado que el usuario introduce un correo electrónico con formato inválido 
  Cuando el usuario intenta enviar el formulario 
  Entonces el sistema muestra un mensaje de error indicando que el formato del correo es incorrecto

@Error @Conectividad 
Escenario: Error de envío por pérdida de conexión a internet 
  Dado que el usuario ha completado el formulario correctamente 
  Cuando se pierde la conexión a internet justo antes de pulsar el botón de envío 
  Entonces el sistema muestra un mensaje de error indicando problemas de red 
  Y sugiere al usuario que lo intente más tarde

@Error @404 
Escenario: Acceso a una ruta de contacto inexistente 
  Cuando el usuario intenta navegar a una URL inválida o inexistente 
  Entonces el sistema muestra la página de error 404 
  Y mantiene visibles el encabezado (header) y el pie de página (footer) del sitio

@Navigation @Browser 
Escenario: Volver a la página anterior usando el navegador 
  Dado que el usuario ha navegado desde la página principal a la de contacto 
  Cuando el usuario pulsa el botón "Atrás" del navegador 
  Entonces la aplicación muestra la página principal visitada anteriormente
