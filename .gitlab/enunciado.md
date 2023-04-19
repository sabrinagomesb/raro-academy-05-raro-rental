No exercício desta semana, vamos continuar o desenvolvimento do nosso portal de alugueis de carros, incluindo novas funções que não foram implementadas durante nossas aulas. Para isso, você deverá clonar o repositório do projeto desenvolvido em aula, e executar as alterações necessárias para a implementação dos requisitos, conforme descritos abaixo.

# requisitos:

## Gerais
  - durante a aula, eu removi inadvertidamente as mensagens de erro da partial `app/views/clientes/_form.html.erb`. Peço que retome as mensagens de erro (vide `app/views/veiculos/_form.html.erb`, linhas ~2-12)
  - garanta que todos os CRUDs tenham ações de `index`, `show`, `create`, `update` e `delete`.
  - todas as telas precisam ter o design ajustado. Podem usar tailwind ou outras libs livremente. Importante: o design aplicado não será avaliado sob um viés de UX. Não vamos avaliar, por exemplo, se sua tela segue uma identidade visual coerente. Desde que exista um design aplicado, que seja utilizavel pelo usuário, considera-se compreendido eset requisito. (Isso não quer dizer que o capricho no desenvolvimento não será avaliado...)
  - Sugestões de layout
    - para a tela de exibição dos recursos (`show.html.erb`), sugiro a utilização dos layouts apresentados [aqui](https://tailwindui.com/components/application-ui/data-display/description-lists). A escolha é sua.
    ![image](/uploads/6119516bdd55719816710230f49b4745/image.png)
    - para a tela de listagem de itens, sugiro a utilização destes [layouts](https://tailwindui.com/components/application-ui/lists/tables)
    ![image](/uploads/5d12412257195640b027de1540e374eb/image.png)
    - para as mensagens de sucesso e erro do sistema, estes [layouts](https://tailwindui.com/components/application-ui/feedback/alerts)
    ![image](/uploads/c0ace70c46015c053d172d6cdf8b49d6/image.png)

## Alugueis

Alterar os alugueis, para que eles permitam o cadastro dos seguintes campos:
- data de inicio
- data fim
- valor a ser pago

## Gestão da conta do usuário logado
- ao clicar no avatar do usuário logado, o menu de contexto deve apresentar um link para editar os dados **do usuário logado**. Nesta tela, pode-se editar todo o formulário de dados do meu usuário, com os campos:
    - nome
    - email
    - senha
    - confirmacao de senha
    - foto (url para uma foto)
![image](/uploads/a14756c16426c278b745b69c39a115ab/image.png)

## Gestão de usuários

Dado que este sistema é utilizado para a administração da nossa empresa de alugueis de carrros, não se deve permitir que pessoas externas criem contas. Somente usuários já credenciados e autenticados têm esta premissa. Para cumprir este requisito, você deverá criar o CRUD de cadastro de usuários. Os campos a serem cadastrados serão os mesmos citados no requisito "gestão da conta do usuário logado".

## Filtro de conteúdos

Existe uma gem chamada [ransack](https://activerecord-hackery.github.io/ransack/), util para filtros, ordenações e paginações de listas. Você deverá integrar esta gem na aplicação, garantindo que **todas as telas de listagem** permitam ao usuário operar buscas por ao menos um campo das entidades. Pense em utilizar os campos que sejam mais coerentes para uma busca do seu sistema. Não precisa se preocupar com buscas parciais de texto. O usuário deverá digitar o nome completo do cliente, para encontra-lo.

## Relógios:

O professor acabou deixando alguns bugs no relógio. Você deverá corrigir os seguintes:
  - o contador regressivo pode ser inciado mesmo se o usuário não passar um valor em minutos. Garanta que ele somente seja iniciado se houver um tempo informado.
  - se o usuário iniciar o contador e pressionar o botão "iniciar" diversas vezes, o contador fica maluco! Impeça que o usuário possa iniciar o timer diversas vezes, se este já estiver iniciado.
  - é possível pausar o timer, mas ao reinicia-lo, o contador volta ao valor inicial. Corrija a ação, para que ele retome do ponto de onde parou.
  - o campo de limpar timer não foi implementado. faça sua função correspondente.


# Como deverá ser entregue:

- Até a data de entrega do exercício, você deverá criar um repositório em sua conta privada do gitlab da raro academy, e publicar todo seu conteúdo na branch main. Não se esqueça de dar a permissão de "developer" aos professores e monitores desta turma, caso contrário, eles não terão acesso à sua entrega.
- Para cada funcionalidade, você deverá fazer um MR para sua branch main.
  - Nos MRs, você deverá descrever o que foi feito. Existem [artigos](https://www.pullrequest.com/blog/writing-a-great-pull-request-description/) que te instruem sobre uma boa descrição de seu MR.
  - Não se preocupe com aprovações de outros alunos para executar o merge do seu MR. Queremos mesmo trabalhar com um fluxo organizado de entregas.
  - Sugiro a criação de issues, para te ajudar na organização das suas tarefas e nomenclatura das branches.
- Seu repositório deve contar com todos os arquivos necessários para o devido funcionamento do seu projeto. Ainda no repositório, adicione um arquivo README.md, descrevendo o exercício e premissas adotadas por você. Estas repostas serão levadas em consideração na avaliação da sua entrega, além de ajudar muito os professores! 
- Os professores deverão avaliar sua entrega até o último commit feito até a data limite. Caso sua entrega possua commits após a data limite, nós avaliaremos a entrega considerando as penalidades de atraso.
- Para avaliar sua entrega, utilizarei o ambiente de desenvolvimento do rails. Garanta que tudo esteja funcionando ao executar o comando `./bin/dev`. Qualquer pré-condição para o funcionamento deve ser registrada no readme do projeto.
