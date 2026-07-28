# PSeInt - Un fork de PSeInt

Este repositorio es un **fork funcional** de la herramienta original [PSeInt](https://pseint.sourceforge.net/), una herramienta educativa que ayuda a estudiantes a dar sus primeros pasos en programación mediante pseudocódigo intuitivo en español.

Es una **versión funcional adaptada** del código original: mantiene la herramienta tal como la conocemos y agrega los ajustes necesarios para compilarla y ejecutarla en sistemas modernos, con énfasis en **macOS Apple Silicon (ARM64)**.

> **Proyecto personal, sin fines comerciales.** No es un producto, no se vende y no se ofrece como alternativa comercial a PSeInt. Todo el crédito del proyecto original corresponde a su autor.

## Créditos y autoría original

La autoría original de PSeInt corresponde íntegramente a **Pablo Novara** (zaskar_84@yahoo.com.ar). El código fuente original, la documentación y las versiones oficiales están disponibles en el [sitio oficial en SourceForge](https://sourceforge.net/projects/pseint/).

Este fork no reemplaza ni compite con el proyecto original: si buscas PSeInt para usarlo, descarga la versión oficial desde el sitio de su autor.

## Qué cambia respecto al original

- **Correcciones para ARM64**: se resolvieron errores de inicialización en `wxArrayString` y de concatenación entre `wchar_t` y `string` que impedían la compilación con los compiladores modernos de macOS.
- **Soporte UTF-8**: gran parte de los archivos fuente fueron convertidos a UTF-8 para mejorar la compatibilidad con editores y herramientas de desarrollo actuales.
- **Configuración nativa**: se incluyó el perfil de compilación `mac_arm` para evitar la compilación cruzada en máquinas Apple Silicon.

## Por qué lo hice

Ejercicio de lectura y modificación de una base de código **C++** ajena, de tamaño real y fuera de mi stack habitual: entender su sistema de compilación, aislar los errores que rompían el build en una arquitectura nueva y dejarla funcionando de forma nativa.

---

## Guía de compilación desde el código fuente

PSeInt requiere la biblioteca **wxWidgets** (versión 3.0 o superior) para su interfaz gráfica.

### macOS (Apple Silicon / ARM64) — *el foco de este fork*

1. **Instalar dependencias**:
   ```bash
   brew install wxwidgets
   ```
2. **Compilar**:
   ```bash
   make ARCH=mac_arm
   ```
3. **Generar el App Bundle**:
   ```bash
   bash create_bundle_native.sh
   ```
   *El ejecutable queda en `dist_native/PSeInt.app`.*

### macOS (Intel / x86_64)

1. **Instalar dependencias**:
   ```bash
   brew install wxwidgets
   ```
2. **Compilar**:
   ```bash
   make ARCH=lnx
   ```

### GNU/Linux (x86_64 / x86)

1. **Instalar dependencias**: `g++`, `make` y las bibliotecas de desarrollo de wxWidgets (por ejemplo `libwxgtk3.2-dev` en Debian/Ubuntu).
2. **Compilar**:
   ```bash
   make ARCH=lnx
   ```
   *Los binarios se generan en el directorio `bin/`.*

### Microsoft Windows

Se recomienda **MinGW** junto a la versión de wxWidgets para Windows.

1. **Compilar**:
   ```bash
   mingw32-make ARCH=w32
   ```
   *Nota: la arquitectura `w32` es válida para sistemas de 32 y 64 bits.*

---

## Licencia

Este proyecto se distribuye bajo licencia **GPLv2 o superior**, respetando la licencia original del proyecto PSeInt. Consulta el archivo `license.txt` para más detalles.
