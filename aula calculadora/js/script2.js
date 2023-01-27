import { name } from './script1.js';
var sobrenome = 'comin ribeiro';

// var nomeCompleto = name + ' ' + sobrenome;
var loren = `
Lorem ipsum dolor sit 
amet, consectetur adipiscing elit. 
Nam quis egestas mi, in tincidunt erat. 
Nullam at ${sobrenome} erat, nec tempor est. 
Aenean volutpat aliquam justo quis aliquam. 
Nulla diam nisi, fermentum quis imperdiet 
ornare, congue ut ante. Pellentesque 
sagittis ante at feugiat pulvinar. 
${nome} facilisis nisi in elit 
varius, sed dapibus felis congue. 
Aliquam id vestibulum mauris, vel 
pellentesque nulla. Cras vel risus 
gravida, varius ipsum vel, tempus purus.
`;

var nomeCompleto = `${name} ${sobrenome}`;
console.log(nomeCompleto);