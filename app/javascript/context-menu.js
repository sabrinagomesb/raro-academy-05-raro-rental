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

// // selecionando os objetos da tela para adicionar os eventos de click.
const openUserMenu = document.querySelector('#open-user-menu');

// // ligandos os eventos da tela.
openUserMenu.addEventListener('click', toggleUserMenu);


