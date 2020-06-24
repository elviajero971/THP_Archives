// La fonction Factorielle
n = prompt('Saisie un nombre entier positif?')
function factorielle(n)
{
if (n<0) {
alert ("Veuillez saisir un entier positif ou nul");
return "### Erreur ###";
}
else {
if (n == 0) {
return 1;
}
else {
return n * factorielle (n-1);
}
}
} 

console.log(`Le résultat est: ${factorielle(n)}`);
