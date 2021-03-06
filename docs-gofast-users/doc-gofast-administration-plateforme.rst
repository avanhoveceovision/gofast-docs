===========================
GoFAST : Administration 
===========================



Introduction
============

Cette partie de la documentation est destinée aux utilisateurs disposant du rôle "Super-Administrateur". Pour l'administration des Espaces Collaboratifs, merci de vous référer à la rubrique "Gestion des Espaces Collaboratifs". 

.. NOTE:: Le rôle "Super-Administrateur" donne accès à des fonctionnalités de configuration de GoFAST, mais en aucun cas ce rôle permet d’accéder par défaut aux Espaces Collaboratifs et documents par défaut. Il s’agit ici de garantir la confidentialité des données. Pour avoir accès aux contenus d’un Espace Collaboratif il est nécessaire d’être membre de cet Espace dont l’accès est donné uniquement par les administrateurs de l’Espace (en général des responsable métiers).  

   

Configuration de la visibilité des Utilisateurs et Espaces
==========================================================

Deux options sont disponibles : 
-------------------------------
 * Visibilité entre les utilisateurs
 * Visibilité des Espaces Collaboratifs

.. NOTE:: Cette configuration n'est pas liée aux rôles donnés dans les Espaces Collaboratifs, mais sur des rôles globaux sur GoFAST, à savoir : Utilisateurs Standard ou Extranet. 

.. NOTE:: Le cloisonnement s'applique uniquement pour les utilisateurs n'ayant aucun Espace Collaboratif en commun. Si deux utilisateurs sont membres d'un même espace, ils pourront dans tous les cas se voir entre eux.  


Visibilité entre les utilisateurs 
----------------------------------

Il s'agit de permettre aux utilisateurs de se voir entre eux dans l’annuaire des utilisateurs et de consulter les profils. 

GoFAST permet de séléctionner la visibilité ou le cloisonement selon le rôle des utilisateurs : 
 * Les utilisateurs ayant le rôle "Extranet" (rôle globale à la plateforme) peuvent se voir ou pas entre eux.
 * Tous les utilisateurs indépendament de leur rôle sur GoFAST peuvent se voir ou pas entre eux.

Le cloisonnement entre les utilisateurs extranets permet d'éviter que des partenaires et prestataires ne se voient entre eux.


Visibilité des Espaces Collaboratifs 
------------------------------------

Il s'agit de permettre aux utilisateurs de voir ou pas l'arborescence des différents Espaces Collaboratifs dont ils ne sont pas membres. . 

GoFAST permet de séléctionner la visibilité ou le cloisonement selon le rôle des utilisateurs : 
 * Les utilisateurs ayant le rôle "Extranet" (rôle globale à la plateforme) peuvent ou pas consulter l'ensemble de l'arborescence des Espaces Collaboratifs.
 * Tous les utilisateurs indépendament de leur rôle sur GoFAST peuvent ou pas consulter l'ensemble de l'arborescence des Espaces Collaboratifs.

Ce cloisonnement permet d'éviter que les utilisateurs ne puissent consulter les Espaces dont ils ne sont pas membres, dans l'annuaire des Espaces.
Pour les utilisateurs rôle Extranet, cela permet d'éviter que des partenaires et prestataires ne puissent consulter l'arborescence des Espaces internes (ex : Organisations et Groupes), ainsi que les Espaces déstinés à d'autres partenaires ou prestataires. C'est important dans le cas où il y a des Espaces Extranets dédiés à des concurrents. 

Single Sign-On (SSO)
=====================

Protocole utilisé par l'application
------------------------------------

GoFAST exploite le protocole Security Assertion Markup Language Version 2.0 (SAML 2.0). Ce standard s'appuie sur la structuration de données au format XML.

Son fonctionnement fait intervenir un *fournisseur d'identité (Identity Provider ou IdP)* qui correspond à l'application fournissant l'identification d'une personne ainsi qu'un *fournisseur de service (Service Provider ou SP)* qui correspond à l'application sur laquelle on souhaite s'identifier. Dans notre cas, GoFAST est le *fournisseur de service (SP)*.

.. figure:: media-guide/sso_schema.png
   :alt: 

Configuration du fournisseur d'identité
----------------------------------------

Le paramétrage du fournisseur d'identité va permettre de dire à GoFAST comment et ou demander la vérification d'une identité. Cette configuration permets également de sécuriser l'échange au moyen de certificat(s).

Les paramètres à remplir sont : 

* *Nom* : Le nom du fournisseur d'identité. C'est ce nom qui sera affiché aux utilisateurs sur le formulaire de connexion.
* *Identifiant (ID) de l'entité* : Le champ 'entityID' qui permets d'identifier le fournisseur d'identité. Il s'agit généralement d'une URL.
* *Nom de l'application* : Le nom de l'application passé au fournisseur d'identité pour identifier l'origine de la requête.
* *URL de connexion de l'IDP* : L'URL de connexion du fournisseur d'identité.
* *URL de déconnexion de l'IDP* : L'URL de déconnexion du fournisseur d'identité.

Un certificat doit être fourni par le fournisseur d'identité. Ce certificat servira a identifier avec certitude le bon fournisseur d'identité.

.. figure:: media-guide/sso_idp_cert.png
   :alt: 

Configuration du fournisseur de service
----------------------------------------

Le paramétrage du fournisseur de service permets à l'application de transmettre les bonnes informations au fournisseur d'identité dans le bon format et avec le bon niveau de sécurité.

Il est possible de définir des contacts techniques et support à transmettre à notre fournisseur d'identité : 

.. figure:: media-guide/sso_sp_tech.png
   :alt: 

On peut également transmettre au fournisseur d'identité des informations sur l'organisation du fournisseur de service

.. figure:: media-guide/sso_sp_org.png
   :alt: 

Et enfin, nous accédons aux paramètres de sécurité qui vont permettre de s'adapter à notre fournisseur d'identité et de pouvoir communiquer avec lui. Les paramètres disponibles sont : 

*Attention*: Les 3 paramètres suivants nécessitent à GoFAST de connaitre la clé privée qui permettra de déchiffrer les informations côté IdP. Se renseigner auprès du support.

* *Champ 'NameID' chiffré* : Permets de chiffrer dans un format particulier l'information d'identité qui est transmise entre les applications
* *Requêtes 'Authn' signés* : Demande au SP (GoFAST) de signer ses requêtes vers l'IdP
* *Requêtes de déconnexion chiffrés* : Permets de chiffrer les demandes de connection vers l'IdP
* *Réponses de déconnexion chiffrés* : Permets de chiffrer les demandes de déconnection vers l'IdP

_______________

* *Messages signés requis* : Permets de demander à l'IdP de signer ses messages
* *Assertions signés requis* : Permets de demander à l'IdP de signer ses validations d'authentification
* *Champ 'NameID' chiffré* : Permets de demander à l'IdP de chiffrer le champ NameID dans le retour de la requête
* *Signature des métadonnées* : Applique notre signature et demande à l'IdP d'appliquer sa signature sur les métadonnées

Une fois la configuration terminée, un onglet métadonnées sera généré et contiendra les métadonnées à renseigner dans l'IdP pour enregistrer l'application SP (GoFAST) comme étant valide.

.. figure:: media-guide/sso_sp_metadata.png
   :alt: 

Sur la page de login, l'utilisateur pourra maintenant se connecter en cliquant sur le bouton "Se connecter avec XXX".

.. figure:: media-guide/sso_login.png
   :alt: 

