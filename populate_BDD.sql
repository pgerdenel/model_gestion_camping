##############################################################################################################################################################################
####################################### SCRIPT D'AJOUT DE DONNEES EXPLOITABLES DANS LA BDD ###################################################################################
# NOTES:
##############################################################################################################################################################################
####################################### INSERTION NOUVEAUX ACTEURS ###########################################################################################################
	# Enregistrement d'un nouvel ACTEUR 'secrétaire'
	INSERT INTO acteur (NOM_ACTEUR, PRENOM_ACTEUR, AGE_ACTEUR, METIER_ACTEUR, NIVEAU_ACCES_ACTEUR, SALAIRE_ACTEUR) VALUES ('Faitout', 'Marie', 31, 'secrétaire', '1', 1350.51);
	# Enregistrement d'un nouvel ACTEUR 'hotesse d'acceuil'
	INSERT INTO acteur (NOM_ACTEUR, PRENOM_ACTEUR, AGE_ACTEUR, METIER_ACTEUR, NIVEAU_ACCES_ACTEUR, SALAIRE_ACTEUR) VALUES ('Jolie', 'Emilie', 31, 'hotesse acceuil', '1', 1350.51);
	# Enregistrement d'un nouvel ACTEUR 'animateur d'animation aquatique'
	INSERT INTO acteur (NOM_ACTEUR, PRENOM_ACTEUR, AGE_ACTEUR, METIER_ACTEUR, NIVEAU_ACCES_ACTEUR, SALAIRE_ACTEUR) VALUES ('Respire', 'Philippe', 31, 'animateur aquatique', '5', 1335.78);
	# Enregistrement d'un nouvel ACTEUR 'animateur d'animation aquatique'
	INSERT INTO acteur (NOM_ACTEUR, PRENOM_ACTEUR, AGE_ACTEUR, METIER_ACTEUR, NIVEAU_ACCES_ACTEUR, SALAIRE_ACTEUR) VALUES ('Souleau', 'Gerard', 32, 'animateur aquatique', '5', 1335.78);
	# Enregistrement d'un nouvel ACTEUR 'animateur d'animation culturel'
	INSERT INTO acteur (NOM_ACTEUR, PRENOM_ACTEUR, AGE_ACTEUR, METIER_ACTEUR, NIVEAU_ACCES_ACTEUR, SALAIRE_ACTEUR) VALUES ('History', 'Marjorie', 51, 'animateur culturel', '5', 1335.78);
	# Enregistrement d'un nouvel ACTEUR 'animateur d'animation randonne'
	INSERT INTO acteur (NOM_ACTEUR, PRENOM_ACTEUR, AGE_ACTEUR, METIER_ACTEUR, NIVEAU_ACCES_ACTEUR, SALAIRE_ACTEUR) VALUES ('Marche', 'Roger', 42, 'animateur randonne', '5', 1335.78);
	# Enregistrement d'un nouvel ACTEUR 'animateur d'animation escalade'
	INSERT INTO acteur (NOM_ACTEUR, PRENOM_ACTEUR, AGE_ACTEUR, METIER_ACTEUR, NIVEAU_ACCES_ACTEUR, SALAIRE_ACTEUR) VALUES ('EnHaut', 'Boris', 24, 'animateur escalade', '5', 1335.78);
	# Enregistrement d'un nouvel ACTEUR 'animateur d'animation fiesta'
	INSERT INTO acteur (NOM_ACTEUR, PRENOM_ACTEUR, AGE_ACTEUR, METIER_ACTEUR, NIVEAU_ACCES_ACTEUR, SALAIRE_ACTEUR) VALUES ('Reveilletoi', 'Jean', 29, 'animateur fiesta', '5', 1900.78);
	# Enregistrement d'un nouvel ACTEUR 'animateur d'animation culinaire'
	INSERT INTO acteur (NOM_ACTEUR, PRENOM_ACTEUR, AGE_ACTEUR, METIER_ACTEUR, NIVEAU_ACCES_ACTEUR, SALAIRE_ACTEUR) VALUES ('Regime', 'Paola', 31, 'animateur culinaire', '5', 1335.78);
##############################################################################################################################################################################
####################################### INSERTION TYPE_ANIMATION #############################################################################################################
	INSERT INTO type_animation (NOM_TYPE_ANIMATION) VALUES ('aquatique');
	INSERT INTO type_animation (NOM_TYPE_ANIMATION) VALUES ('culturel');
	INSERT INTO type_animation (NOM_TYPE_ANIMATION) VALUES ('randonnee');
	INSERT INTO type_animation (NOM_TYPE_ANIMATION) VALUES ('escalade');
	INSERT INTO type_animation (NOM_TYPE_ANIMATION) VALUES ('fiesta');
	INSERT INTO type_animation (NOM_TYPE_ANIMATION) VALUES ('culinaire');
##############################################################################################################################################################################
####################################### INSERTION ANIMATION ##################################################################################################################
	# nécéssite obligatoirement un acteur et un type animation
	INSERT INTO animation (ID_ACTEUR, ID_TYPE_ANIMATION, LABEL_ANIMATION, DUREE_ANIMATION, PREREQUIS_ANIMATION) VALUES (3, 1, 'Aquagym', 1, 'short/slip de bain');
	INSERT INTO animation (ID_ACTEUR, ID_TYPE_ANIMATION, LABEL_ANIMATION, DUREE_ANIMATION, PREREQUIS_ANIMATION) VALUES (4, 1, 'Aquagym', 1, 'short/slip de bain');
	INSERT INTO animation (ID_ACTEUR, ID_TYPE_ANIMATION, LABEL_ANIMATION, DUREE_ANIMATION, PREREQUIS_ANIMATION) VALUES (5, 1, 'culturel', 1, 'short/slip de bain');
	INSERT INTO animation (ID_ACTEUR, ID_TYPE_ANIMATION, LABEL_ANIMATION, DUREE_ANIMATION, PREREQUIS_ANIMATION) VALUES (6, 1, 'randonnee', 2, 'short/slip de bain');
	INSERT INTO animation (ID_ACTEUR, ID_TYPE_ANIMATION, LABEL_ANIMATION, DUREE_ANIMATION, PREREQUIS_ANIMATION) VALUES (7, 1, 'escalade', 2, 'short/slip de bain');
	INSERT INTO animation (ID_ACTEUR, ID_TYPE_ANIMATION, LABEL_ANIMATION, DUREE_ANIMATION, PREREQUIS_ANIMATION) VALUES (8, 1, 'fiesta', 4, 'short/slip de bain');
	INSERT INTO animation (ID_ACTEUR, ID_TYPE_ANIMATION, LABEL_ANIMATION, DUREE_ANIMATION, PREREQUIS_ANIMATION) VALUES (9, 1, 'culinaire', 1, 'short/slip de bain');
##############################################################################################################################################################################
####################################### INSERTION SESSION ANIMATION ##########################################################################################################
	INSERT INTO session (ID_ANIMATION, DATE_DEBUT_SESSION, DATE_FIN_SESSION, HEURE_DEBUT_SESSION, HEURE_FIN_SESSION ) VALUES (1, "01-01-2018", "01-01-2018", "14:00:00", "15:00:00");
	INSERT INTO session (ID_ANIMATION, DATE_DEBUT_SESSION, DATE_FIN_SESSION, HEURE_DEBUT_SESSION, HEURE_FIN_SESSION ) VALUES (2, "02-01-2018", "02-01-2018", "14:00:00", "15:00:00");
	INSERT INTO session (ID_ANIMATION, DATE_DEBUT_SESSION, DATE_FIN_SESSION, HEURE_DEBUT_SESSION, HEURE_FIN_SESSION ) VALUES (3, "03-01-2018", "03-01-2018", "16:00:00", "17:00:00");
	INSERT INTO session (ID_ANIMATION, DATE_DEBUT_SESSION, DATE_FIN_SESSION, HEURE_DEBUT_SESSION, HEURE_FIN_SESSION ) VALUES (4, "04-01-2018", "04-01-2018", "14:00:00", "16:00:00");
	INSERT INTO session (ID_ANIMATION, DATE_DEBUT_SESSION, DATE_FIN_SESSION, HEURE_DEBUT_SESSION, HEURE_FIN_SESSION ) VALUES (5, "05-01-2018", "05-01-2018", "14:00:00", "16:00:00");
	INSERT INTO session (ID_ANIMATION, DATE_DEBUT_SESSION, DATE_FIN_SESSION, HEURE_DEBUT_SESSION, HEURE_FIN_SESSION ) VALUES (6, "06-01-2018", "07-01-2018", "21:00:00", "01:00:00");
	INSERT INTO session (ID_ANIMATION, DATE_DEBUT_SESSION, DATE_FIN_SESSION, HEURE_DEBUT_SESSION, HEURE_FIN_SESSION ) VALUES (7, "07-01-2018", "07-01-2018", "16:00:00", "17:00:00");
