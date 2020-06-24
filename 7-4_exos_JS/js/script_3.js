function pyramid(){
    let etage = ""
    let i = 1;
    while (etage <= 0){
      etage = prompt("Salut, bienvenue dans la construction de ta pyramide! Combien d'étages veux-tu ?");
      if (etage == 0) {
        console.log("\n\n  Une telle pyramide n'est pas digne de quelqu'un comme toi !");
      } else if (etage < 0) {
        console.log("Une pyramide sous-terraine ? Impossible voyons !!");
      } else {
        while (i != (etage+1)) {
          if ((etage-i) < 0) {
            break;
          }
          console.log(`${" ".repeat(etage-i) + "#".repeat(i)}`);
          i++;
        }
      }
    }
  
  }
  
  
  console.log("Salut, bienvenue dans la construction de ta pyramide! Combien d'étages veux-tu ?");
  pyramid();