// regras de declaração de variáveis
// 1º não pode conter caracteres especiais (exeto underline: _)
// 2º não pode iniciar com numeros
// Exemplos invalidos
// let 1aluno;
// let @aluno;
// let aluno-1;
// 
// Exemplos validos
// let aluno_1;
// let aluno1;
// let aluno;
// let alunoDoSegundoAno;
// let aluno_do_segundo_ano;


// declaração de variaveis
let nome = 'Jonathan';
let idade = 26;
let altura = 1.68;

let aluno_1 = 'jonathan';
let aluno_2 = 'jonathan2';

let alunos = ['jonathan', 'wellington']; // index 0 ... n-1
// console.log(alunos[0]); 


// variaveis Array
// contador inicia em 0
let vetor = ['Murilo', 'Gabriel', 'João', 26, 1.68];
// console.log(vetor); // ['Murilo', 'Gabriel', 'João', 26, 1.68]
// console.log(vetor[0]); //Murilo           PRIMEIRO INDICE
// console.log(vetor[1]); //Gabriel
// console.log(vetor[2]); //João
// console.log(vetor[3]); //26
// console.log(vetor[4]); //1.68             ULTIMO INDICE
// console.log(vetor[5]); //undefined        ESSA POSIÇÃO NÃO EXISTE NO VETOR



// variaveis Objeto
let calca = {
  pernas: 2,
  bolsos: 2,
  cor: 'azul',
  ralado: 1.5,
  furos: [1, 2, 3, 4, 5],
  valor: {
    preco: 20,
    moeda: "BRL",
    promocao: {
      valor: 10,
      moeda: "BRL",
    }
  }
}
// console.log(calca.valor.promocao.valor);


const GIRO_TERRA = 1640;
// GIRO_TERRA = 1600; //error






