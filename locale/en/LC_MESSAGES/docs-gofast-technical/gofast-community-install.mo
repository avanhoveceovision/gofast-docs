��    1      �  C   ,      8  I   9  R   �  G   �       (   2  1  [  b   �  k   �  �   \  �     �   �  �   e	  �   W
     �
  e   �
  )   Z  )   �  $   �  2   �  *     �   1      �  @  �  E     <   `     �     �     �  �   �  h   j  A  �  u     )   �  )   �  {   �  �   [  _   �  W   @  !   �  3   �  0   �  %     =   E  -   �  #   �  �   �  S   q  h   �  �  .  I   �  R   6  H   �     �  &   �  g     }   u  I   �  �   =  �   �  s   �  �     q   �     a  e   o  "   �  &   �  "     '   B  #   j  �   �       !  4  @   V   :   �      �      �      !     !  c   �!  6  �!  d   0#  G   �#  (   �#  O   $  b   V$  b   �$  I   %     f%  0   �%  0   �%  !   �%  6   &  *   >&     i&  �   �&  >   '  H   O'     .   !   '                                          	                       /   %       ,   0         
      *   +          $      #           &                    -   (            )         1   "                                          **Extension** : Ceci est le TLD, la dernière partie de l'URL ex. ``com`` **Nouveau domaine** : Le domaine habituel de votre organisation ex. ``ceo-vision`` **Nouveau sous-domaine** : C'est le sous-domaine GoFAST, ex. ``gofast`` **la clef privée** **la clef publique de votre certificat** -Étape 3: Se connecter à la machine virtuelle en mode console et lancer ``nmtui`` pour configurer le réseau (adresse IP fixe, passerelle ...). Voir https://gofast-docs.readthedocs.io/fr/latest/docs-gofast-technical/gofast-docs-prerequis-installation-serveur.html#configuration-du-reseau-par-lexploitant 2 possibilités à ce stade, utiliser vos certificats (recommandé) ou en créer des auto-signés. Ajoutez du contenu en utilisant le glisser-déposer dans le "GoFAST File Browser" (explorateur de fichiers) Après avoir cliqué sur "Terminer la configuration" vous ne pouvez plus revenir aux étapes précédantes, bien vérifier tous les champs avant de passer à l'étape suivante Après l'installation, ne pas oublier de vérifier qu'il existe des mises à jour dans le menu (votre environnement doit avoir accès à internet) ou directement https://votre_adresse_ip/admin/config/gofast/update Cette 3ème étape permet de configurer le serveur SMTP utilisé par GoFAST pour envoyer des emails. Les champs nécessaires sont: Cette étape définit le compte administrateur qui a accès à plusieurs configurations supplémentaires une fois l'instance GoFAST démarrée. Vous devez choisir l'identifiant, le mot de passe et l'adresse email de ce compte administrateur. Dans les sous-espaces créés, ajouter des membres qui pourront avoir accès au contenu de cet espace. Ajoutez des sous-espaces si nécessaire. Démarrons ! En cas de problème vous pouvez poser vos questions sur les forums : https://community.ceo-vision.com Etape 1 : Configuration du nom de domaine Etape 2 : Configuration du Certificat SSL Etape 3 : Configuration Serveur SMTP Etape 4 : Creation de l'utilisateur administrateur Etape 5 : Confirmation de la configuration For english instruction please follow this link: https://ceo-vision.readthedocs.io/en/latest/docs/en/doc-gofast-community-install.html GoFAST Community :  Installation GoFAST est une application d'entreprise et nécessite un serveur (mini 2vcpu,6GB RAM,SSD recommandé). L'utilisation sur un simple PC sous VirtualBox est donc déconseillée et il est possible de subir des timeouts au premier accès et ensuite à la fin de la configuration. Un simple rafraichissement de la page suffit. Il n'est pas possible de choisier 'admin' qui est un compte réservé Instancier GoFAST et aller au paragraphe `La Configuration`_ Instructions (par image) Instructions (pour AWS) La configuration Le clavier est initialement en mode FR ce qui peut poser problème lorsque vous entrez le mot de passe si vous utilisez un clavier QWERTY. Le mot de passe root sera changé par celui défini lors du processus de configuration (voir ci-dessous) Les espaces peuvent être de différents types, "Organisation" (départements, ...), "Groupes" (projets, ...), "Extranet" (partenaires, clients, ...). Voir la documentation en ligne ici : https://gofast-docs.readthedocs.io/fr/latest/docs-gofast-users/doc-gofast-guide-utilisateurs.html#gerer-un-espace-collaboratif-groupe Ne pas oublier de choisir ``default`` pour "Security Group" pour permettre le traffic entrant 22 (ssh) et 443 (https) Pour la 1ère option vous devez fournir : Pour la 2ème option vous devez fournir : Pour pouvoir utiliser l'adresse complète (FQDN), déclarer la avec son adresse IP dans le fichier ``hosts`` ou dans le DNS Pour vous connecter à votre VM : Le login utilisateur est ``root`` et le mot de passe ``@C0mmunity!`` (avec un ``0`` et non ``O``). Sur cet écran vous configurez chaque partie du FQDN de GoFAST, ex. ``gofast.ceo-vision.com`` : Vous devez créer quelques utilisateurs et des espaces collaboratifs (et sous-espaces). Vous êtes prêt pour démarrer ! Vérifiez attentivement tous les champs et validez. https://aws.amazon.com/marketplace/pp/B07NPZHPG3 –La configuration du certificat SSL –La configuration du compte administrateur de la plateforme –La configuration du nouveau nom de domaine –La configuration du serveur SMTP –Étape 1: Télécharger l’image sur le site https://www.ceo-vision.com/fr/content/gofast-community-ged-plateforme-collaborative-opensource (.ova, ...) –Étape 2: Instancier l'image dans votre logiciel de virtualisation (VMWare, ...) –Étape 4: Se rendre sur ``https://votre_adresse_ip`` ce qui lance la configuration de la plate-forme. Project-Id-Version: English (GoFAST)
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2019-06-16 10:27+0000
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language-Team: English <http://92.222.139.251/projects/gofast/community-installation/en/>
Language: en
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=n != 1;
X-Generator: Weblate 3.6.1
 **New extension** : This is the TLD, the last part of the url ex. ``com`` **New Domain** : This is usualy the domain of your organisation ex. ``ceo-vision`` **New Sub-Domain** : This is the subdomain of the GoFAST, ex. ``gofast`` **the private key** **the public key of your certificate** –Step 3: Login in the VM and launch ``netui`` to configure the network (fix IP address, gateway, ...) At this step you will have 2 configuraiton possibilities, use your own certificates (recommended) or create self-signed ones. Add content using drag&drop into the "GoFAST File Browser" (file browser) After clicking on “Finish Configuration” you will not be able to come back to the previous steps, please check every fields before submitting After installation, don’t forget to check if updates are available in the menu (your environment must have internet access) or directly ``https://your_ip_address/admin/config/gofast/update`` This third step will help you to configure the SMTP server used by GoFAST to send emails. The required fields are : This step will define the ‘administrator’ account who will have access to several additional configurations once the GoFAST instance is started. You must choose the login, password and email address of this administrative account. In the sub-spaces created, add members that must access the content of this space. Add more sub-spaces if needed. Let's start ! If you have problems, you can ask some help on our Community forums: https://community.ceo-vision.com Step 1 : Domain Name Configuration Step 2 : SSL Certificate Configuration Step 3 : SMTP Server configuration Step 4 : Creation of administrator user Step 5 : Configuration confirmation Pour les instructions en Français : https://gofast-docs.readthedocs.io/fr/latest/docs-gofast-technical/gofast-community-install.html GoFAST Community : Installation GoFAST is an "Enterprise Grade" platform and needs a server (mini 2vcpu,4GB RAM,SSD if possible). The use of a Desktop PC with VirtualBox is not recommanded and it is possible to get timeouts at the first access and at the end of the configuration. A simple page refresh should solve this. It is not possible to choose 'admin' which is a reserved account Instantiate GoFAST then go to the `Configuration`_ section Instructions (from image) Instructions (for AWS) The configuration The keyboard is at the beginning in FR mode (French) which can pose problem when you enter the password with a QWERTY keyboard. The ``root`` password will be changed by the one setup during the configuration process (see below) The spaces can be of different types, "Organization" (business units, ...), "Groups" (projects, ...), "Extranet" (partners, customers, ...). See the online documentation here : https://gofast-docs.readthedocs.io/en/latest/docs-gofast-users/doc-gofast-guide-utilisateurs.html#gerer-un-espace-collaboratif-groupe Don't forget to choose ``default`` "Security Group" to allow 22 (ssh) and 443 (https) inbound trafic The first option (recommended) is to upload your own SSL certificates : For the second option you must provide : To access the platform via an FQDN, please configure your DNS or ``hosts`` file To login in console mode to the VM :  ``login : root`` ``password : @C0mmunity!`` (with a 0 not O) On this screen you will describe every part of the FQDN of GoFAST, ex. ``gofast.ceo-vision.com`` : You must create several users and collaboratives spaces (and sub-spaces). You are now ready to start ! Please review carefully all fields and validate. https://aws.amazon.com/marketplace/pp/B07NPZHPG3 -Configuration of SSL certificate -The configuration of  plateform administrator account - The configuration of the new domain name -Configuration of SMTP server –Step 1: Download the image https://www.ceo-vision.com/en/content/gofast-community-ged-plateforme-collaborative-opensource (.ova, ...) –Step 2: Start the instance on your hypervisor (VMWare, ...) –Step 4: Enter ``https://your_ip_address`` and configure the platform. 