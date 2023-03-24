var meuNome; // string
meuNome = 'Jonathan Comin Ribeiro';
const MINHA_IDADE = 26;
let minhaIdade2;
minhaIdade2 = 'teste';
var minhaIdade;
minhaIdade = 26; //number
var moeda = 2.25; //number
var maiorDeIdade = true; //boolean
var eCrianca = false; //boolean
var vazia;
var texto = 'Meu nome é ' + meuNome + ' e eu tenho ' + minhaIdade + ' anos.';
var texto2 = `Meu nome é ${meuNome} e tenho ${minhaIdade} anos.`;

var nome1 = 'jonathan';
var nome2 = 'millena';
var nome3 = 'Nicolas';
var nome4 = 'Pietryck';
var nome5 = 'Vinicius';

// vetor -> array
var pessoas = ['Jpnathan', 'Millena', 'Nicolas', 'Pietryck', 'Vinicius'];
var primeiraPessoa = pessoas[0];
var ultimaPessoa = pessoas[4];
pessoas[5] = 'Jonathan';

var notas = [];
notas.push(1); // adicionar
notas.pop(); // remover

var vetorVariado = [-1, 1.25, 'Jonathan', false, { nome: 'Jonathan' }];
// Object
var serHumano = {
  olhos: 2,
  fiosDeCabelo: 0,
  dinheiro: 100.50,
  nome: 'Jonathan',
  sobreNome: 'Comin Ribeiro',
  familiares: ['Joao', 'Joana'],
  mochila: {
    cor: 'verde',
    bolsos: 4,
  }
}
serHumano.pernas = 1;
serHumano.olhos = 3;
serHumano.olhos = 'Tem 3 olhos';


var mariaIdade = 14;

// if (mariaIdade >= 18) {
//   console.log('maria é maior de idade');
// } else if (mariaIdade >= 15) {
//   console.log('maria tem mais que 15 anos porem nao é maior de idade ainda');
// } else {
//   console.log('Maria tem menos que 15 anos')
// }

// switch(mariaIdade){
//   case 18:
//     console.log('maria tem 18 anos');
//     break;
//   case 15:
//     console.log('maria tem 15 anos');
//     break;
//   default: 
//     console.log('maria tem idade diferente de 18 e 15')
// }

var pessoas = ['Millena', 'Nicolas', 'Jonathan', 'Pietryck', 'Vinicius'];
pessoas[5] = 'Novo aluno';
pessoas[6] = 'Novo aluno 2';
pessoas[7] = 'Novo aluno 3';

for (let x = 0; x < pessoas.length; x++) {
  if (pessoas[x] === 'Jonathan') {
    pessoas[x] = `${pessoas[x]} EU`;
  }
  //final da minha instrução
}

let x = 0;
let interacao = 0;
while (x < 50) {
  if(interacao % 2){
    x++;
  }
  interacao++;
}


let x1 = 0;
let interacao1 = 0;
do {
  if(interacao % 2){
    x++;
  }
  interacao++;
}while(x < 50)

