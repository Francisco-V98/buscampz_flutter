# Rayito Repository

This README drescribes the packageñ. If you publish this package to pub.dev, this README's contents appear on the landing page for your package.

For information about how to write a good package radme, see the guide for [writing package pages] (https://dart.dev/guides/libraries/writing-package-pages).

For general information about develping packages, see the dart guide for [developing packages and plugins] (https://flutter.dev/developing-packages).
-->

TODO: put the widgets in dark 

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
### ListComponentsScreen

Un listado con las localizaciones, títulos, y subtítulos de las pantallas para acceder a los widgets en una vista previa.

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
### IncidentTextField-DetailIncident

Dos TextFormField donde escribes brevemente un incidente, y otro donde describes detalladamente un incidente.

| IncidentTextField | DetailIncident |
| ----------------- | -------------- |
| <img src="https://github.com/Francisco-V98/buscampz_flutter/assets/156206996/241ab410-0b25-4db1-92e7-0bb823041c67" width="308"/> | <img src="https://github.com/Francisco-V98/buscampz_flutter/assets/156206996/2155bcc7-75fd-4bbf-8a9c-f8935c8d3727" width="308"/> |


**Propiedades:**
- `DetailIncidentTextField`: TextFormField donde se describe el accidente

**Ejemplo:**
```dart
  return TextFormField(
      maxLines: 1,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          vertical: 90.0,
          horizontal: 20.0,
        ),
```
- `IncidentTextField`: TextFormField donde se escribe brevemente el accidente

**Ejemplo:**
```dart
return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: "Elegir...",
        hintStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.grey,
        ), //Without EdgeInsets
```


### SendContentTextField-ButtonSendContent

Un TextFormField que donde escribes y después se conjuga con el ButtonSendContent, ambos vienen dentro del Widget ButtonSendWithTextField

| WithButtonSendContent | WithoutButtonSendContent |
| ----------------- | -------------- |
| <img src="https://github.com/Francisco-V98/buscampz_flutter/assets/156206996/16a130f8-d3ea-4e44-b90d-28bfaaccb107" width="308"/> | <img src="https://github.com/Francisco-V98/buscampz_flutter/assets/156206996/0916d6f2-2893-44aa-b0b5-03173a967aaf" width="308"/> |


**Propiedades:**
- `ButtonSendWithTextField`: TextFormField donde se escribe, junto con el botón de enviar

**Ejemplo:**
```dart
   Row(
          children: [
            SendContentTextField(),
            ButtonSendContent(),
          ],
   ),//Both in a row
```
- `TextField Without Button Send`: TextFormField donde se escribe, sin el botón de enviar, individualmente.

**Ejemplo:**
```dart
return Column(
    children: [
        SendContentTextField(),
    ],
)//Example Without the Row
```
