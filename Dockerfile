# Dockerfile to build a flask app
# Utilise une image de base Python officielle
FROM python:3.9-slim

# Définit le répertoire de travail dans le conteneur
WORKDIR /app

# Copie le fichier requirements.txt dans le conteneur
COPY requirements.txt requirements.txt

# Installe les dépendances de l'application
RUN pip install --no-cache-dir -r requirements.txt

# Copie le reste du code de l'application dans le conteneur
COPY . .

# Expose le port sur lequel l'application s'exécute
EXPOSE 5000

# Définit la commande pour exécuter l'application
CMD ["python", "app.py"]
