var meuNome = 'Jonathan Comin Ribeiro';

// console.log(meuNome.at(0));
// console.log(meuNome.split(' '));
// console.log(meuNome.includes('o'));

// console.log(meuNome.indexOf('y')); // -1 se nao achou | > -1 se achou


var alunos = [];

var aluno1 = {
    nome: 'Jonathan',
    idade: 26,
    id: 1
}
var aluno2 = {
    nome: 'Joao',
    idade: 23,
    id: 2
}

alunos.push(aluno1); // insere no final
alunos.push(aluno2); //insere no final
alunos.unshift(aluno2); //insere no inicio

// alunos.pop(); // remove do final
// alunos.shift(); // remove do inicio
var alunoEncontrado = alunos.find(  function(alunoAtual){

    return alunoAtual.id === 2

}  )

// console.log(alunoEncontrado);

