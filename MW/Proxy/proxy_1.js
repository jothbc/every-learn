let a = { b: 1 };

// para arrow functions não existe arguments. Para isso é usado o operador rest
const callback = (...args) => {
  console.log(...args);
}

let proxy = new Proxy(a, {
  set: function (target, key, newValue, receptor) {
    if(key === 'b'){
      callback(key, newValue);
    }
    // Usando o método Reflect.set para delegar a operação ao objeto alvo e retornar o resultado
    return Reflect.set(arguments);
  }
})

proxy.b = 2;