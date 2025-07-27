# 🚀 Déploiement sur Netlify - Guide Complet

## ✅ Préparation du projet

Votre projet est maintenant configuré pour Netlify avec :
- ✅ Configuration optimisée (`netlify.toml`)
- ✅ Next.js configuré (`next.config.js`)
- ✅ Scripts de déploiement
- ✅ Headers de sécurité

## 🌐 Méthodes de déploiement

### **Méthode 1 : Interface Web Netlify (Recommandée)**

1. **Aller sur [netlify.com](https://netlify.com)**
2. **Créer un compte** ou se connecter
3. **Cliquer sur "New site from Git"**
4. **Connecter votre repository GitHub**
5. **Configurer le build :**
   - **Build command :** `npm run build`
   - **Publish directory :** `.next`
   - **Node version :** `18`

### **Méthode 2 : Netlify CLI (Avancée)**

```bash
# Installer Netlify CLI
npm install -g netlify-cli

# Se connecter
netlify login

# Déployer
npm run deploy:netlify
```

### **Méthode 3 : Drag & Drop**

1. **Build localement :**
   ```bash
   npm run build
   ```

2. **Glisser le dossier `.next`** sur l'interface Netlify

## 🔧 Configuration des variables d'environnement

### **Variables obligatoires :**

Dans l'interface Netlify → Site settings → Environment variables :

```env
# Base de données (utiliser une base externe)
DATABASE_URL="postgresql://username:password@host:5432/database"

# NextAuth
NEXTAUTH_SECRET="your-production-secret-key"
NEXTAUTH_URL="https://your-site.netlify.app"

# Stripe (optionnel)
STRIPE_SECRET_KEY="sk_live_..."
STRIPE_PUBLISHABLE_KEY="pk_live_..."
```

### **Base de données recommandées :**

1. **Supabase** (gratuit) : https://supabase.com
2. **Railway** (gratuit) : https://railway.app
3. **PlanetScale** (gratuit) : https://planetscale.com

## 📊 Configuration avancée

### **Domaines personnalisés :**

1. **Acheter un domaine** (OVH, Namecheap, etc.)
2. **Dans Netlify :** Site settings → Domain management
3. **Ajouter votre domaine**
4. **Configurer les DNS** selon les instructions

### **SSL automatique :**

- ✅ **Automatique** sur Netlify
- ✅ **Renouvellement automatique**
- ✅ **HTTPS obligatoire**

### **Analytics :**

```env
# Google Analytics
NEXT_PUBLIC_GOOGLE_ANALYTICS_ID="G-XXXXXXXXXX"

# Netlify Analytics (optionnel)
# Activer dans Site settings → Analytics
```

## 🔒 Sécurité

### **Headers automatiques :**
- ✅ X-Frame-Options: DENY
- ✅ X-XSS-Protection: 1; mode=block
- ✅ X-Content-Type-Options: nosniff
- ✅ Referrer-Policy: strict-origin-when-cross-origin

### **Rate limiting :**
- ✅ **Automatique** sur Netlify
- ✅ **Protection DDoS** incluse

## 📈 Performance

### **Optimisations automatiques :**
- ✅ **CDN global** (Edge Network)
- ✅ **Compression gzip**
- ✅ **Cache intelligent**
- ✅ **Images optimisées**

### **Build optimisations :**
- ✅ **Code splitting**
- ✅ **Tree shaking**
- ✅ **Minification**

## 🚨 Dépannage

### **Erreurs courantes :**

1. **Build échoue :**
   ```bash
   # Vérifier localement
   npm run build
   
   # Vérifier les logs Netlify
   # Interface → Deploys → View deploy log
   ```

2. **Variables d'environnement :**
   - Vérifier dans Site settings → Environment variables
   - Redéployer après modification

3. **Base de données :**
   - Vérifier la connexion
   - Tester avec `npx prisma studio`

### **Logs de déploiement :**

1. **Interface Netlify :** Deploys → View deploy log
2. **CLI :** `netlify logs`

## 🎯 Checklist de déploiement

- [ ] **Repository GitHub** connecté
- [ ] **Build command** configuré : `npm run build`
- [ ] **Publish directory** configuré : `.next`
- [ ] **Variables d'environnement** définies
- [ ] **Base de données** configurée
- [ ] **Domain personnalisé** configuré (optionnel)
- [ ] **SSL** activé automatiquement
- [ ] **Tests** effectués sur le site déployé

## 🎉 Félicitations !

Votre boutique est maintenant hébergée sur Netlify !

### **Prochaines étapes :**
1. **Tester toutes les fonctionnalités**
2. **Configurer un domaine personnalisé**
3. **Ajouter Google Analytics**
4. **Configurer les sauvegardes**
5. **Monitorer les performances**

---

**Votre boutique est maintenant en ligne ! 🌍** 