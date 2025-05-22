# 🌌 GalaxyV2 - Serveur FiveM RP

Bienvenue sur **GalaxyV2**, un serveur FiveM complet, basé sur **ESX**, conçu pour proposer une expérience de jeu immersive avec de nombreux scripts, mappings, métiers, systèmes et une base de données prête à l'emploi.

---

## 🔧 Fonctionnalités principales

### 🧠 Framework
- ESX (EssentialMode Extended)
- Support base MySQL

### 👮‍♂️ Jobs intégrés
- Police
- Ambulance
- Mécano
- Vigneron, mineur, boulanger, etc.
- Drogues (récolte, traitement, revente)

### 🏦 Systèmes inclus
- Banque complète (comptes, retraits, virements)
- Téléphone avec appels/SMS/services
- Inventaire custom
- Système de logement (achat, entrée, clés)
- Garage avec véhicules sauvegardés
- Concessionnaire de véhicules
- Magasin de vêtements (avec gestion des tenues)
- Black market
- Menu admin (avec gestion des joueurs)

### 🎮 Interface & gameplay
- HUD custom
- Menus intuitifs
- Blips dynamiques sur la map
- UI pour inventaire, téléphone, menus

### 🌍 Mapping / MLO
- Comico custom
- Hôpital MLO
- Appartements
- Lieux illégaux (laboratoires)
- Concession, shops, banques modifiées

---

## 🗂️ Arborescence du projet

GalaxyV2/
├── galaxyv2.sql          # Base de données complète

├── server.cfg            # Configuration du serveur

├── resources.cfg         # Liste des ressources à charger

├── resources/            # Tous les scripts et mappings

│   ├── [esx_addons]      # Scripts métiers et extras

│   ├── [ui]              # Interfaces (phone, hud…)

│   └── [mlo]             # Mappings & intérieurs


---

## ⚙️ Installation

1. **Cloner le dépôt :**
   ```bash
   git clone https://github.com/lilgar77/GalaxyV2.git
   ```

2.	**Importer la base de données :**
	•	Crée une base de données nommée galaxyv2
	•	Importer galaxyv2.sql

3.	**Configurer le serveur :**
	•	Modifier server.cfg avec ta Steam API Key, licence FiveM, slots, nom de serveur, etc.
	•	Vérifie les chemins dans resources.cfg

4.	**Démarrer FXServer :**
	•	Lance via run.cmd ou ton manager habituel

## ✅ Prérequis
	•	Dernière version de FXServer
	•	MySQL ou MariaDB
	•	Une clé de licence FiveM valide (https://keymaster.fivem.net)
	•	Artifact récent

🙏 Remerciements

Ce serveur est basé sur ESX avec des contributions de la communauté FiveM, y compris des scripts open-source et des MLO publics ou modifiés.

🙌 Crédits

Ce serveur est entièrement développer par LILGAR
