P4-Smoke-BDD
Descripción del Proyecto
Este proyecto es la práctica #4 de la materia de gestión de calidad, enfocada en realizar smoke testing utilizando Behavior Driven Development (BDD) para establecer un lenguaje común y automatizar pruebas.

El objetivo principal es crear escenarios de prueba para el sitio "Mercury Tours" y automatizarlos mediante el uso de las siguientes tecnologías:

BDD (Behavior Driven Development)
Cucumber
Ruby
Capybara
Selenium WebDriver para Chrome
Además, se han definido las pruebas que forman parte del Smoke Test.

Configuración del Entorno
Para ejecutar los comandos, sigue los pasos a continuación:

Clona este repositorio.
Ingresa al directorio "P4-Smoke-BDD" desde la línea de comandos.
Comandos de Ejecución
Ejecutar solo las pruebas del Smoke Test (BVT):
bash
Copy code
cucumber -t @{Nombre} --publish-quiet
Reemplaza @{Nombre} con el nombre del escenario de prueba que deseas ejecutar.

Ejecutar todas las pruebas:
bash
Copy code
cucumber features --publish-quiet
Este comando ejecutará todas las pruebas definidas en el proyecto.

Enlace del Sitio Base
Visita demo.guru99.com para acceder al sitio base utilizado en este proyecto.
