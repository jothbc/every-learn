var maria = true;
var juliana = true;
var joao = false;

if (maria && juliana){
  console.log('as duas mulheres vao na festa');
}
else if (maria && !juliana && joao){
  console.log('a maria vai com o joao')
}
else if(!maria && juliana && joao){
  console.log('a juliana vai mas nao vai sentar com o joao');
}
else if(joao){
  console.log('joao vai sozinho');
}
else {
  console.log('ninguem vai a festa');
}


const idade = 15;

switch(idade){
  case 14:
    console.log('aqui 14');
    break;
  case 15:
    console.log('aqui 15');
  case 16:
    console.log('aqui 16');
  case 17:
    console.log('aqui 17');
  case 18:
    console.log('aqui 18');
    break;
  default:
      console.log('default');
      break;
}



