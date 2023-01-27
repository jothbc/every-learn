function dialog() {
  alert('chamou');
}

// dialog();

function meusDados() {
  return true;
}

var dados = meusDados();

function multiplicar(a, b) {
  return a * b;
}

var multiplicacao = multiplicar(2, 5);

//funcao anonima / closure
// (function (){
//   console.log('closure');
// })()

// (()=>{
//   console.log('closure');
// })()

var arrowFunction = (nome, sobrenome) => {
  console.log(nome, sobrenome)
}

arrowFunction('Jonathan', "Comin");
