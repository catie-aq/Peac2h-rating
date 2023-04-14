import json
str = input()
data = json.loads(str)

## Input in Glot shond not have line breaks e.g. : {"test": "Code"}

# print(data)
# Exemple de données de sorties

cotations = {} 
# Initialisationscotations["Exigence physique"] = 0;cotations["Performance"] = 0;
cotations["Effort"] = 0
cotations["Niveau de frustration"] = 0
cotations["Exigence physique"] = 0
cotations["Exigence mentale"] = 0
cotations["Exigence temporelle"] = 0
cotations["Performance"] = 0

# on trouve le nom de la cotation, et on ajoute au compteur
# cotations[data["Choix 1"]] = cotations[data["Choix 1"]] + 1

# Rempli toutes les cotations pour les 16 entrée
for i in range(1, 5): 
  cotations[data["Choix " + str(i)]] = cotations[data["Choix " + str(i)]] + 1

cotations["Exigence physique"] = cotations["Exigence physique"] * data["Exigence physique"]
cotations["Performance"] = cotations["Performance"] * data["Performance"]