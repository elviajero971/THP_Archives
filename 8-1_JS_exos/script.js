// Fonctionnalité 1 et 1(bis)

// 1. On définit une variable qui va pointer sur le footer
var footer = document.querySelector('footer');

//2. On définit la fonction onFooterClick qui va répondre à l'event par un message en console (feature supplémentaire qui va compter le nombre de click)
var click = 0 
var onFooterClick = function() {
click++
console.log(`Clique numéro ${click}`);
};

//3.On précise que l'event se déclenchera seulement si le click vient de la variable de pointage onFooterClick (et donc d'un click sur la zone du footer)
footer.addEventListener("click", onFooterClick);


//Fonctionnalité 2

// 1. On définit une variable button sur laquelle on va pointer l'event
let button = document.getElementsByTagName('button')[0]

//2. On définit la fonction onMenuClick qui va répondre à l'event en déroulant le toggle de la Navbar
let onMenuClick = function(){
  document.getElementById('navbarHeader').classList.toggle('collapse');
};

//3.On précise que l'event se déclenchera seulement si le click vient de la variable de pointage onMenuClick (et donc d'un click sur button)
button.addEventListener("click", onMenuClick)


//Fonctionnalité 3

// 1. On définit une variable btn_1 sur laquelle on va pointer l'event
let btn_1 = document.getElementsByTagName('button')[2]

//2. On définit la fonction onCardClick qui va répondre à l'event en changeant la couleur du texte de l'élément btn_1
let onCardClick = function(){
  btn_1.style ="color: red";
};

//3.On précise que l'event se déclenchera seulement si le click vient de la variable de pointage onCardClick (et donc d'un click sur btn_1)
btn_1.addEventListener("click", onCardClick);


//Fonctionnalité 4

// 1. On définit une variable btn_2 sur laquelle on va pointer l'event
var btn_2 = document.getElementsByTagName('button')[4]

//2. On définit la fonction onCardClick_2 qui va répondre à l'event en changeant la couleur du texte de l'élément btn_2 à chaque click (soit on revient à la couleur de base, soit on change la couleur pour du vert)
var onCardClick_2 = function(){
  if (btn_2.style.color === 'green')
    {
    btn_2.style.color = '';
    }
    else { btn_2.style.color = 'green';}
};

//3.On précise que l'event se déclenchera seulement si le click vient de la variable de pointage onCardClick_2 (et donc d'un click sur btn_2)
btn_2.addEventListener("click", onCardClick_2);

//Fonctionnalité 5

// 1. On définit les variables link et navbar
let link = document.querySelector("link");
let navbar = document.getElementsByTagName("div")[6]

//2. Définit la fonction deleteCDN qui va répondre à l'event en supprimant href de la variable link (si href est non nul) ou bien e n l'ajoutant (si href est nul)
var deleteCDN = function(){
  if (link.href === "https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css")
    {
    link.href ="";
    }
    else { link.href ="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css";}
};

//3.On implémente addEventListener pour la variable concerné et avec la fonction qui va y répondre 
navbar.addEventListener("dblclick", deleteCDN);

// Fonctionnalité 6
const view = document.querySelectorAll('.btn-success')
const text = document.querySelectorAll('.card-text')
const img = document.querySelectorAll('.card-img-top')

for (let i = 0; i < view.length; i++) {
  view[i].addEventListener('mouseover', function () {
    if (text[i].style.display !== 'none') {
      img[i].style.width = '20%'
      text[i].style.display = 'none'
    } else {
      img[i].style.width = '100%'
      text[i].style.display = ''
    }
  })
}

// Fonctionnalité 7 :

let row1 = document.getElementsByClassName("row")[1];
let cards = document.getElementsByClassName("col-md-4");

let rightBtnJumpbottron = document.getElementsByClassName("btn btn-secondary my-2")[0];

rightBtnJumpbottron.addEventListener("click",function(){
  row1.insertBefore(cards[5], cards[0]);
}
);


// Fonctionnalité 8 :

let leftBtnJumpbottron = document.getElementsByClassName("btn btn-primary my-2")[0];

leftBtnJumpbottron.removeAttribute('href');

leftBtnJumpbottron.addEventListener("click",function(){
    row1.insertBefore(cards[0], cards[6]);
  }
);