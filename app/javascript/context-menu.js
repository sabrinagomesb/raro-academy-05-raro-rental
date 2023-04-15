const toggleCorTituloPrincipal = () => {
  const tituloPrincipal = document.querySelector('.titulo-principal');
  
  if (tituloPrincipal.classList.contains('cor-vermelha')) {
    tituloPrincipal.classList.remove('cor-vermelha')
  } else {
    tituloPrincipal.classList.add('cor-vermelha')
  }
};

const toggleUserMenu = (event) => {
  const userMenu = document.querySelector('.context-menu');
  
  if (userMenu.classList.contains('hidden')) {
    userMenu.classList.remove('hidden')
  } else {
    userMenu.classList.add('hidden')
  }

  // este comando interrompe a propagação de eventos para os demais elementos pais do #open-user-menu.
  // se eu não coloco este filtro, o evento para fechar o menu de contexto declarado para o docucment
  // seria disparado, e por consequencia, nunca veriamos este menu aberto.
  event.stopPropagation();
};

const hideUserMenu = () => {
  const userMenu = document.querySelector('.context-menu');
  userMenu.classList.add('hidden');
};

// selecionando os objetos da tela para adicionar os eventos de click.
const toggleCorVermelha = document.querySelector('#toggle-cor-vermelha');
const openUserMenu = document.querySelector('#open-user-menu');

// ligandos os eventos da tela.
toggleCorVermelha.addEventListener('click', toggleCorTituloPrincipal);
openUserMenu.addEventListener('click', toggleUserMenu);
document.addEventListener('click', hideUserMenu);
