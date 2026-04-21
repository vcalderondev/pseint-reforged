# PSeInt Reforged

Este proyecto es un **fork** de la herramienta original [PSeInt](https://pseint.sourceforge.net/). PSeInt es una herramienta educativa diseñada para ayudar a los estudiantes en sus primeros pasos en la programación mediante un pseudocódigo intuitivo y en español.

## Créditos y Autoría Original
Este proyecto respeta y reconoce totalmente la autoría original de **Pablo Novara** (zaskar_84@yahoo.com.ar). El código fuente original, la documentación y las versiones oficiales están disponibles en el sitio oficial de [SourceForge](https://sourceforge.net/projects/pseint/).

Este fork ("Reforged") se enfoca en mejorar la compatibilidad y estabilidad en sistemas modernos, con especial énfasis en el soporte nativo para **macOS Apple Silicon (ARM64)**.

---

## Guía de Compilación desde el Código Fuente

PSeInt requiere la biblioteca **wxWidgets** (versión 3.0 o superior) para su interfaz gráfica.

### macOS (Apple Silicon / ARM64) - *Recomendado para este fork*
1. **Instalar dependencias**:
   ```bash
   brew install wxwidgets
   ```
2. **Compilar**:
   ```bash
   make ARCH=mac_arm
   ```
3. **Generar App Bundle**:
   ```bash
   bash create_bundle_native.sh
   ```
   *El ejecutable estará en `dist_native/PSeInt.app`.*

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
1. **Instalar dependencias**: Asegúrate de tener `g++`, `make` y las bibliotecas de desarrollo de `wxwidgets` (ej. `libwxgtk3.2-dev` en Debian/Ubuntu).
2. **Compilar**:
   ```bash
   make ARCH=lnx
   ```
   *Los binarios se generarán en el directorio `bin/`.*

### Microsoft Windows
Para compilar en Windows se recomienda usar **MinGW** y la versión de wxWidgets para Windows.
1. **Compilar**:
   ```bash
   mingw32-make ARCH=w32
   ```
   *Nota: La arquitectura `w32` es válida para sistemas de 32 y 64 bits.*

---

## Cambios y Mejoras Técnicas
- **Correcciones ARM64**: Se han solucionado errores de inicialización en `wxArrayString` y concatenación de tipos `wchar_t/string` que impedían la compilación en compiladores modernos de Mac.
- **Soporte UTF-8**: Gran parte de los archivos fuente han sido convertidos a UTF-8 para mejorar la compatibilidad con editores y herramientas de desarrollo actuales.
- **Configuración Nativa**: Se incluyó el perfil `mac_arm` para evitar el uso de compilación cruzada en máquinas Apple Silicon.

---

## Licencia
Este proyecto se distribuye bajo la licencia **GPLv2** o superior, respetando la licencia original del proyecto PSeInt. Consulta el archivo `license.txt` para más detalles.
