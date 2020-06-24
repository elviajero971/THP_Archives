console.log(` `);
console.log(`--------------------------------------------`);
console.log(`--------------------------------------------`);
console.log(` `);


//Question 1
console.log("Question n°1: Combien y a-t-il d'éléments p présents dans la page HTML ?");
console.log(` `);
var NumberOfPTags = document.getElementsByTagName("p").length
console.log(`Il y a ${NumberOfPTags} élément(s) p dans la page HTML.`);
console.log(` `);
console.log(`--------------------------------------------`);
console.log(`--------------------------------------------`);
console.log(` `);
console.log(` `);


//Question 2
console.log("Question n°2: Quel est le contenu texte de l'élément portant l'id coucou ?");
console.log(` `);
var ContentElementCoucou = document.getElementById("coucou")
console.log(`Réponse: Le contenu texte de l'élément portant l'id coucou est: ${ContentElementCoucou}`);
console.log(` `);
console.log(`--------------------------------------------`);
console.log(`--------------------------------------------`);
console.log(` `);
console.log(` `);


//Question 3
console.log("Question n°3: Quel est l'URL vers laquelle pointe le 3ème élément a de la page HTML ?");
console.log(` `);
var WhatUrl = document.getElementsByTagName("a")[2]
console.log(`Réponse: L'URL vers laquelle pointe le 3ème élément a de la page HTML est : ${WhatUrl}`);
console.log(` `);
console.log(`--------------------------------------------`);
console.log(`--------------------------------------------`);
console.log(` `);
console.log(` `);


//Question 4
console.log("Combien d'éléments portent la classe compte-moi ?");
console.log(` `);
var CountMe = document.getElementsByClassName("compte-moi").length
console.log(`Réponse: Il y a ${CountMe} éléments qui portent la classe compte-moi.`);
console.log(` `);
console.log(`--------------------------------------------`);
console.log(`--------------------------------------------`);
console.log(` `);
console.log(` `);


//Question 5
console.log("Question n°5: combien d'éléments li portent la classe compte-moi ?");
console.log(` `);
var CountMeLi = document.querySelectorAll("li.compte-moi").length
console.log(`Réponse: Il y a ${CountMeLi} éléments li qui portent la classe compte-moi.`);
console.log(`--------------------------------------------`);
console.log(`--------------------------------------------`);
console.log(` `);
console.log(` `);


//Question 6
console.log("Question n°6: combien d'éléments li étant situés dans une liste ordonnée, portent la classe compte-moi ?");
console.log(` `);
var CountMeOl = document.querySelectorAll("ol > li.compte-moi").length
console.log(`Réponse: Il y a ${CountMeOl} éléments li qui portent la classe compte-moi et qui sont situés dans une liste ordonnée.`);
console.log(` `);
console.log(`--------------------------------------------`)
console.log(`--------------------------------------------`)
console.log(` `);
console.log(` `);


//Question 7
console.log("Question n°7 ");
console.log(` `);
var Hide = document.querySelector("div").lastElementChild.querySelector('li').innerHTML
console.log(`Réponse: ${Hide}`);
console.log(`--------------------------------------------`)
console.log(`--------------------------------------------`)


