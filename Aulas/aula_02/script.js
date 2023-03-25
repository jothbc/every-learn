var familia = ['Jonathan', 123,  12.12 ,'Joaquim', 'Terezinha'];

for(let valorAtual of familia){
    // console.log(valorAtual);
}

var usuario = {
    email: 'jothbc@gmail.com',
    senha: '123'
}

// console.log(usuario.senha);
// console.log(usuario['email']);

for (let chave in usuario){
    // console.log(usuario['email']);
    // console.log(usuario['senha']);

    // console.log(usuario[chave]);
}

familia.forEach(function(valorAtual){
    // console.log(valorAtual);
})