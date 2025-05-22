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
```
GalaxyV2/
├── galaxyv2.sql          # Script de création de la base de données
├── resources.cfg         # Liste des ressources à charger
├── server.cfg            # Fichier principal de configuration du serveur
├── README.md             # Documentation du projet
└── resources/            # Dossier contenant tous les scripts et mappings
    ├── [esx]/            # Scripts principaux ESX
    ├── [jobs]/           # Scripts de métiers (police, ambulance, etc.)
    ├── [scripts]/        # Scripts divers (inventaire, HUD, menu admin, etc.)
    ├── [vehicles]/       # Véhicules et gestion des garages
    ├── [mlo]/            # Mappings et intérieurs personnalisés
    ├── [ui]/             # Interfaces (téléphone, menu, HUD)
    └── [utils]/          # Scripts utilitaires ou librairies
```


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
