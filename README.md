# Proyecto Paródico con Flask

¡Bienvenido al Proyecto Paródico con Flask! Este es un sitio web desarrollado en Flask con fines humorísticos y experimentales. En este momento, está diseñado para mostrar anuncios y servir contenido estático. Si tienes ideas para mejorar este proyecto, ¡nos encantaría que contribuyeras! Solo es una broma para un amigo, por ahora.

## Descripción

Este proyecto es una aplicación web sencilla hecha con Flask. Está diseñada para ser un sitio web paródico y estática, ideal para mostrar anuncios y experimentar con la creación de contenido en un entorno web.

## Funcionalidades

- Página de portada
- Sección de privacidad
- Gestión de archivos multimedia
- Configuración de anuncios

## Requisitos

Antes de comenzar, asegúrate de tener instalados los siguientes requisitos:

- **Python 3.11 o superior**
- **Docker y Docker Compose** (opcional, para ejecución en contenedores)

## Instalación y Configuración

### Instalación Local

1. **Clona el repositorio:**

   ```bash
   git clone https://github.com/EgoitzAB/weblaruta.git
   cd weblaruta

    Crea un entorno virtual e instala las dependencias:

    bash

python -m venv venv
source venv/bin/activate  # En Windows usa `venv\Scripts\activate`
pip install -r requirements.txt

Configura el archivo .env:

Copia el archivo .env.example a .env y actualiza la clave secreta y otras variables de entorno según sea necesario.

plaintext

SECRET_KEY=tu_clave_secreta_generada
FLASK_APP=run.py
FLASK_ENV=production

Ejecuta la aplicación:

bash

    flask run

    La aplicación debería estar disponible en http://127.0.0.1:5000.

Ejecución con Docker

    Construye y ejecuta los contenedores:

    bash

    docker-compose up --build

    Esto iniciará la aplicación web y Nginx en contenedores Docker. La aplicación debería estar disponible en http://localhost.

Contribuciones

Si tienes ideas para mejorar este proyecto, ¡nos encantaría que contribuyeras! Para hacerlo, sigue estos pasos:

    Haz un fork del repositorio.

    Crea una rama para tu característica o corrección:

    bash

git checkout -b mi-nueva-caracteristica

Realiza tus cambios y confirma los cambios:

bash

git add .
git commit -m "Añadida mi nueva característica"

Sube tus cambios a tu fork:

bash

    git push origin mi-nueva-caracteristica

    Crea un Pull Request en el repositorio original.

Licencia

Este proyecto está licenciado bajo la Licencia Pública General GNU v3 (GPLv3). Para más detalles, consulta el archivo LICENSE.
Contacto

Para cualquier pregunta o comentario, no dudes en ponerte en contacto con eabilleira1@protonmail.com