##############################################################################################################################################################################
####################################### INSERTION NOUVEAU CLIENT #############################################################################################################
	INSERT INTO client (NOM_CLIENT, PRENOM_CLIENT, ADDRESSE_CLIENT, AGE_CLIENT, TEL_CLIENT) VALUES ('Rébecca', 'Armand', 'Rue de la forêt', 24, 0324755964);
	INSERT INTO client (NOM_CLIENT, PRENOM_CLIENT, ADDRESSE_CLIENT, AGE_CLIENT, TEL_CLIENT) VALUES ('José', 'ramatoss', 'Avenue des champs', 38, 0754649585);
	INSERT INTO client (NOM_CLIENT, PRENOM_CLIENT, ADDRESSE_CLIENT, AGE_CLIENT, TEL_CLIENT) VALUES ('Dingo', 'Mickey', 'Promenade des anglais', 49, 0558916134);
##############################################################################################################################################################################
####################################### INSERTION ACCOMPAGNANT CLIENT ########################################################################################################
	INSERT INTO accompagnant (ID_CLIENT, NOM_ACC, PRENOM_ACC, AGE_ACC) VALUES (1, 'Didier', 'Armand', 46);
	INSERT INTO accompagnant (ID_CLIENT, NOM_ACC, PRENOM_ACC, AGE_ACC) VALUES (1, 'alex', 'Armand', 8);
	INSERT INTO accompagnant (ID_CLIENT, NOM_ACC, PRENOM_ACC, AGE_ACC) VALUES (1, 'joshua', 'Armand', 16);
	INSERT INTO accompagnant (ID_CLIENT, NOM_ACC, PRENOM_ACC, AGE_ACC) VALUES (2, 'Copino', 'ramatoss', 40);
	INSERT INTO accompagnant (ID_CLIENT, NOM_ACC, PRENOM_ACC, AGE_ACC) VALUES (3, 'Manuel', 'Macron', 35);
	INSERT INTO accompagnant (ID_CLIENT, NOM_ACC, PRENOM_ACC, AGE_ACC) VALUES (3, 'Brigitte', 'Macron', 114);
##############################################################################################################################################################################
####################################### INSERTION TYPE_EMPLACEMENT ROUTE, FORET, MER #########################################################################################
	INSERT INTO type_emplacement (NOM_TYPE_EMPLACEMENT) VALUES ('proche route');
	INSERT INTO type_emplacement (NOM_TYPE_EMPLACEMENT) VALUES ('proche forêt');
	INSERT INTO type_emplacement (NOM_TYPE_EMPLACEMENT) VALUES ('proche mer');
##############################################################################################################################################################################
####################################### INSERTION TYPE_EQUIPEMENT MEDIA, JARDIN, MENAGE, SERVICE #############################################################################
	INSERT INTO type_equipement (NOM_TYPE_EQUIPEMENT) VALUES ('media');
	INSERT INTO type_equipement (NOM_TYPE_EQUIPEMENT) VALUES ('jardin');
	INSERT INTO type_equipement (NOM_TYPE_EQUIPEMENT) VALUES ('ménage');
	INSERT INTO type_equipement (NOM_TYPE_EQUIPEMENT) VALUES ('service');
##############################################################################################################################################################################
####################################### INSERTION TYPE_LOCATION MOBIL-HOME, CHALET, TENTE, CAMPING-CAR, CARAVANE #############################################################
	INSERT INTO type_location (NOM_TYPE_LOCATION) VALUES ('mobilhome');
	INSERT INTO type_location (NOM_TYPE_LOCATION) VALUES ('chalet');
	INSERT INTO type_location (NOM_TYPE_LOCATION) VALUES ('tente');
	INSERT INTO type_location (NOM_TYPE_LOCATION) VALUES ('campingcar');
	INSERT INTO type_location (NOM_TYPE_LOCATION) VALUES ('caravane');
##############################################################################################################################################################################
####################################### INSERTION TYPE_SAISON VERTE, ORANGE, ROUGE ###########################################################################################
	# Formules/saison pour 1smn
	INSERT INTO type_saison (NOM_TYPE_SAISON, POURCENTAGE_TYPE_SAISON) VALUES ('verte', 0);
	INSERT INTO type_saison (NOM_TYPE_SAISON, POURCENTAGE_TYPE_SAISON) VALUES ('orange', 5);
	INSERT INTO type_saison (NOM_TYPE_SAISON, POURCENTAGE_TYPE_SAISON) VALUES ('rouge', 10);
