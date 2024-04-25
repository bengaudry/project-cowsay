# Projet cowsay - INF203
Ben Gaudry - Remi Cortial - IMA03


## Préliminaires

Les différentes options de la commande cowsay sont : 

| Option de commande | Effet de la commande                                                                |
|--------------------|-------------------------------------------------------------------------------------|
| -e <txt>           | Change le texte représentant les yeux de la vache                                   |
| -f {file}          | Prend le texte représentant la vache dans un fichier                                |
| -T {txt}           | Change le texte représentant la langue de la vache                                  |
| -W {nb}            | Donne un nombre maximal de colonnes de texte avant que le texte ne passe à la ligne |
| -b                 | Borg mode                                                                           |
| -d                 | La vache apparaît morte                                                             |
| -g                 | La vache apparaît avare                                                             |
| -p                 | La vache apparaît paranoiaque                                                       |
| -t                 | La vache apparaît fatiguée                                                          |
| -w                 | La vache apparaît très réveillée                                                    |
| -y                 | Les yeux de la vache deviennent très petits                                         |

## Bash
Tous les scripts se trouvent dans /cow_scripts/{nom_du_script}.sh

### Crazy cow
Pour ce script, nous avons choisi de réaliser une vache qui calcule la ou les solutions d'une équation du second degré