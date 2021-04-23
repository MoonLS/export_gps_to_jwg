# export_gps_to_jwg
Ce script doit permettre d'extraire les donnée EXIF GPS d'une photo et de creer un fichier JWG associé à la photo afin de faciliter l'insertion dans autocad

Il doit permettre
  - de rechercher des photos jpg,
  - de lire les balises EXIF GPS des photos,
  - de générer un fichier JWG de meme nom que la photo comprenant la structure texte suivante
    + Facteur d'echelle en X
    + Rotation = 0 (en general)
    + Rotation = 0 (en general)
    +Facteur d'echelle en Y (negatif car vers le bas donc Y negatif !) idem X en valeur absolu (en general)
    + X insertion
    + Y insertion 

Cela doit donner (avec les lignes d'espaces):
0.25

0

0

-0.25

939404.5910

303813.1286

Au passage il faut convertire les coordonées GPS standard lon/lat en Lambert Zone
https://geofree.fr/gf/coordinateconv.asp

Du coup je pense que la méthode la plus simple est de réaliser un fichier CSV comprenant nom | lat | lon
Puis de se servire d'un tableur pour faire la transformation via le site geofree
On recole ca dans le fichier CSV
Puis un script génère les fichiers JWG par lecture du CSV
