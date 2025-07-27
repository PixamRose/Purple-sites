@echo off
echo ========================================
echo    BOUTIQUE EN LIGNE - DEMARRAGE
echo ========================================
echo.

echo Configuration de l'environnement...
set DATABASE_URL=file:./dev.db
set NEXTAUTH_SECRET=your-local-secret-key
set NEXTAUTH_URL=http://localhost:3000

echo.
echo Creation de la base de donnees...
npx prisma db push

echo.
echo Demarrage de l'application...
echo.
echo ========================================
echo    ACCES A L'APPLICATION
echo ========================================
echo URL: http://localhost:3000
echo Admin: http://localhost:3000/admin
echo.
echo Comptes de test:
echo - Email: admin@example.com / Mot de passe: admin123
echo - Email: user@example.com / Mot de passe: user123
echo.
echo Pour arreter l'application, appuyez sur Ctrl+C
echo ========================================
echo.

npm run dev 