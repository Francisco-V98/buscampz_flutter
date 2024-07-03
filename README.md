# Rayito Repository

This README drescribes the packageñ. If you publish this package to pub.dev, this README's contents appear on the landing page for your package.

For information about how to write a good package radme, see the guide for [writing package pages] (https://dart.dev/guides/libraries/writing-package-pages).

For general information about develping packages, see the dart guide for [developing packages and plugins] (https://flutter.dev/developing-packages).
-->

TODO: put a short description fo the package here that helps potential users know whether this package might be useful for them. 

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
    EvidenceElevatedButton(),
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

**Propiedades:**
- `onPressed`: Función que se ejecuta al presionar el botón.

**Ejemplo:**
Botón tipo `SendEvidenceButton`
ButtonWithoutColor | Botton With Color | 
-----|-------| 
<img src="https://github.com/Francisco-V98/buscampz_flutter/assets/156206996/c3b38c5d-9d53-48ae-9ae1-5e951b3d3b01" width="308"/> | <img src="https://github.com/Francisco-V98/buscampz_flutter/assets/156206996/03d1c52c-d3a5-4c03-b825-5b0472aa8bc3" width="308"/> |
**With Color**
```dart
backgroundColor: MaterialStateProperty.all(
              AppColors.primary,
            ),
          ),
          onPressed: () {},
          child: Text(
            'Enviar Incidencia',
            style: AppTextStyles.btn_16(
              AppColors.bgBotDark,
            ),
          ),
```
**Without color**
```dart
foregroundColor: WidgetStateProperty.all(
          AppColors.bgBotDark,
        ),
      ),
      onPressed: () {},
      child: Text(
        'Adjuntar Foto',
        style: AppTextStyles.btn_16(
          AppColors.bgBotDark,
        ),
```
### ClientAnswer

Una carta que contiene la respuesta del cliente según lo escrito por el driver

ClientAnswer | CardDefault | 
--
<img src="https://github.com/Francisco-V98/buscampz_flutter/assets/156206996/b8af871d-4853-4d55-a830-0b692384644f" width="308"/>

**Propiedades:**
- `ClientAnswer`: Nombre del widget

**Ejemplo:**
```dart
 Center(
                child: ClientAnswerCard(),
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
