P4-Smoke-BDD
Practica #4 de la materia de gestion de calidad. Realizar smoke testing, usando BDD para establecer lenguaje comun y automatizar pruebas.

Este proyecto consiste en crear escenarios de prueba para el sitio "Mercury tours" y automatizarlas Para esto se utilizo:

BDD
Cucumber
Ruby
Capybara
Selenium web driver para Chrome
Tambien se definieron las pruebas que son parte del smoketest.

Enlace del sitio base: https://demo.guru99.com/

My Skills alt text

Ejecutar SmokeTest
Para ejecutar los comandos, se necesita clonar este repositorio e ingresar al directorio "P4-Smoke-BDD" desde una linea de comandos.

En la linea de comandos podra ejecutar los siguientes comandos:

Ejecutar solo las pruebas del SmokeTest (BVT):
cucumber -t @{Nombre} --publish-quiet
Ejecutar todas las pruebas:
cucumber features --publish-quiet
