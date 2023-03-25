function minhaFuncao() {

    var nome = 'jonathan';
    var idade = 26;

    var obj = {
        nome: nome,
        idade: idade,
    }

    return obj;
}

var retornoDaFuncao = minhaFuncao();

function mediaNotas(n1, n2, n3) {
    const media = (n1 + n2 + n3) / 3;
    return media;
}


(function () {
    // console.log('criado e chamado');
})()

var minhaArrowFunction = (a, b, c) => {
    console.log('minha primeira arrow function', a, b, c)
}

// minhaArrowFunction('Jonathan', 26, 'Javascript');


// (()=>{
//     console.log('clousure arrow function')
// })()