##############################################################################################################################################################################
####################################### INSERTION EMPLACEMENT ################################################################################################################
	## Enregistrement de nouveaux emplacements selon type_emplacement et type_location et nb_pers(3x emplacement)
	# type_emplacement ROUTE
		# type_location MOBIL-HOME 2,4,8 personnes
		INSERT INTO emplacement (ID_TYPE_EMPLACEMENT, TARIF_EMPLACEMENT, TAILLE_EMPLACEMENT, COMMENTAIRES_EMPLACEMENT, NUMERO_EMPLACEMENT, REGLEMENT_EMPLACEMENT) VALUES (1, 50, 50, "très bien", "ER_M1", "pas de bruit etc ...");
		INSERT INTO emplacement (ID_TYPE_EMPLACEMENT, TARIF_EMPLACEMENT, TAILLE_EMPLACEMENT, COMMENTAIRES_EMPLACEMENT, NUMERO_EMPLACEMENT, REGLEMENT_EMPLACEMENT) VALUES (1, 50, 50, "très bien", "ER_M2", "pas de bruit etc ...");
		INSERT INTO emplacement (ID_TYPE_EMPLACEMENT, TARIF_EMPLACEMENT, TAILLE_EMPLACEMENT, COMMENTAIRES_EMPLACEMENT, NUMERO_EMPLACEMENT, REGLEMENT_EMPLACEMENT) VALUES (1, 50, 50, "très bien", "ER_M3", "pas de bruit etc ...");
		# type_location CHALET 2,4,8 personnes
		INSERT INTO emplacement (ID_TYPE_EMPLACEMENT, TARIF_EMPLACEMENT, TAILLE_EMPLACEMENT, COMMENTAIRES_EMPLACEMENT, NUMERO_EMPLACEMENT, REGLEMENT_EMPLACEMENT) VALUES (1, 50, 50, "très bien", "ER_C1", "pas de bruit etc ...");
		INSERT INTO emplacement (ID_TYPE_EMPLACEMENT, TARIF_EMPLACEMENT, TAILLE_EMPLACEMENT, COMMENTAIRES_EMPLACEMENT, NUMERO_EMPLACEMENT, REGLEMENT_EMPLACEMENT) VALUES (1, 50, 50, "très bien", "ER_C2", "pas de bruit etc ...");
		INSERT INTO emplacement (ID_TYPE_EMPLACEMENT, TARIF_EMPLACEMENT, TAILLE_EMPLACEMENT, COMMENTAIRES_EMPLACEMENT, NUMERO_EMPLACEMENT, REGLEMENT_EMPLACEMENT) VALUES (1, 50, 50, "très bien", "ER_C3", "pas de bruit etc ...");
		# type_location TENTE 2,4,8 personnes
		INSERT INTO emplacement (ID_TYPE_EMPLACEMENT, TARIF_EMPLACEMENT, TAILLE_EMPLACEMENT, COMMENTAIRES_EMPLACEMENT, NUMERO_EMPLACEMENT, REGLEMENT_EMPLACEMENT) VALUES (1, 50, 30, "très bien", "ER_T1", "pas de bruit etc ...");
		INSERT INTO emplacement (ID_TYPE_EMPLACEMENT, TARIF_EMPLACEMENT, TAILLE_EMPLACEMENT, COMMENTAIRES_EMPLACEMENT, NUMERO_EMPLACEMENT, REGLEMENT_EMPLACEMENT) VALUES (1, 50, 30, "très bien", "ER_T2", "pas de bruit etc ...");
		INSERT INTO emplacement (ID_TYPE_EMPLACEMENT, TARIF_EMPLACEMENT, TAILLE_EMPLACEMENT, COMMENTAIRES_EMPLACEMENT, NUMERO_EMPLACEMENT, REGLEMENT_EMPLACEMENT) VALUES (1, 50, 30, "très bien", "ER_T3", "pas de bruit etc ...");
		# type_location CAMPING-CAR 2,4,8 personnes
		INSERT INTO emplacement (ID_TYPE_EMPLACEMENT, TARIF_EMPLACEMENT, TAILLE_EMPLACEMENT, COMMENTAIRES_EMPLACEMENT, NUMERO_EMPLACEMENT, REGLEMENT_EMPLACEMENT) VALUES (1, 50, 150, "très bien", "ER_CC1", "pas de bruit etc ...");
		INSERT INTO emplacement (ID_TYPE_EMPLACEMENT, TARIF_EMPLACEMENT, TAILLE_EMPLACEMENT, COMMENTAIRES_EMPLACEMENT, NUMERO_EMPLACEMENT, REGLEMENT_EMPLACEMENT) VALUES (1, 50, 150, "très bien", "ER_CC2", "pas de bruit etc ...");
		INSERT INTO emplacement (ID_TYPE_EMPLACEMENT, TARIF_EMPLACEMENT, TAILLE_EMPLACEMENT, COMMENTAIRES_EMPLACEMENT, NUMERO_EMPLACEMENT, REGLEMENT_EMPLACEMENT) VALUES (1, 50, 150, "très bien", "ER_CC3", "pas de bruit etc ...");
		# type_location CARAVANE 2,4,8 personnes
		INSERT INTO emplacement (ID_TYPE_EMPLACEMENT, TARIF_EMPLACEMENT, TAILLE_EMPLACEMENT, COMMENTAIRES_EMPLACEMENT, NUMERO_EMPLACEMENT, REGLEMENT_EMPLACEMENT) VALUES (1, 50, 150, "très bien", "ER_CA1", "pas de bruit etc ...");
		INSERT INTO emplacement (ID_TYPE_EMPLACEMENT, TARIF_EMPLACEMENT, TAILLE_EMPLACEMENT, COMMENTAIRES_EMPLACEMENT, NUMERO_EMPLACEMENT, REGLEMENT_EMPLACEMENT) VALUES (1, 50, 150, "très bien", "ER_CA2", "pas de bruit etc ...");
		INSERT INTO emplacement (ID_TYPE_EMPLACEMENT, TARIF_EMPLACEMENT, TAILLE_EMPLACEMENT, COMMENTAIRES_EMPLACEMENT, NUMERO_EMPLACEMENT, REGLEMENT_EMPLACEMENT) VALUES (1, 50, 150, "très bien", "ER_CA3", "pas de bruit etc ...");
	# type_emplacement FORET
		# type_location MOBIL-HOME 2,4,8 personnes
		INSERT INTO emplacement (ID_TYPE_EMPLACEMENT, TARIF_EMPLACEMENT, TAILLE_EMPLACEMENT, COMMENTAIRES_EMPLACEMENT, NUMERO_EMPLACEMENT, REGLEMENT_EMPLACEMENT) VALUES (2, 80, 80, "très naturel", "EF_M1", "pas de papier par terre etc ...");
		INSERT INTO emplacement (ID_TYPE_EMPLACEMENT, TARIF_EMPLACEMENT, TAILLE_EMPLACEMENT, COMMENTAIRES_EMPLACEMENT, NUMERO_EMPLACEMENT, REGLEMENT_EMPLACEMENT) VALUES (2, 80, 80, "très naturel", "EF_M2", "pas de papier par terre etc ...");
		INSERT INTO emplacement (ID_TYPE_EMPLACEMENT, TARIF_EMPLACEMENT, TAILLE_EMPLACEMENT, COMMENTAIRES_EMPLACEMENT, NUMERO_EMPLACEMENT, REGLEMENT_EMPLACEMENT) VALUES (2, 80, 80, "très naturel", "EF_M3", "pas de papier par terre etc ...");
		# type_location CHALET 2,4,8 personnes
		INSERT INTO emplacement (ID_TYPE_EMPLACEMENT, TARIF_EMPLACEMENT, TAILLE_EMPLACEMENT, COMMENTAIRES_EMPLACEMENT, NUMERO_EMPLACEMENT, REGLEMENT_EMPLACEMENT) VALUES (2, 80, 80, "très naturel", "EF_C1", "pas de papier par terre etc ...");
		INSERT INTO emplacement (ID_TYPE_EMPLACEMENT, TARIF_EMPLACEMENT, TAILLE_EMPLACEMENT, COMMENTAIRES_EMPLACEMENT, NUMERO_EMPLACEMENT, REGLEMENT_EMPLACEMENT) VALUES (2, 80, 80, "très naturel", "EF_C2", "pas de papier par terre etc ...");
		INSERT INTO emplacement (ID_TYPE_EMPLACEMENT, TARIF_EMPLACEMENT, TAILLE_EMPLACEMENT, COMMENTAIRES_EMPLACEMENT, NUMERO_EMPLACEMENT, REGLEMENT_EMPLACEMENT) VALUES (2, 80, 80, "très naturel", "EF_C3", "pas de papier par terre etc ...");
		# type_location TENTE 2,4,8 personnes
		INSERT INTO emplacement (ID_TYPE_EMPLACEMENT, TARIF_EMPLACEMENT, TAILLE_EMPLACEMENT, COMMENTAIRES_EMPLACEMENT, NUMERO_EMPLACEMENT, REGLEMENT_EMPLACEMENT) VALUES (2, 80, 60, "très naturel", "EF_T1", "pas de papier par terre etc ...");
		INSERT INTO emplacement (ID_TYPE_EMPLACEMENT, TARIF_EMPLACEMENT, TAILLE_EMPLACEMENT, COMMENTAIRES_EMPLACEMENT, NUMERO_EMPLACEMENT, REGLEMENT_EMPLACEMENT) VALUES (2, 80, 60, "très naturel", "EF_T2", "pas de papier par terre etc ...");
		INSERT INTO emplacement (ID_TYPE_EMPLACEMENT, TARIF_EMPLACEMENT, TAILLE_EMPLACEMENT, COMMENTAIRES_EMPLACEMENT, NUMERO_EMPLACEMENT, REGLEMENT_EMPLACEMENT) VALUES (2, 80, 60, "très naturel", "EF_T3", "pas de papier par terre etc ...");
		# type_location CAMPING-CAR 2,4,8 personnes
		INSERT INTO emplacement (ID_TYPE_EMPLACEMENT, TARIF_EMPLACEMENT, TAILLE_EMPLACEMENT, COMMENTAIRES_EMPLACEMENT, NUMERO_EMPLACEMENT, REGLEMENT_EMPLACEMENT) VALUES (2, 80, 200, "très naturel", "EF_CC1", "pas de papier par terre etc ...");
		INSERT INTO emplacement (ID_TYPE_EMPLACEMENT, TARIF_EMPLACEMENT, TAILLE_EMPLACEMENT, COMMENTAIRES_EMPLACEMENT, NUMERO_EMPLACEMENT, REGLEMENT_EMPLACEMENT) VALUES (2, 80, 200, "très naturel", "EF_CC2", "pas de papier par terre etc ...");
		INSERT INTO emplacement (ID_TYPE_EMPLACEMENT, TARIF_EMPLACEMENT, TAILLE_EMPLACEMENT, COMMENTAIRES_EMPLACEMENT, NUMERO_EMPLACEMENT, REGLEMENT_EMPLACEMENT) VALUES (2, 80, 200, "très naturel", "EF_CC3", "pas de papier par terre etc ...");
		# type_location CARAVANE 2,4,8 personnes
		INSERT INTO emplacement (ID_TYPE_EMPLACEMENT, TARIF_EMPLACEMENT, TAILLE_EMPLACEMENT, COMMENTAIRES_EMPLACEMENT, NUMERO_EMPLACEMENT, REGLEMENT_EMPLACEMENT) VALUES (2, 80, 200, "très naturel", "EF_CA1", "pas de papier par terre etc ...");
		INSERT INTO emplacement (ID_TYPE_EMPLACEMENT, TARIF_EMPLACEMENT, TAILLE_EMPLACEMENT, COMMENTAIRES_EMPLACEMENT, NUMERO_EMPLACEMENT, REGLEMENT_EMPLACEMENT) VALUES (2, 80, 200, "très naturel", "EF_CA2", "pas de papier par terre etc ...");
		INSERT INTO emplacement (ID_TYPE_EMPLACEMENT, TARIF_EMPLACEMENT, TAILLE_EMPLACEMENT, COMMENTAIRES_EMPLACEMENT, NUMERO_EMPLACEMENT, REGLEMENT_EMPLACEMENT) VALUES (2, 80, 200, "très naturel", "EF_CA3", "pas de papier par terre etc ...");
	# type_emplacement MER
		# type_location MOBIL-HOME 2,4,8 personnes
		INSERT INTO emplacement (ID_TYPE_EMPLACEMENT, TARIF_EMPLACEMENT, TAILLE_EMPLACEMENT, COMMENTAIRES_EMPLACEMENT, NUMERO_EMPLACEMENT, REGLEMENT_EMPLACEMENT) VALUES (3, 140, 140, "belle vue", "EM_M1", "tenir le bout de plage propre");
		INSERT INTO emplacement (ID_TYPE_EMPLACEMENT, TARIF_EMPLACEMENT, TAILLE_EMPLACEMENT, COMMENTAIRES_EMPLACEMENT, NUMERO_EMPLACEMENT, REGLEMENT_EMPLACEMENT) VALUES (3, 140, 140, "belle vue", "EM_M2", "tenir le bout de plage propre");
		INSERT INTO emplacement (ID_TYPE_EMPLACEMENT, TARIF_EMPLACEMENT, TAILLE_EMPLACEMENT, COMMENTAIRES_EMPLACEMENT, NUMERO_EMPLACEMENT, REGLEMENT_EMPLACEMENT) VALUES (3, 140, 140, "belle vue", "EM_M3", "tenir le bout de plage propre");
		# type_location CHALET 2,4,8 personnes
		INSERT INTO emplacement (ID_TYPE_EMPLACEMENT, TARIF_EMPLACEMENT, TAILLE_EMPLACEMENT, COMMENTAIRES_EMPLACEMENT, NUMERO_EMPLACEMENT, REGLEMENT_EMPLACEMENT) VALUES (3, 140, 140, "belle vue", "EM_C1", "tenir le bout de plage propre");
		INSERT INTO emplacement (ID_TYPE_EMPLACEMENT, TARIF_EMPLACEMENT, TAILLE_EMPLACEMENT, COMMENTAIRES_EMPLACEMENT, NUMERO_EMPLACEMENT, REGLEMENT_EMPLACEMENT) VALUES (3, 140, 140, "belle vue", "EM_C2", "tenir le bout de plage propre");
		INSERT INTO emplacement (ID_TYPE_EMPLACEMENT, TARIF_EMPLACEMENT, TAILLE_EMPLACEMENT, COMMENTAIRES_EMPLACEMENT, NUMERO_EMPLACEMENT, REGLEMENT_EMPLACEMENT) VALUES (3, 140, 140, "belle vue", "EM_C3", "tenir le bout de plage propre");
		# type_location TENTE 2,4,8 personnes
		INSERT INTO emplacement (ID_TYPE_EMPLACEMENT, TARIF_EMPLACEMENT, TAILLE_EMPLACEMENT, COMMENTAIRES_EMPLACEMENT, NUMERO_EMPLACEMENT, REGLEMENT_EMPLACEMENT) VALUES (3, 40, 120, "belle vue", "EM_T1", "tenir le bout de plage propre");
		INSERT INTO emplacement (ID_TYPE_EMPLACEMENT, TARIF_EMPLACEMENT, TAILLE_EMPLACEMENT, COMMENTAIRES_EMPLACEMENT, NUMERO_EMPLACEMENT, REGLEMENT_EMPLACEMENT) VALUES (3, 40, 120, "belle vue", "EM_T2", "tenir le bout de plage propre");
		INSERT INTO emplacement (ID_TYPE_EMPLACEMENT, TARIF_EMPLACEMENT, TAILLE_EMPLACEMENT, COMMENTAIRES_EMPLACEMENT, NUMERO_EMPLACEMENT, REGLEMENT_EMPLACEMENT) VALUES (3, 40, 120, "belle vue", "EM_T3", "tenir le bout de plage propre");
		# type_location CAMPING-CAR 2,4,8 personnes
		INSERT INTO emplacement (ID_TYPE_EMPLACEMENT, TARIF_EMPLACEMENT, TAILLE_EMPLACEMENT, COMMENTAIRES_EMPLACEMENT, NUMERO_EMPLACEMENT, REGLEMENT_EMPLACEMENT) VALUES (3, 140, 250, "belle vue", "EM_CC1", "tenir le bout de plage propre");
		INSERT INTO emplacement (ID_TYPE_EMPLACEMENT, TARIF_EMPLACEMENT, TAILLE_EMPLACEMENT, COMMENTAIRES_EMPLACEMENT, NUMERO_EMPLACEMENT, REGLEMENT_EMPLACEMENT) VALUES (3, 140, 250, "belle vue", "EM_CC2", "tenir le bout de plage propre");
		INSERT INTO emplacement (ID_TYPE_EMPLACEMENT, TARIF_EMPLACEMENT, TAILLE_EMPLACEMENT, COMMENTAIRES_EMPLACEMENT, NUMERO_EMPLACEMENT, REGLEMENT_EMPLACEMENT) VALUES (3, 140, 250, "belle vue", "EM_CC3", "tenir le bout de plage propre");
		# type_location CARAVANE 2,4,8 personnes
		INSERT INTO emplacement (ID_TYPE_EMPLACEMENT, TARIF_EMPLACEMENT, TAILLE_EMPLACEMENT, COMMENTAIRES_EMPLACEMENT, NUMERO_EMPLACEMENT, REGLEMENT_EMPLACEMENT) VALUES (3, 140, 250, "belle vue", "EM_CA1", "tenir le bout de plage propre");
		INSERT INTO emplacement (ID_TYPE_EMPLACEMENT, TARIF_EMPLACEMENT, TAILLE_EMPLACEMENT, COMMENTAIRES_EMPLACEMENT, NUMERO_EMPLACEMENT, REGLEMENT_EMPLACEMENT) VALUES (3, 140, 250, "belle vue", "EM_CA2", "tenir le bout de plage propre");
		INSERT INTO emplacement (ID_TYPE_EMPLACEMENT, TARIF_EMPLACEMENT, TAILLE_EMPLACEMENT, COMMENTAIRES_EMPLACEMENT, NUMERO_EMPLACEMENT, REGLEMENT_EMPLACEMENT) VALUES (3, 140, 250, "belle vue", "EM_CA3", "tenir le bout de plage propre");
