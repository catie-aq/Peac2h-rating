require "json"

inp = $stdin.read

data = JSON.parse(inp)

# Exemple de données de sorties
#  data = {
#     "Choix 1"=> "Exigence physique",
#     "Choix 2"=> "Performance",
#     "Choix 3"=> "Effort",
#     "Choix 4"=> "Effort",
#     "Exigence mentale"=> 30,
#     "Exigence physique"=> 30,
#     "Exigence temporelle"=> 34,
#     "Performance"=> 35,
#     "Effort"=> 24,
#     "Niveau de frustration"=> 32
# }

cotations = {} 
# Initialisationscotations["Exigence physique"] = 0;cotations["Performance"] = 0;
cotations["Effort"] = 0;
cotations["Niveau de frustration"] = 0;
cotations["Exigence physique"] = 0;
cotations["Exigence mentale"] = 0;
cotations["Exigence temporelle"] = 0;
cotations["Performance"] = 0;

# on trouve le nom de la cotation, et on ajoute au compteur
# cotations[data["Choix 1"]] = cotations[data["Choix 1"]] + 1

# Rempli toutes les cotations pour les 16 entrée
(1...4).each do |i| 
  cotations[data["Choix " + i.to_s]] = cotations[data["Choix " + i.to_s]] + 1
end 

cotations["Exigence physique"] = cotations["Exigence physique"] * data["Exigence physique"]
cotations["Performance"] = cotations["Performance"] * data["Performance"]

p cotations