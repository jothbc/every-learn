const form = document.querySelector('#adicionar-tarefa');
const inputTarefa = document.querySelector('#nova-tarefa');
const listaTarefas = document.querySelector('#lista-tarefas');

const checkLi = (liId) => {
  const li = document.querySelector(`#${liId}`);
  li.classList.toggle('feito');
}

const deleteLi = (liId) => {
  const li = document.querySelector(`#${liId}`);
  li.remove();
}

const criarLi = (valor) => {
  const li = document.createElement('li');
  const id = `tarefa-${Date.now()}`;
  li.id = `li-${id}`;
  const body = `
    <input type="checkbox" id="${id}">
    <label for="${id}" onClick="checkLi('${li.id}')" >${valor}</label>
    <button onClick="deleteLi('${li.id}')">X</button>
  `;
  li.innerHTML = body;
  listaTarefas.appendChild(li);
}

form.addEventListener('submit', (e) => {
  e.preventDefault();
  criarLi(inputTarefa.value);
  form.reset();
});