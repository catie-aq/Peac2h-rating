
function cotation(data){

  let cotations = {} 
  // Initialisationscotations["Exigence physique"] = 0;cotations["Performance"] = 0;
  cotations["Effort"] = 0;
  cotations["Niveau de frustration"] = 0;
  cotations["Exigence physique"] = 0;
  
  // on trouve le nom de la cotation, et on ajoute au compteur
  // cotations[data["Choix 1"]] = cotations[data["Choix 1"]] + 1
  
  // Rempli toutes les cotations pour les 16 entrées
  for(let i = 1; i <= 4 ; i++){
    cotations[data["Choix " + i]] = cotations[data["Choix " + i]] + 1
  }
  cotations["Exigence physique"] = cotations["Exigence physique"] * data["Exigence physique"]
  cotations["Performance"] = cotations["Performance"] * data["Performance"]
  return cotations;
}

process.stdin.on("readable", () => {
  let chunk = process.stdin.read();
  if(chunk){
    // console.log("chunk: " + chunk.toString(), "readable: " + process.stdin.readable);
    let data = JSON.parse( chunk.toString());
    let output = cotation(data);
    console.log(output);
  }
});