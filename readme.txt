
# Práctica Automatización

Este proyecto es la práctica #4 de la materia de gestión de calidad, enfocada en realizar smoke testing utilizando Behavior Driven Development (BDD) para establecer un lenguaje común y automatizar pruebas.

El objetivo principal es crear escenarios de prueba para el sitio "Mercury Tours" y automatizarlos mediante el uso de las siguientes tecnologías:

* BDD (Behavior Driven Development)
* Cucumber
* Ruby
* Capybara
* Selenium WebDriver para Chrome
Además, se han definido las pruebas que forman parte del Smoke Test.

## Configuración del Entorno

Para ejecutar los comandos, sigue los pasos a continuación:

1. Clona este repositorio.
2. Ingresa al directorio "P4-Smoke-BDD" desde la línea de comandos.

## Comandos de Ejecución

### Ejecutar solo las pruebas con un flag (BVT):

```
cucumber -t @{nombre}
```
### Ejecutar todas las pruebas de un archivo (BVT):

```
cucumber .\features\{nombre_carpeta}
```
### Ejecutar todas las pruebas (BVT):

```
cucumber .\features\
```
