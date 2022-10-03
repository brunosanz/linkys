# Linkys
Te recomienda sitios web para obtener mejores resultados a tus búsquedas. Va a tratar de entender lo que necesitas y buscará en la base de datos que tiene para mostrarte el resultado mejor recomendado.

Si deseas recomendar un sitio mandame un mensaje en [Messenger](http://m.me/rbrunosanz).

Ver demo: [Linkys](https://www.brunosanz.com/linkys/)

## Página principal

![Index page](https://www.brunosanz.com/wp-content/uploads/2022/10/linkys.jpg)

### Buscando una recomendación

![Index page](https://www.brunosanz.com/wp-content/uploads/2022/10/linkys_search.jpg)

# Cómo usarlo

Puedes utilizarlo de 3 maneras:

- Comandos -> **ob: javascript**
- Categorías -> **descargar imagenes**
- Búsqueda libre -> **cursos para aprender javascript**

En comandos terminar con **dos puntos (:)**.

Al utilizar un comando la búsqueda se realizará en el sitio ligado a ese comando.

En categorías mostrará todos los sitios web relacionados, por ejemplo con **descargar imagenes** los resultados serán sitios web sobre imágenes.

La búsqueda libre se realizará en el sitio con más recomendación que tenga, ejemplo **cursos para aprender javascript** mandará a la página de **OpenBootcamp** buscando algún curso de JavaScript.

### Comandos

- Dafont - **df:**
- Dialnet - **dn:**
- edX - **edx:**
- ELSEVIER - **el:**
- DeepL Translate - **es:**
- FontGet - **fg:**
- Freepik - **fp:**
- Google Académico - **ga:**
- Google Actívate - **gac:**
- Google - **go:**
- Iconduck - **id:**
- Mi Aula - **ma:**
- Microsoft Learn - **ms:**
- Open Bootcamp - **ob:**
- Pixabay - **pb:**
- Pluto TV - **ptv:**
- Pexels - **px:**
- RAE - ASALE - **rae:**
- Reddalyc - **rd:**
- ResearchGate - **rg:**
- SciELO - **se:**
- Springer Link - **sl:**
- StackOverflow - **so:**
- SpringerOpen - **sp:**
- Tubi - **tubi:**
- Unsplash - **us:**
- ViX - **vix:**
- World Wide Science - **wws:**
- YouTubeMusic - **ym:**
- YouTube - **yt:**

### Categorías

- **buscador**
- **code, dev**
- **cursos**
- **diccionario**
- **educacion**
- **fuentes**
- **iconos, imagenes**
- **imagenes**
- **livetv, peliculas, series**
- **musica**
- **peliculas, series**
- **traductor**
- **videos**
- **videotutoriales**

# Herramientas

- Lenguaje: PHP
- Framework: Bootstrap
- Database: MySQL
- IA: Dialogflow

# Ejecutar en local

1. Tener instalado un  servidor web local por ejemplo XAMPP.
2. Clonar repositorio git@github.com:brunosanz/linkys.git en la ruta C:\xampp\htdocs (Windows)
3. Desde http://localhost/phpmyadmin/ importar la base de datos shortcut.sql
4. Configuración para Dialogflow 
  - Crear una cuenta en Dialogflow (https://dialogflow.cloud.google.com/)
  - En Dialogflow importar el agente linkys (linkys.zip)
  - Generar llaves necesarias para la comunicación entre la aplicación y Dialogflow. Ver video (https://www.youtube.com/watch?v=CXF9YlKhNUU)
  - El archivo generado con las  llaves ponerlo en la carpeta del proyecto **linkys**.
  - En el archivo functions.php, localizar la función detectIntent, buscar la línea **$key = array('credentials' => 'file_keys.josn');**, colocar el nombre del archivo descargado.
5. Probar la aplicación en el navegador con ruta http://localhost/linkys/
 
 # Trabajo futuro
 
 Las mejoras a futuro se tienen las siguientes:
 - Mejorar el entrenamiento para poder predecir mejor.
 - Agregar más categorías.
 - Crear un API REST.