##############################################################################################################################################################################
####################################### INSERTION EQUIPEMENT #################################################################################################################
	# selon type_emplacement: route, foret, mer
	# selon type_location: mobil-home, chalet, tente, caravane, camping-car 
	# selon type_equipement: media, jardin, menage, service
	####################################### EQUIPEMENT pour type_emplacement proche route #################################################################################### 
		# type_location mobil-home et chalet
		# type_equipement Media
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 1, "TV", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (2, 1, "TV", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (3, 1, "TV", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (4, 1, "TV", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (5, 1, "TV", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (6, 1, "TV", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 1, "Radio", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (2, 1, "Radio", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (3, 1, "Radio", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (4, 1, "Radio", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (5, 1, "Radio", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (6, 1, "Radio", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 1, "Machine à laver", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (2, 1, "Machine à laver", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (3, 1, "Machine à laver", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (4, 1, "Machine à laver", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (5, 1, "Machine à laver", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (6, 1, "Machine à laver", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 1, "Lave-aisselle", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (2, 1, "Lave-aisselle", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (3, 1, "Lave-aisselle", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (4, 1, "Lave-aisselle", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (5, 1, "Lave-aisselle", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (6, 1, "Lave-aisselle", 10);
		# type_equipement Jardin
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 2, "barbecue", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (2, 2, "barbecue", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (3, 2, "barbecue", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (4, 2, "barbecue", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (5, 2, "barbecue", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (6, 2, "barbecue", 10);
		# type_equipement Menage
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 3, "serpillere", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (2, 3, "serpillere", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (3, 3, "serpillere", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (4, 3, "serpillere", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (5, 3, "serpillere", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (6, 3, "serpillere", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 3, "produit nettoyage", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (2, 3, "produit nettoyage", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (3, 3, "produit nettoyage", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (4, 3, "produit nettoyage", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (5, 3, "produit nettoyage", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (6, 3, "produit nettoyage", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 3, "karcher", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (2, 3, "karcher", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (3, 3, "karcher", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (4, 3, "karcher", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (5, 3, "karcher", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (6, 3, "karcher", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 3, "aspirateur", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (2, 3, "aspirateur", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (3, 3, "aspirateur", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (4, 3, "aspirateur", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (5, 3, "aspirateur", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (6, 3, "aspirateur", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 3, "grande poubelle", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (2, 3, "grande poubelle", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (3, 3, "grande poubelle", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (4, 3, "grande poubelle", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (5, 3, "grande poubelle", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (6, 3, "grande poubelle", 10);
		# type_equipement Service
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 4, "seance de menage", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (2, 4, "seance de menage", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (3, 4, "seance de menage", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (4, 4, "seance de menage", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (5, 4, "seance de menage", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (6, 4, "seance de menage", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 4, "svc matinale", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (2, 4, "svc matinale", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (3, 4, "svc matinale", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (4, 4, "svc matinale", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (5, 4, "svc matinale", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (6, 4, "svc matinale", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 4, "course livraison", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (2, 4, "course livraison", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (3, 4, "course livraison", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (4, 4, "course livraison", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (5, 4, "course livraison", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (6, 4, "course livraison", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 4, "service personalise", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (2, 4, "service personalise", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (3, 4, "service personalise", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (4, 4, "service personalise", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (5, 4, "service personalise", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (6, 4, "service personalise", 10);
		# type_location tente
		# type_equipement Media
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (7, 1, "Radio", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (9, 1, "Radio", 10);
		# type_equipement Jardin
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (7, 2, "barbecue", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (9, 2, "barbecue", 10);
		# type_equipement Menage
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (7, 3, "grande poubelle", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (9, 3, "grande poubelle", 10);
		# type_equipement Service
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (7, 4, "svc matinale", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (8, 4, "svc matinale", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (9, 4, "svc matinale", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (7, 4, "course livraison", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (8, 4, "course livraison", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (9, 4, "course livraison", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (7, 4, "service personalise", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (8, 4, "service personalise", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (9, 4, "service personalise", 10);
		# type_location camping-car et caravane
		# type_equipement Media
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (10, 1, "Radio", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (11, 1, "Radio", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (12, 1, "Radio", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (13, 1, "Radio", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (14, 1, "Radio", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (15, 1, "Radio", 10);
		# type_equipement Jardin
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (10, 2, "barbecue", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (11, 2, "barbecue", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (12, 2, "barbecue", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (13, 2, "barbecue", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (14, 2, "barbecue", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (15, 2, "barbecue", 10);
		# type_equipement Menage
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (10, 3, "karcher", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (11, 3, "karcher", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (12, 3, "karcher", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (13, 3, "karcher", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (14, 3, "karcher", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (15, 3, "karcher", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (10, 3, "grande poubelle", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (11, 3, "grande poubelle", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (12, 3, "grande poubelle", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (13, 3, "grande poubelle", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (14, 3, "grande poubelle", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (15, 3, "grande poubelle", 10);
		# type_equipement Service
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (10, 4, "seance de menage", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (11, 4, "seance de menage", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (12, 4, "seance de menage", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (13, 4, "seance de menage", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (14, 4, "seance de menage", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (15, 4, "seance de menage", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (10, 4, "svc matinale", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (11, 4, "svc matinale", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (12, 4, "svc matinale", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (13, 4, "svc matinale", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (14, 4, "svc matinale", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (15, 4, "svc matinale", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (10, 4, "course livraison", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (11, 4, "course livraison", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (12, 4, "course livraison", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (13, 4, "course livraison", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (14, 4, "course livraison", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (15, 4, "course livraison", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (10, 4, "service personalise", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (11, 4, "service personalise", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (12, 4, "service personalise", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (13, 4, "service personalise", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (14, 4, "service personalise", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (15, 4, "service personalise", 10);
	####################################### EQUIPEMENT pour type_emplacement proche forêt #################################################################################### 
		# type_location mobil-home et chalet
		# type_emplacement Media
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (16, 1, "TV", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 1, "Radio", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (16, 1, "Machine à laver", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (16, 1, "Lave-aisselle", 10);
		# type_emplacement Jardin
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (16, 2, "barbecue", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 2, "grille", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 2, "emplacement feu", 10);
		# type_emplacement Menage
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 3, "serpillere", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 3, "produit nettoyage", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 3, "karcher", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 3, "aspirateur", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 3, "grande poubelle", 10);
		# type_emplacement Service
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 4, "seance de menage", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 4, "svc matinale", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 4, "course livraison", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 4, "service personalise", 10);
		# type_location tente
		# type_emplacement Media
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 1, "Radio", 10);
		# type_emplacement Jardin
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 2, "balet", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 2, "barbecue", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 2, "grille", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 2, "emplacement feu", 10);
		# type_emplacement Menage
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 3, "grande poubelle", 10);
		# type_emplacement Service
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 4, "svc matinale", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 4, "course livraison", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 4, "service personalise", 10);
		# type_location camping-car et caravane
		# type_emplacement Media
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 1, "Radio", 10);
		# type_emplacement Jardin
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 2, "barbecue", 10);
		# type_emplacement Menage
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 3, "serpillere", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 3, "produit nettoyage", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 3, "karcher", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 3, "aspirateur", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 3, "grande poubelle", 10);
		# type_emplacement Service
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 4, "seance de menage", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 4, "svc matinale", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 4, "course livraison", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 4, "service personalise", 10);
	####################################### EQUIPEMENT pour type_emplacement proche mer ###################################################################################### 
		# type_location mobil-home et chalet
		# type_emplacement Media
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 1, "Radio", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (35, 1, "Machine à laver", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (35, 1, "Lave-aisselle", 10);
		# type_emplacement Jardin
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (35, 2, "barbecue", 10);
		# type_emplacement Menage
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 3, "serpillere", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 3, "produit nettoyage", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 3, "karcher", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 3, "aspirateur", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 3, "grande poubelle", 10);
		# type_emplacement Service
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 4, "seance de menage", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 4, "svc matinale", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 4, "course livraison", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 4, "service personalise", 10);
		# type_location tente
		# type_emplacement Media
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 1, "Radio", 10);
		# type_emplacement Jardin
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 2, "balet", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 2, "barbecue", 10);
		# type_emplacement Menage
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 3, "grande poubelle", 10);
		# type_emplacement Service
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 4, "svc matinale", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 4, "course livraison", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 4, "service personalise", 10);
		# type_location camping-car et caravane
		# type_emplacement Media
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 1, "Radio", 10);
		# type_emplacement Jardin
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 2, "barbecue", 10);
		# type_emplacement Menage
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 3, "serpillere", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 3, "produit nettoyage", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 3, "karcher", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 3, "aspirateur", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 3, "grande poubelle", 10);
		# type_emplacement Service
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 4, "seance de menage", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 4, "svc matinale", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 4, "course livraison", 10);
		INSERT INTO equipement (ID_EMPLACEMENT, ID_TYPE_EQUIPEMENT, LABEL_EQUIPEMENT, TARIF_EQUIPEMENT) VALUES (1, 4, "service personalise", 10);
##############################################################################################################################################################################
####################################### INSERTION LOCATION ###################################################################################################################
	# selon type_emplacement (route, forêt, mer)
	# selon type_location, nb_pers(tarif et superficie qui changent)
	####################################### LOCATION pour type_emplacement proche route ########################################################################################## 
		# type_location MOBIL-HOME 2,4,8 personnes
		INSERT INTO location (ID_EMPLACEMENT, ID_TYPE_LOCATION, TAILLE_LOCATION, NB_PERS_MAX_LOCATION, TARIF_LOCATION, CAUTION_LOCATION, ETAT_LIBRE_LOCATION) VALUES (1, 1, 25, 2, 250, 350, false);
		INSERT INTO location (ID_EMPLACEMENT, ID_TYPE_LOCATION, TAILLE_LOCATION, NB_PERS_MAX_LOCATION, TARIF_LOCATION, CAUTION_LOCATION, ETAT_LIBRE_LOCATION) VALUES (2, 1, 40, 4, 500, 350, false);
		INSERT INTO location (ID_EMPLACEMENT, ID_TYPE_LOCATION, TAILLE_LOCATION, NB_PERS_MAX_LOCATION, TARIF_LOCATION, CAUTION_LOCATION, ETAT_LIBRE_LOCATION) VALUES (3, 1, 70, 8, 800, 350, true);
		# type_location CHALET 2,4,8 personnes
		INSERT INTO location (ID_EMPLACEMENT, ID_TYPE_LOCATION, TAILLE_LOCATION, NB_PERS_MAX_LOCATION, TARIF_LOCATION, CAUTION_LOCATION, ETAT_LIBRE_LOCATION) VALUES (4, 2, 25, 2, 450, 500, false);
		INSERT INTO location (ID_EMPLACEMENT, ID_TYPE_LOCATION, TAILLE_LOCATION, NB_PERS_MAX_LOCATION, TARIF_LOCATION, CAUTION_LOCATION, ETAT_LIBRE_LOCATION) VALUES (5, 2, 40, 4, 700, 500, false);
		INSERT INTO location (ID_EMPLACEMENT, ID_TYPE_LOCATION, TAILLE_LOCATION, NB_PERS_MAX_LOCATION, TARIF_LOCATION, CAUTION_LOCATION, ETAT_LIBRE_LOCATION) VALUES (6, 2, 70, 8, 1000, 500, false);
		# type_location TENTE 2,4,8 personnes
		INSERT INTO location (ID_EMPLACEMENT, ID_TYPE_LOCATION, TAILLE_LOCATION, NB_PERS_MAX_LOCATION, TARIF_LOCATION, CAUTION_LOCATION, ETAT_LIBRE_LOCATION) VALUES (7, 3, 15, 2, 50, 10, false);
		INSERT INTO location (ID_EMPLACEMENT, ID_TYPE_LOCATION, TAILLE_LOCATION, NB_PERS_MAX_LOCATION, TARIF_LOCATION, CAUTION_LOCATION, ETAT_LIBRE_LOCATION) VALUES (8, 3, 30, 4, 80, 10, false);
		INSERT INTO location (ID_EMPLACEMENT, ID_TYPE_LOCATION, TAILLE_LOCATION, NB_PERS_MAX_LOCATION, TARIF_LOCATION, CAUTION_LOCATION, ETAT_LIBRE_LOCATION) VALUES (9, 3, 60, 8, 100, 10, false);
		# type_location CAMPING-CAR 2,4,8 personnes
		INSERT INTO location (ID_EMPLACEMENT, ID_TYPE_LOCATION, TAILLE_LOCATION, NB_PERS_MAX_LOCATION, TARIF_LOCATION, CAUTION_LOCATION, ETAT_LIBRE_LOCATION) VALUES (10, 4, 100, 2, 150, 10, false);
		INSERT INTO location (ID_EMPLACEMENT, ID_TYPE_LOCATION, TAILLE_LOCATION, NB_PERS_MAX_LOCATION, TARIF_LOCATION, CAUTION_LOCATION, ETAT_LIBRE_LOCATION) VALUES (11, 4, 150, 4, 300, 10, false);
		INSERT INTO location (ID_EMPLACEMENT, ID_TYPE_LOCATION, TAILLE_LOCATION, NB_PERS_MAX_LOCATION, TARIF_LOCATION, CAUTION_LOCATION, ETAT_LIBRE_LOCATION) VALUES (12, 4, 200, 8, 450, 10, false);
		# type_location CARAVANE 2,4,8 personnes
		INSERT INTO location (ID_EMPLACEMENT, ID_TYPE_LOCATION, TAILLE_LOCATION, NB_PERS_MAX_LOCATION, TARIF_LOCATION, CAUTION_LOCATION, ETAT_LIBRE_LOCATION) VALUES (13, 5, 100, 2, 150, 10, false);
		INSERT INTO location (ID_EMPLACEMENT, ID_TYPE_LOCATION, TAILLE_LOCATION, NB_PERS_MAX_LOCATION, TARIF_LOCATION, CAUTION_LOCATION, ETAT_LIBRE_LOCATION) VALUES (14, 5, 150, 4, 300, 10, false);
		INSERT INTO location (ID_EMPLACEMENT, ID_TYPE_LOCATION, TAILLE_LOCATION, NB_PERS_MAX_LOCATION, TARIF_LOCATION, CAUTION_LOCATION, ETAT_LIBRE_LOCATION) VALUES (15, 5, 200, 8, 450, 10, false);
	####################################### LOCATION pour type_emplacement proche foret ########################################################################################## 
		# type_location MOBIL-HOME 2,4,8
		INSERT INTO location (ID_EMPLACEMENT, ID_TYPE_LOCATION, TAILLE_LOCATION, NB_PERS_MAX_LOCATION, TARIF_LOCATION, CAUTION_LOCATION, ETAT_LIBRE_LOCATION) VALUES (16, 1, 25, 2, 250, 150, true);
		INSERT INTO location (ID_EMPLACEMENT, ID_TYPE_LOCATION, TAILLE_LOCATION, NB_PERS_MAX_LOCATION, TARIF_LOCATION, CAUTION_LOCATION, ETAT_LIBRE_LOCATION) VALUES (17, 1, 40, 4, 500, 350, false);
		INSERT INTO location (ID_EMPLACEMENT, ID_TYPE_LOCATION, TAILLE_LOCATION, NB_PERS_MAX_LOCATION, TARIF_LOCATION, CAUTION_LOCATION, ETAT_LIBRE_LOCATION) VALUES (18, 1, 70, 8, 800, 350, false);
		# type_location CHALET 2,4,8 personnes
		INSERT INTO location (ID_EMPLACEMENT, ID_TYPE_LOCATION, TAILLE_LOCATION, NB_PERS_MAX_LOCATION, TARIF_LOCATION, CAUTION_LOCATION, ETAT_LIBRE_LOCATION) VALUES (19, 2, 25, 2, 450, 500, false);
		INSERT INTO location (ID_EMPLACEMENT, ID_TYPE_LOCATION, TAILLE_LOCATION, NB_PERS_MAX_LOCATION, TARIF_LOCATION, CAUTION_LOCATION, ETAT_LIBRE_LOCATION) VALUES (20, 2, 40, 4, 700, 500, false);
		INSERT INTO location (ID_EMPLACEMENT, ID_TYPE_LOCATION, TAILLE_LOCATION, NB_PERS_MAX_LOCATION, TARIF_LOCATION, CAUTION_LOCATION, ETAT_LIBRE_LOCATION) VALUES (21, 2, 70, 8, 1000, 500, false);
		# type_location TENTE 2,4,8 personnes
		INSERT INTO location (ID_EMPLACEMENT, ID_TYPE_LOCATION, TAILLE_LOCATION, NB_PERS_MAX_LOCATION, TARIF_LOCATION, CAUTION_LOCATION, ETAT_LIBRE_LOCATION) VALUES (22, 3, 15, 2, 50, 10, false);
		INSERT INTO location (ID_EMPLACEMENT, ID_TYPE_LOCATION, TAILLE_LOCATION, NB_PERS_MAX_LOCATION, TARIF_LOCATION, CAUTION_LOCATION, ETAT_LIBRE_LOCATION) VALUES (23, 3, 30, 4, 80, 10, false);
		INSERT INTO location (ID_EMPLACEMENT, ID_TYPE_LOCATION, TAILLE_LOCATION, NB_PERS_MAX_LOCATION, TARIF_LOCATION, CAUTION_LOCATION, ETAT_LIBRE_LOCATION) VALUES (24, 3, 60, 8, 100, 10, false);
		# type_location CAMPING-CAR 2,4,8 personnes
		INSERT INTO location (ID_EMPLACEMENT, ID_TYPE_LOCATION, TAILLE_LOCATION, NB_PERS_MAX_LOCATION, TARIF_LOCATION, CAUTION_LOCATION, ETAT_LIBRE_LOCATION) VALUES (25, 4, 100, 2, 150, 10, false);
		INSERT INTO location (ID_EMPLACEMENT, ID_TYPE_LOCATION, TAILLE_LOCATION, NB_PERS_MAX_LOCATION, TARIF_LOCATION, CAUTION_LOCATION, ETAT_LIBRE_LOCATION) VALUES (26, 4, 150, 4, 300, 10, false);
		INSERT INTO location (ID_EMPLACEMENT, ID_TYPE_LOCATION, TAILLE_LOCATION, NB_PERS_MAX_LOCATION, TARIF_LOCATION, CAUTION_LOCATION, ETAT_LIBRE_LOCATION) VALUES (27, 4, 200, 8, 450, 10, false);
		# type_location CARAVANE 2,4,8 personnes
		INSERT INTO location (ID_EMPLACEMENT, ID_TYPE_LOCATION, TAILLE_LOCATION, NB_PERS_MAX_LOCATION, TARIF_LOCATION, CAUTION_LOCATION, ETAT_LIBRE_LOCATION) VALUES (28, 5, 100, 2, 150, 10, false);
		INSERT INTO location (ID_EMPLACEMENT, ID_TYPE_LOCATION, TAILLE_LOCATION, NB_PERS_MAX_LOCATION, TARIF_LOCATION, CAUTION_LOCATION, ETAT_LIBRE_LOCATION) VALUES (29, 5, 150, 4, 300, 10, false);
		INSERT INTO location (ID_EMPLACEMENT, ID_TYPE_LOCATION, TAILLE_LOCATION, NB_PERS_MAX_LOCATION, TARIF_LOCATION, CAUTION_LOCATION, ETAT_LIBRE_LOCATION) VALUES (30, 5, 200, 8, 450, 10, false);
	####################################### LOCATION pour type_emplacement proche mer ############################################################################################ 
		# type_location MOBIL-HOME 2,4,8 personnes
		INSERT INTO location (ID_EMPLACEMENT, ID_TYPE_LOCATION, TAILLE_LOCATION, NB_PERS_MAX_LOCATION, TARIF_LOCATION, CAUTION_LOCATION, ETAT_LIBRE_LOCATION) VALUES (31, 1, 25, 2, 250, 350, false);
		INSERT INTO location (ID_EMPLACEMENT, ID_TYPE_LOCATION, TAILLE_LOCATION, NB_PERS_MAX_LOCATION, TARIF_LOCATION, CAUTION_LOCATION, ETAT_LIBRE_LOCATION) VALUES (32, 1, 40, 4, 500, 350, false);
		INSERT INTO location (ID_EMPLACEMENT, ID_TYPE_LOCATION, TAILLE_LOCATION, NB_PERS_MAX_LOCATION, TARIF_LOCATION, CAUTION_LOCATION, ETAT_LIBRE_LOCATION) VALUES (33, 1, 70, 8, 800, 350, false);
		# type_location CHALET 2,4,8 personnes
		INSERT INTO location (ID_EMPLACEMENT, ID_TYPE_LOCATION, TAILLE_LOCATION, NB_PERS_MAX_LOCATION, TARIF_LOCATION, CAUTION_LOCATION, ETAT_LIBRE_LOCATION) VALUES (34, 2, 25, 2, 450, 500, false);
		INSERT INTO location (ID_EMPLACEMENT, ID_TYPE_LOCATION, TAILLE_LOCATION, NB_PERS_MAX_LOCATION, TARIF_LOCATION, CAUTION_LOCATION, ETAT_LIBRE_LOCATION) VALUES (35, 2, 40, 4, 700, 500, false);
		INSERT INTO location (ID_EMPLACEMENT, ID_TYPE_LOCATION, TAILLE_LOCATION, NB_PERS_MAX_LOCATION, TARIF_LOCATION, CAUTION_LOCATION, ETAT_LIBRE_LOCATION) VALUES (36, 2, 70, 8, 1000, 500, false);
		# type_location TENTE 2,4,8 personnes
		INSERT INTO location (ID_EMPLACEMENT, ID_TYPE_LOCATION, TAILLE_LOCATION, NB_PERS_MAX_LOCATION, TARIF_LOCATION, CAUTION_LOCATION, ETAT_LIBRE_LOCATION) VALUES (37, 3, 15, 2, 50, 10, false);
		INSERT INTO location (ID_EMPLACEMENT, ID_TYPE_LOCATION, TAILLE_LOCATION, NB_PERS_MAX_LOCATION, TARIF_LOCATION, CAUTION_LOCATION, ETAT_LIBRE_LOCATION) VALUES (38, 3, 30, 4, 80, 10, false);
		INSERT INTO location (ID_EMPLACEMENT, ID_TYPE_LOCATION, TAILLE_LOCATION, NB_PERS_MAX_LOCATION, TARIF_LOCATION, CAUTION_LOCATION, ETAT_LIBRE_LOCATION) VALUES (39, 3, 60, 8, 100, 10, false);
		# type_location CAMPING-CAR 2,4,8 personnes
		INSERT INTO location (ID_EMPLACEMENT, ID_TYPE_LOCATION, TAILLE_LOCATION, NB_PERS_MAX_LOCATION, TARIF_LOCATION, CAUTION_LOCATION, ETAT_LIBRE_LOCATION) VALUES (40, 4, 100, 2, 150, 10, false);
		INSERT INTO location (ID_EMPLACEMENT, ID_TYPE_LOCATION, TAILLE_LOCATION, NB_PERS_MAX_LOCATION, TARIF_LOCATION, CAUTION_LOCATION, ETAT_LIBRE_LOCATION) VALUES (41, 4, 150, 4, 300, 10, false);
		INSERT INTO location (ID_EMPLACEMENT, ID_TYPE_LOCATION, TAILLE_LOCATION, NB_PERS_MAX_LOCATION, TARIF_LOCATION, CAUTION_LOCATION, ETAT_LIBRE_LOCATION) VALUES (42, 4, 200, 8, 450, 10, false);
		# type_location CARAVANE 2,4,8 personnes
		INSERT INTO location (ID_EMPLACEMENT, ID_TYPE_LOCATION, TAILLE_LOCATION, NB_PERS_MAX_LOCATION, TARIF_LOCATION, CAUTION_LOCATION, ETAT_LIBRE_LOCATION) VALUES (43, 5, 100, 2, 150, 10, false);
		INSERT INTO location (ID_EMPLACEMENT, ID_TYPE_LOCATION, TAILLE_LOCATION, NB_PERS_MAX_LOCATION, TARIF_LOCATION, CAUTION_LOCATION, ETAT_LIBRE_LOCATION) VALUES (44, 5, 150, 4, 300, 10, false);
		INSERT INTO location (ID_EMPLACEMENT, ID_TYPE_LOCATION, TAILLE_LOCATION, NB_PERS_MAX_LOCATION, TARIF_LOCATION, CAUTION_LOCATION, ETAT_LIBRE_LOCATION) VALUES (45, 5, 200, 8, 450, 10, false);
##############################################################################################################################################################################
####################################### INSERTION FORMULE ####################################################################################################################
	# selon type-saison (vert, orange, rouge) 
	# selon type-emplacement (proche route, proche forêt, proche mer)
	# selon type-location (mobilhome, chalet, tente, caravane, camping-car) 
	###################################### TYPE_SAISON VERTE #####################################################################################################################
		# type-emplacement proche route
			# type-location mobil-home
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (1, 1, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (2, 1, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (3, 1, 1, false);
			# type-location chalet
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (4, 1, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (5, 1, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (6, 1, 1, false);
			# type-location tente
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (7, 1, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (8, 1, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (9, 1, 1, false);
			# type-location caravane
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (10, 1, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (11, 1, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (12, 1, 1, false);
			# type-location camping-car
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (13, 1, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (14, 1, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (15, 1, 1, false);
		# type-emplacement proche forêt
			# type-location mobil-home
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (16, 1, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (17, 1, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (18, 1, 1, false);
			# type-location chalet
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (19, 1, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (20, 1, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (21, 1, 1, false);
			# type-location tente
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (22, 1, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (23, 1, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (24, 1, 1, false);
			# type-location caravane
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (25, 1, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (26, 1, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (27, 1, 1, false);
			# type-location camping-car
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (28, 1, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (29, 1, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (30, 1, 1, false);
		# type-emplacement proche mer
			# type-location mobil-home
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (31, 1, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (32, 1, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (33, 1, 1, false);
			# type-location chalet
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (34, 1, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (35, 1, 1, true);  # client 1 famille
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (36, 1, 1, false);
			# type-location tente
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (37, 1, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (38, 1, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (39, 1, 1, false);
			# type-location caravane
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (40, 1, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (41, 1, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (42, 1, 1, false);
			# type-location camping-car
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (43, 1, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (44, 1, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (45, 1, 1, false);
	###################################### TYPE_SAISON ORANGE #####################################################################################################################
		# type-location mobil-home
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (1, 2, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (2, 2, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (3, 2, 1, false);
			# type-location chalet
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (4, 2, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (5, 2, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (6, 2, 1, false);
			# type-location tente
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (7, 2, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (8, 2, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (9, 2, 1, false);
			# type-location caravane
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (10, 2, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (11, 2, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (12, 2, 1, false);
			# type-location camping-car
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (13, 2, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (14, 2, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (15, 2, 1, false);
		# type-emplacement proche forêt
			# type-location mobil-home
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (16, 2, 1, true); # client 2 couple espagnol
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (17, 2, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (18, 2, 1, false);
			# type-location chalet
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (19, 2, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (20, 2, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (21, 2, 1, false);
			# type-location tente
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (22, 2, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (23, 2, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (24, 2, 1, false);
			# type-location caravane
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (25, 2, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (26, 2, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (27, 2, 1, false);
			# type-location camping-car
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (28, 2, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (29, 2, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (30, 2, 1, false);
		# type-emplacement proche mer
			# type-location mobil-home
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (31, 2, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (32, 2, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (33, 2, 1, false);
			# type-location chalet
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (34, 2, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (35, 2, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (36, 2, 1, false);
			# type-location tente
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (37, 2, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (38, 2, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (39, 2, 1, false);
			# type-location caravane
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (40, 2, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (41, 2, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (42, 2, 1, false);
			# type-location camping-car
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (43, 2, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (44, 2, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (45, 2, 1, false);
	###################################### TYPE_SAISON ROUGE #####################################################################################################################
		#type-emplacement proche route	
			# type-location mobil-home
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (1, 3, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (2, 3, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (3, 3, 1, false);
			# type-location chalet
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (4, 3, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (5, 3, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (6, 3, 1, false);
			# type-location tente
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (7, 3, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (8, 3, 1, true);  # client 3 manuel mickey et brigitte dingo
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (9, 3, 1, false);
			# type-location caravane
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (10, 3, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (11, 3, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (12, 3, 1, false);
			# type-location camping-car
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (13, 3, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (14, 3, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (15, 3, 1, false);
		# type-emplacement proche forêt
			# type-location mobil-home
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (16, 3, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (17, 3, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (18, 3, 1, false);
			# type-location chalet
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (19, 3, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (20, 3, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (21, 3, 1, false);
			# type-location tente
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (22, 3, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (23, 3, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (24, 3, 1, false);
			# type-location caravane
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (25, 3, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (26, 3, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (27, 3, 1, false);
			# type-location camping-car
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (28, 3, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (29, 3, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (30, 3, 1, false);
		# type-emplacement proche mer
			# type-location mobil-home
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (31, 3, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (32, 3, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (33, 3, 1, false);
			# type-location chalet
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (34, 3, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (35, 3, 1, false); 
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (36, 3, 1, false);
			# type-location tente
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (37, 3, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (38, 3, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (39, 3, 1, false);
			# type-location caravane
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (40, 3, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (41, 3, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (42, 3, 1, false);
			# type-location camping-car
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (43, 3, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (44, 3, 1, false);
			INSERT INTO formule (ID_LOCATION, ID_TYPE_SAISON, TEMPS_SEJOUR_FORMULE, SOUSCRIT_ANIMATION) VALUES (45, 3, 1, false);
##############################################################################################################################################################################
####################################### INSERTION SESSIONS CLIENT ANIMATION #################################################################################################
	INSERT INTO inscription_session_client (ID_SESSION, ID_CLIENT) VALUES (1, 1);
	INSERT INTO inscription_session_client (ID_SESSION, ID_CLIENT) VALUES (1, 2);
##############################################################################################################################################################################
####################################### INSERTION SESSIONS CLIENT ACC ANIMATION ##############################################################################################
	INSERT INTO inscription_session_client_acc (ID_SESSION, ID_ACC) VALUES (1, 1);
	INSERT INTO inscription_session_client_acc (ID_SESSION, ID_ACC) VALUES (3, 2);
	INSERT INTO inscription_session_client_acc (ID_SESSION, ID_ACC) VALUES (6, 3);
	INSERT INTO inscription_session_client_acc (ID_SESSION, ID_ACC) VALUES (2, 5);
##############################################################################################################################################################################
######################################## INSERTION DEVIS #####################################################################################################################
	# Calcul du DEVIS
	# TOTAL_A_PAYER_0 = tarif_location + tarif_emplacement
	# TOTAL_A_PAYER_1 = TOTAL_A_PAYER_0 + tarif_equipement/equipement
	# TOTAL_A_PAYER_2 = TOTAL_A_PAYER_1 + caution_location
	# TOTAL_A_PAYER_DEVIS = TOTAL_A_PAYER_2 + (TOTAL_A_PAYER_2*POURCENTAGE_TYPE_SAISON/100)
	# 700 + 140 | + 3*10 | +500 | +0% = 1370
	INSERT INTO devis (ID_CLIENT, TOTAL_A_PAYER_DEVIS) VALUES (1, 1);
	# 250 + 80 | +4*10 | +150 | +5%(TOTAL_A_PAYER_2) = 546
	INSERT INTO devis (ID_CLIENT, TOTAL_A_PAYER_DEVIS) VALUES (2, 1);
	# 250 + 80 | +4*10 | +10 | +10%(TOTAL_A_PAYER_2) = 407
	INSERT INTO devis (ID_CLIENT, TOTAL_A_PAYER_DEVIS) VALUES (3, 1);
##############################################################################################################################################################################
######################################## INSERTION SOUSCRIT_FORMULE ##########################################################################################################
	# chalet 8 personnes(id35), emplacement mer (id35), equipement(machine à laver, lave-aisselle, barbecue) 
	INSERT INTO souscrit_formule (ID_FORMULE, ID_DEVIS) VALUES (35, 1);
	# mobil-home 2 personnes(id16), emplacement foret (id16), equipement(TV, machine à laver, lave-aisselle, barbecue)  
	INSERT INTO souscrit_formule (ID_FORMULE, ID_DEVIS) VALUES (61, 2);
	# tente 4 personnes(id8) (pour 3personnes), emplacement route (id8), equipement(seance menage, svc_matinale, course livraison, service personalise) 
	INSERT INTO souscrit_formule (ID_FORMULE, ID_DEVIS) VALUES (98, 3);
##############################################################################################################################################################################

