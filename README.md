# Business_case - Installation et Configuration

## 🚀 Installation rapide

### Prérequis
- **PHP** >= 8.0 (8.2 recommandé)
- **Composer** 2.x
- **Node.js** >= 14 (24.x recommandé)
- **MySQL** 5.7+ ou **PostgreSQL** 13+ (via WAMP/XAMPP ou Docker)
- **OpenSSL** (pour générer les clés JWT)

### Étapes d'installation

#### 1. Cloner le projet
```bash
git clone https://github.com/Ninewashburn/Business_case.git
cd Business_case
```

#### 2. Installer les dépendances backend
```bash
composer install
```

#### 3. Installer les dépendances frontend
```bash
npm install
npm run dev  # Build des assets
```

#### 4. Configurer l'environnement
```bash
cp .env.example .env
```

Modifiez `.env` avec vos paramètres :
```env
DATABASE_URL="mysql://root:@127.0.0.1:3306/business_case?serverVersion=5.7"
APP_SECRET=VOTRE_SECRET_ALEATOIRE
JWT_PASSPHRASE=VOTRE_PASSPHRASE
```

#### 5. Générer les clés JWT
```bash
# Avec Symfony CLI (recommandé)
php bin/console lexik:jwt:generate-keypair

# OU avec OpenSSL
openssl genrsa -out config/jwt/private.pem -aes256 4096
openssl rsa -pubout -in config/jwt/private.pem -out config/jwt/public.pem
```

#### 6. Créer la base de données
```bash
php bin/console doctrine:database:create
php bin/console doctrine:migrations:migrate
php bin/console hautelook:fixtures:load  # Données de test (optionnel)
```

#### 7. Lancer le serveur
```bash
# Avec Symfony CLI
symfony serve

# OU avec PHP natif
php -S localhost:8000 -t public
```

Accédez à http://localhost:8000

## 📊 Dashboard Angular

Le dashboard Angular est situé dans le dossier `dashboard/`.

### Installation du dashboard
```bash
cd dashboard
npm install
ng serve  # Démarre sur http://localhost:4200
```

> **Note** : Le dashboard actuel utilise des données mockées. Pour le connecter à l'API Symfony, voir la section "Intégration API".

## 🔐 Sécurité

### Fichiers sensibles
Les fichiers suivants ne doivent **JAMAIS** être commités :
- `.env` (secrets de production)
- `.env.local` (configuration locale)
- `config/jwt/*.pem` (clés JWT)

Utilisez `.env.example` comme template.

### Génération de secrets
```bash
# APP_SECRET
php -r "echo bin2hex(random_bytes(16));"

# JWT_PASSPHRASE
php -r "echo bin2hex(random_bytes(32));"
```

## 🛠️ Développement

### Commandes utiles
```bash
# Vider le cache
php bin/console cache:clear

# Créer une entité
php bin/console make:entity

# Créer une migration
php bin/console make:migration

# Build assets (watch mode)
npm run watch

# Tests
php bin/phpunit
```

## 🐛 Dépannage

### Erreur "Connexion refusée" (MySQL)
- Vérifiez que WAMP/XAMPP est démarré
- Vérifiez le port dans `DATABASE_URL` (3306 par défaut)

### Erreur "JWT keys not found"
- Générez les clés JWT avec `php bin/console lexik:jwt:generate-keypair`
- Vérifiez que `config/jwt/` contient `private.pem` et `public.pem`

### Erreur Webpack
- Supprimez `node_modules/` et `package-lock.json`
- Relancez `npm install`

## 📚 Documentation

- [Symfony 5.4](https://symfony.com/doc/5.4/index.html)
- [API Platform 2.6](https://api-platform.com/docs/v2.6/)
- [Angular](https://angular.io/docs) (pour le dashboard)

## 🤝 Contribution

Ce projet est un travail de formation (2021-2022). Pour toute question, ouvrez une issue sur GitHub.

## 📝 License

Propriétaire - Tous droits réservés
