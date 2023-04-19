/**
 * funcao controladora do relogio declarado no arquivo app/views/home/index.html.erb.
 */
function relogioController() {
  // capturando o elemento que representa meu relogio.
  const relogio = document.querySelector('.relogio');

  // declarando um intervalo de um segundo. A cada segundo, a operação da função do 1o parâmetro será executada.
  setInterval(() => {
    // estou capturando as horas do meu computador, e traduzindo para uma string em formato HH:MM:SS
    const horas = new Date().toLocaleTimeString('pt-Br');
    // estou atribuindo as horas ao elemento do relogio.
    relogio.innerHTML = horas;
  }, 1000);
}


function contadorRegressivoController() {
  // variável que deverá armazenar o id do intervalo iniciado para o contador. Como eu tenho requisitos que precisam
  // pausar este contador, é necessário que eu tenha meios de acessar novamente este objeto.
  let intervalId;

  // variável que determina se o contador está rodando ou não.
  let rodando = false;

  // captura de todos os elementos de tela que vamos interagir neste módulo.
  const inputContador = document.querySelector('#contador-regressivo');
  const iniciarContagem = document.querySelector('#iniciar-contagem');
  const pausarContagem = document.querySelector('#pausar-contagem');
  const stopContagem = document.querySelector('#stop-contagem');
  const limparContagem = document.querySelector('#limpar-contagem');
  const mostrador = document.querySelector('#mostrador-contrador-regressivo');

  // esta variável determina o ritmo de descréscimo do contador. Repare que além de definir o ritmo
  // de execução dos ciclos de setInterval, ela também decrementa o somatório total de milissegundos,
  // que depois de convertido em texto no formato HH:MM:SS:ms, é exibido no mostrador.
  const ritmo = 50;

  const contagemRegressiva = () => {
    // estou acessando aqui o valor escrito pelo usuário no input. Este método acessa este dado,
    // porém devolve o valor em formato string. Como pretendemos utiliza-lo com operações matemáticas,
    // faço uma conversão do valor para float.
    // DICA.: estou usando float pois quero permitir ao meu usuário que coloque frações de minutos para
    // serem contadas.

    if (inputContador.value < 1) {
      alert("Digite um valor válido em minutos")
      return;
    }

    iniciarContagem.disabled = true;

    const minutos = parseFloat(inputContador.value);
    const segundos = minutos * 60;
    let milissegundos = segundos * 1000;

    // este if impede o usuário de cadastrar um contador regressivo começando de um número negativo
    // não deveria ter mais feedback para nosso usuário?
    if (milissegundos < 0) {
      alert('Não é possível iniciar um contador regressivo com um valor negativo');
      return;
    }

    rodaContador(milissegundos)
  };

  const rodaContador = (milissegundos) => {
    rodando = true;
    pausarContagem.innerHTML = 'Pausar';

    // este setInterval é quem faz o relógio rodar.
    // Repare que aquela variável que anotei lá no início deste controller está armazenando
    // aqui o "ponteiro", que nos ajudará a parar o relógio quando for preciso.
    intervalId = setInterval(() => {

      // quando o relógio alcançar o minuto zero, o comando abaixo interrompe
      // a regressão do tempo.
      if (milissegundos <= 0) zerarContador()

      // aqui, colocamos o valor do tempo restante na tela. O método "converterParaTempo"
      // está traduzindo o número de milissegundos restante em algum humanamente legível
      mostrador.innerHTML = converterParaTempo(milissegundos);
      milissegundos -= ritmo;
    }, ritmo);
  }

  const zerarContador = () => {
    alert('Contador zerado!');
    rodando = false;
    iniciarContagem.disabled = false;
    stopContagem.disabled = false;
    clearInterval(intervalId);
    inputContador.value = '';
    mostrador.innerHTML = '00:00:00:000';
  }

  limparContagem.addEventListener('click', zerarContador);

  // adiciona evento de click no botão que inicia a contagem.
  iniciarContagem.addEventListener('click', contagemRegressiva);

  // registro do evento que da stop a contagem.
  pausarContagem.addEventListener('click', (ev) => {
    if (rodando) {
      clearInterval(intervalId);
      rodando = false;
      pausarContagem.innerHTML = 'Continuar';
      milissegundos = converterParaMilissegundos(mostrador.innerHTML)
      return;
    }

    rodaContador(milissegundos)
  });

  // registro do evento que da stop a contagem.
  stopContagem.addEventListener('click', (ev) => {
    stopContagem.disabled = true;
    clearInterval(intervalId);
  });
}

/**
 * funcao utilitária, que calcula o tempo no formato HH:MM:SS:ms baseado em uma quantidade de milissegundos
 * @param {*} ms
 * @returns
 */
function converterParaTempo(ms) {
  const segundos = Math.floor((ms / 1000) % 60);
  const minutos = Math.floor((ms / (1000 * 60)) % 60);
  const horas = Math.floor((ms / (1000 * 60 * 60)) % 24);
  const milissegundos = ms % 1000;

  return `${horas.toString().padStart(2, '0')}:${minutos.toString().padStart(2, '0')}:${segundos.toString().padStart(2, '0')}:${milissegundos.toString().padStart(3, '0')}`;
}

function converterParaMilissegundos(mostrador) {
  const [horas, minutos, segundos, milissegundos] = mostrador.split(':');
  return (parseInt(horas, 10) * 60 * 60 * 1000) + (parseInt(minutos, 10) * 60 * 1000) + (parseInt(segundos, 10) * 1000) + parseInt(milissegundos, 10);
}

relogioController();
contadorRegressivoController();