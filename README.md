# Rayito Repository

Este repositorio contiene diferentes componentes para hacer tres pantallas de la aplicación buscampz. 

## Tabla de Contenidos

- [Descripción](#descripción)
- [Instalación](#instalación)
- [Uso](#uso)
- [Widgets Disponibles](#widgets-disponibles)
- [Contribuciones](#contribuciones)
- [Licencia](#licencia)

## Descripción

Este proyecto tiene como objetivo proporcionar una variedad de widgets listos para usar que pueden integrarse fácilmente en proyectos de Flutter. Es un lugar para almacenar y organizar componentes reutilizables para agilizar el desarrollo de aplicaciones.

## Instalación

Para utilizar estos widgets en tu proyecto de Flutter, sigue los siguientes pasos:

1. Clona este repositorio en tu máquina local:
    ```sh
    git clone https://github.com/Francisco-V98/buscampz_flutter
    ```

2. Navega al directorio del proyecto:
    ```sh
    cd buscampz_flutter
    ```

3. Añade los archivos de widgets a tu proyecto de Flutter.

## Uso

Aquí se explica cómo integrar y usar uno de los widgets en tu aplicación de Flutter.

1. Importa el widget en el archivo donde lo vas a utilizar:
    ```dart
   import 'package:buscampz_flutter/buscampz_rayito_flutter_package/components/widgets/elevatedButtonEvidencia/elevated_button_evidence.dart';

    ```

2. Utiliza el widget en tu código:
    ```dart
    ElevatedButtonEvidencia(),
    ```

## Widgets Disponibles
### ElevatedButtonEvidencia

Un botón elevado que incluye un texto encima. Util para enviar incidencias con una imagen adjunta.

![ElevatedButtonEvidencia](elevatedbuttonevidence.png)

**Propiedades:**
- `tittle`: Título del widget o de la pantalla
- `subTitle`: Subtítulo que se ve en el ListView
- `location`: Ruta que se colocará en el goRouter.

**Ejemplo:**
```dart
ListView(
      children: const [
_CustomListTile(
          title: 'ButtonEnviarEvidencia',
          subTitle: 'ButtonEnviarEvidencia Screen',
          location: '/buttonEnviarEvidencia',
        ),
		],
		),
```
### ElevatedButtonEvidencia

Un botón elevado que incluye un texto encima. Util para enviar incidencias con una imagen adjunta.

![ElevatedButtonEvidencia](elevatedbuttonevidence.png)

**Propiedades:**
- `onPressed`: Función que se ejecuta al presionar el botón.

**Ejemplo:**
```dart
ElevatedButtonEvidencia(
  onPressed: () {
    // Acción al presionar el botón
  },
),
```
### CardResponseClient

Una carta que contiene la respuesta del cliente según lo escrito por el driver

![CardResponseClient](elevatedbuttonevidence.png)

**Propiedades:**
- `CardResponseClient`: Nombre del widget

**Ejemplo:**
```dart
Center(
                child: CardResponseClient(),
              ),
```
### TextFieldIncidentes

Un TextFormField donde escribes el incidente

![TextFieldIncidentes](elevatedbuttonevidence.png)

**Propiedades:**
- `TextFieldIncidentes`: Nombre del widget

**Ejemplo:**
```dart
Center(
          child: TextFieldIncidentes(),
        ),
```
