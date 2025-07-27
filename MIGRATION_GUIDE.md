# 🚀 Guide de Migration vers la Production

## Vue d'ensemble

Ce guide vous accompagne dans la migration de votre boutique en ligne vers un environnement de production sécurisé et optimisé.

## 📋 Prérequis

### 1. Infrastructure
- Serveur VPS/Cloud (Ubuntu 20.04+ recommandé)
- 4GB RAM minimum, 8GB recommandé
- 50GB espace disque minimum
- Domaine configuré avec DNS

### 2. Services externes
- **Base de données PostgreSQL** (Supabase, Railway, ou serveur dédié)
- **Stripe** (compte de production)
- **Cloudinary** (pour les images)
- **Email SMTP** (Gmail, SendGrid, etc.)

## 🔧 Configuration étape par étape

### Étape 1: Préparation du serveur

```bash
# Mettre à jour le système
sudo apt update && sudo apt upgrade -y

# Installer Docker
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

# Installer Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/download/v2.20.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Ajouter l'utilisateur au groupe docker
sudo usermod -aG docker $USER
```

### Étape 2: Configuration des variables d'environnement

1. Copier le fichier d'exemple :
```bash
cp production.env.example .env.production
```

2. Configurer les variables dans `.env.production` :
```bash
# Remplacer avec vos vraies valeurs
DATABASE_URL="postgresql://username:password@your-db-host:5432/premium_marketplace_prod"
NEXTAUTH_URL="https://votre-domaine.com"
STRIPE_SECRET_KEY="sk_live_..."
# ... autres variables
```

### Étape 3: Configuration SSL

1. Obtenir un certificat SSL (Let's Encrypt) :
```bash
sudo apt install certbot
sudo certbot certonly --standalone -d votre-domaine.com -d www.votre-domaine.com
```

2. Copier les certificats vers le dossier Nginx :
```bash
sudo mkdir -p nginx/ssl
sudo cp /etc/letsencrypt/live/votre-domaine.com/fullchain.pem nginx/ssl/cert.pem
sudo cp /etc/letsencrypt/live/votre-domaine.com/privkey.pem nginx/ssl/key.pem
```

### Étape 4: Déploiement

```bash
# Rendre le script de déploiement exécutable
chmod +x scripts/deploy.sh

# Lancer le déploiement
npm run deploy
```

## 🔍 Vérification post-déploiement

### 1. Tests de santé
```bash
# Vérifier l'application
npm run health:check

# Vérifier les logs
npm run docker:logs
```

### 2. Tests de sécurité
```bash
# Vérifier les ports ouverts
sudo netstat -tlnp

# Tester SSL
curl -I https://votre-domaine.com
```

### 3. Tests de performance
```bash
# Test de charge simple
ab -n 1000 -c 10 https://votre-domaine.com/
```

## 📊 Monitoring et Analytics

### 1. Accès aux dashboards
- **Grafana** : http://votre-domaine.com:3001
- **Prometheus** : http://votre-domaine.com:9090

### 2. Métriques importantes à surveiller
- Temps de réponse de l'application
- Utilisation CPU/RAM
- Espace disque
- Erreurs 4xx/5xx
- Taux de conversion

## 🔄 Maintenance

### Sauvegarde automatique
```bash
# Créer un cron job pour les sauvegardes
0 2 * * * /path/to/your/project/scripts/backup.sh
```

### Mise à jour de l'application
```bash
# Pull des dernières modifications
git pull origin main

# Redéploiement
npm run deploy
```

## 🚨 Gestion des incidents

### Problèmes courants

1. **Application ne démarre pas**
```bash
# Vérifier les logs
npm run docker:logs

# Redémarrer les services
npm run docker:down
npm run docker:up
```

2. **Base de données inaccessible**
```bash
# Vérifier la connexion
docker-compose -f docker-compose.prod.yml exec db pg_isready -U postgres

# Restaurer depuis une sauvegarde
docker-compose -f docker-compose.prod.yml exec -T db psql -U postgres premium_marketplace_prod < backup_YYYYMMDD_HHMMSS.sql
```

3. **Problèmes de SSL**
```bash
# Renouveler le certificat
sudo certbot renew

# Redémarrer Nginx
docker-compose -f docker-compose.prod.yml restart nginx
```

## 📈 Optimisations recommandées

### 1. Performance
- Activer le cache Redis
- Optimiser les images
- Utiliser un CDN pour les assets statiques

### 2. Sécurité
- Mettre à jour régulièrement les dépendances
- Surveiller les logs d'accès
- Configurer un firewall

### 3. Scalabilité
- Configurer un load balancer
- Utiliser des bases de données répliquées
- Implémenter un cache distribué

## 📞 Support

En cas de problème :
1. Consulter les logs : `npm run docker:logs`
2. Vérifier la santé : `npm run health:check`
3. Consulter la documentation de chaque service

## 🎯 Checklist de migration

- [ ] Serveur configuré avec Docker
- [ ] Variables d'environnement configurées
- [ ] Certificat SSL installé
- [ ] Base de données externe configurée
- [ ] Stripe en mode production
- [ ] Email SMTP configuré
- [ ] Application déployée et accessible
- [ ] Monitoring configuré
- [ ] Sauvegardes automatisées
- [ ] Tests de sécurité effectués
- [ ] Documentation mise à jour

---

**🎉 Félicitations ! Votre boutique est maintenant en production !** 