#!
# Ce script doit permettre d'extraire les donnée EXIF GPS d'une photo et de creer un fichier JWG associé à la photo afin de faciliter l'insertion dans autocad

#Variables
nom=
log="./log"

#Fonctions
while IFS='=' read nom
do
	if [ -f ""$nom".JPG" ]
	then
		exec exiftool ""$nom".JPG" | grep GPS > ""$nom".JWG"
	fi
done
