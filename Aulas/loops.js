// tabuada
for (let i = 1; i <= 10; i++) {
  // i = 2
  for (let c = 1; c <= 10; c++) {
    // c = 2
    // console.log(i, 'x', c, '=', (i*c));
  }
}

const alunos = ["jonathan", "wellington", "Joao", "Maria"];
for (let i = 0; i < alunos.length; i++) {
  if (alunos[i] === 'jonathan') {
    alunos[i] = alunos[i] + ' | Professor';
  } else {
    alunos[i] = alunos[i] + ' | Aluno';
  }
}
// console.log(alunos);

let contador = 0;
while (contador < 10) {
  // console.log(contador);
  contador++;
  // contador = contador + 1;
  // contador += 1;
}

let contador2 = 100;
do {
  // console.log(contador2);
  contador2++;
} while (contador2 < 10);


alunos.forEach((aluno, index) => {
  console.log(aluno, index);
})



