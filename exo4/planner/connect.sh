# Exemple d'utilisation de curl pour enregistrer un worker dynamique
curl -X POST localhost:3000/register-dynamic -H "Content-Type: application/json" -d "{\"url\": \"http://localhost:8082\"}"
