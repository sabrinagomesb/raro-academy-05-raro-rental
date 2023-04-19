/**
 * funcao controladora do relogio declarado no arquivo app/views/home/index.html.erb.
 */

function relogioController() {
  // capturando o elemento que representa meu relogio.
  const relogio = document.querySelector('.relogio');

  // declarando um intervalo de um segundo. A cada segundo, a operação da função do 1o parametro será executda.
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

  // captura de todos os elementos de tela que vamos interagir neste módulo.
  const inputContador = document.querySelector('#contador-regressivo');
  const iniciarContagem = document.querySelector('#iniciar-contagem');
  const pausarContagem = document.querySelector('#pausar-contagem');
  const limparContagem = document.querySelector('#limpar-contagem');
  const mostrador = document.querySelector('#mostrador-contrador-regressivo');



  // esta variável determina o ritmo de descréscimo do contador. Repare que além de definir o ritmo
  // de execução dos ciclos de setInterval, ela também decrementa o somatório total de milissegundos,
  // que depois de convertido em texto no formato HH:MM:SS:ms, é exibido no mostrador.
  const ritmo = 50;

  // adiciona evento de click no botão que inicia a contagem.
  iniciarContagem.addEventListener('click', function() {

    // estou acessando aqui o valor escrito pelo usuário no input. Este método acessa este dado,
    // porém devolve o valor em formato string. Como pretendemos utiliza-lo com operações matemáticas,
    // faço uma conversão do valor para float.
    // DICA.: estou usando float pois quero permitir ao meu usuário que coloque frações de minutos para
    // serem contadas.
    const minutos = parseFloat(inputContador.value);
    const segundos = minutos * 60;
    let milissegundos = segundos * 1000;

    // este if impede o usuário de cadastrar um contador regressivo começando de um número negativo
    // não deveria ter mais feedback para nosso usuário?
    if (milissegundos < 0) {
      return;
    }

    // este setInterval é quem faz o relógio rodar.
    // Repare que aquela variável que anotei lá no início deste controller está armazenando
    // aqui o "ponteiro", que nos ajudará a parar o relógio quando for preciso.
    intervalId = setInterval(() => {

      // quando o relógio alcançar o minuto zero, o comando abaixo interrompe
      // a regressão do tempo.
      if (milissegundos <= 0) {
        clearInterval(intervalId);
      }

      // aqui, colocamos o valor do tempo restante na tela. O método "converterParaTempo"
      // está traduzindo o número de milissegundos restante em algum humanamente legível
      mostrador.innerHTML = converterParaTempo(milissegundos);
      milissegundos -= ritmo;
    }, ritmo);
  });

  // registro do evento que pausa a contagem.
  pausarContagem.addEventListener('click', (ev) => {
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

relogioController();
contadorRegressivoController();