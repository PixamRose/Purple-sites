# Premium Marketplace - Sites Internet Professionnels

Un marketplace premium moderne pour l'achat et la vente de sites internet professionnels. Design violet foncé + noir avec arrière-plan animé de particules et expérience utilisateur fluide.

## 🎨 Design & Thème

- **Couleurs principales** : Violet foncé, noir, dégradés modernes
- **Arrière-plan animé** : Particules légères interactives
- **Design sobre et haut de gamme** : Animations douces (hover, transitions, fade-in, parallax)
- **Interface responsive** : Mobile / desktop optimisé

## 🛒 Fonctionnalités Principales

### Market Dynamique
- Fiches produits complètes (miniature, description, prix, bouton "ajouter au panier")
- Panier interactif (ajout, suppression, total automatique)
- Paiement sécurisé (Stripe, PayPal) avec confirmation de commande
- Génération automatique de facture PDF après achat
- Système de livraison numérique avec suivi des commandes
- Historique des commandes dans le compte utilisateur

### Espace Utilisateur Sécurisé
- Système de connexion/inscription avec authentification sécurisée
- Validation email et gestion de mot de passe
- Espace personnel avec gestion du panier, suivi des commandes
- Téléchargement des factures et modification des infos du compte

### Interface Administrateur
- Panel admin sécurisé pour gérer les produits
- Gestion des utilisateurs et commandes
- Consultation des factures et modification des annonces

## 🔐 Sécurité Renforcée

- Protection CSRF, XSS, injection SQL
- Authentification sécurisée (tokens, sessions)
- Chiffrement des données sensibles
- Captcha à l'inscription et aux paiements
- Logs d'activité administrateur et utilisateur

## 🚀 Installation

### Prérequis

- Node.js 18+ 
- PostgreSQL 12+
- npm ou yarn

### 1. Cloner le projet

```bash
git clone <repository-url>
cd premium-marketplace
```

### 2. Installer les dépendances

```bash
npm install
```

### 3. Configuration de l'environnement

Copiez le fichier d'exemple et configurez vos variables :

```bash
cp env.example .env.local
```

Éditez `.env.local` avec vos configurations :

```env
# Database
DATABASE_URL="postgresql://username:password@localhost:5432/premium_marketplace"

# NextAuth
NEXTAUTH_SECRET="your-secret-key-here"
NEXTAUTH_URL="http://localhost:3000"

# Stripe
STRIPE_SECRET_KEY="sk_test_..."
STRIPE_PUBLISHABLE_KEY="pk_test_..."
STRIPE_WEBHOOK_SECRET="whsec_..."

# Email (Gmail example)
EMAIL_SERVER_HOST="smtp.gmail.com"
EMAIL_SERVER_PORT=587
EMAIL_SERVER_USER="your-email@gmail.com"
EMAIL_SERVER_PASSWORD="your-app-password"

# Security
JWT_SECRET="your-jwt-secret"
ENCRYPTION_KEY="your-32-character-encryption-key"
```

### 4. Configuration de la base de données

```bash
# Générer le client Prisma
npx prisma generate

# Créer les migrations
npx prisma migrate dev

# (Optionnel) Seed la base de données
npx prisma db seed
```

### 5. Lancer le serveur de développement

```bash
npm run dev
```

Le site sera accessible sur [http://localhost:3000](http://localhost:3000)

## 🛠️ Scripts Disponibles

```bash
# Développement
npm run dev

# Build de production
npm run build

# Démarrer en production
npm start

# Linting
npm run lint

# Vérification des types
npm run type-check
```

## 📁 Structure du Projet

```
premium-marketplace/
├── app/                    # Pages Next.js 13+ (App Router)
│   ├── globals.css        # Styles globaux
│   ├── layout.tsx         # Layout principal
│   ├── page.tsx           # Page d'accueil
│   └── market/            # Pages du marketplace
├── components/            # Composants React
│   ├── layout/           # Navigation, Footer
│   ├── pages/            # Pages complètes
│   ├── sections/         # Sections de pages
│   ├── providers/        # Context providers
│   └── ui/              # Composants UI réutilisables
├── lib/                  # Utilitaires et configurations
├── prisma/              # Schéma et migrations de base de données
├── public/              # Assets statiques
└── types/               # Types TypeScript
```

## 🎯 Fonctionnalités Clés

### Design Premium
- Thème violet foncé + noir
- Arrière-plan animé avec particules
- Animations fluides et modernes
- Interface responsive

### Market Dynamique
- Catalogue de produits avec filtres
- Système de recherche avancé
- Panier interactif
- Système de notation et avis

### Paiements Sécurisés
- Intégration Stripe
- Génération automatique de factures PDF
- Suivi des commandes
- Historique des achats

### Espace Utilisateur
- Inscription/Connexion sécurisée
- Profil utilisateur complet
- Gestion des commandes
- Téléchargement des factures

### Administration
- Panel admin sécurisé
- Gestion des produits
- Gestion des utilisateurs
- Statistiques et rapports

## 🔧 Technologies Utilisées

- **Frontend** : Next.js 14, React 18, TypeScript
- **Styling** : Tailwind CSS, Framer Motion
- **Base de données** : PostgreSQL avec Prisma
- **Authentification** : NextAuth.js
- **Paiements** : Stripe
- **Email** : Nodemailer
- **PDF** : PDFKit
- **Animations** : Framer Motion, TSParticles

## 📈 Optimisations

- **SEO** : Métadonnées optimisées, sitemap
- **Performance** : Lazy loading, image optimization
- **Accessibilité** : ARIA labels, navigation clavier
- **Sécurité** : Headers de sécurité, validation des données

## 🤝 Contribution

1. Fork le projet
2. Créez une branche feature (`git checkout -b feature/AmazingFeature`)
3. Committez vos changements (`git commit -m 'Add some AmazingFeature'`)
4. Push vers la branche (`git push origin feature/AmazingFeature`)
5. Ouvrez une Pull Request

## 📄 Licence

Ce projet est sous licence MIT. Voir le fichier `LICENSE` pour plus de détails.

## 🆘 Support

Pour toute question ou problème :
- Ouvrez une issue sur GitHub
- Contactez-nous à contact@premium-marketplace.com

## 🚀 Déploiement

### Vercel (Recommandé)

1. Connectez votre repository GitHub à Vercel
2. Configurez les variables d'environnement
3. Déployez automatiquement

### Autres Plateformes

Le projet peut être déployé sur :
- Netlify
- Railway
- DigitalOcean App Platform
- AWS Amplify

## 📊 Monitoring

- Logs d'activité utilisateur et administrateur
- Métriques de performance
- Alertes de sécurité
- Rapports d'erreurs

---

**Premium Marketplace** - Transformez votre présence en ligne avec des sites internet professionnels de qualité premium. 