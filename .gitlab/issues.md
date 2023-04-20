# Issues

- Ajustar edit e show de Aluguel.

- Realizar ajustes necessários para inicio de projeto ok

- Retornar as mensagens de erros das views de Cliente o

- Acrescentar aos alugueis os campos restantes:

  - data_inicio - View
  - data_fim - View
  - valor a ser pago - MVC

- Implementar para usuario logado a edição de seus dados:

  - Login #index
  - Área de navbar do usuário ativo com JS
  - Edição do usuario ativo

- Ajustar o design das telas, garantindo CRUD, de Clientes:
  - Listar clientes com tabela clientes#index
    - Informações
    - Link para edição
    - Botão para deletar
  - Edição de cliente
- Criação de novo cliente

- Ajustar o design das telas, garantindo CRUD, de Veiculos:

  - Listar veiculos com tabela veiculos#index
    - Informações
    - Link para edição
    - Botão para deletar
  - Edição de veiculo
  - Criação de novo veiculo

- Ajustar o design das telas, garantindo CRUD, de Alugueis:

  - Listar alugueis com tabela alugueis#index
    - Informações básicas
    - Link página individual do aluguel
  - Exibição de aluguel
    - Botão para edição
    - Botão para deletar
  - Edição de aluguel
  - Criação de novo aluguel

- Implementar campo de busca com a gem ransack

  - Garantir que todas as telas de listagem permitam buscas por pelo menos um campo das entidades

- Gestão de usuários ok

      - Criação de novo usuario
      - Delete do usuario ativo

  -Rails Controller
  Dado que este sistema é utilizado para a administração da nossa empresa de alugueis de carrros, não se deve permitir que pessoas externas criem contas. Somente usuários já credenciados e autenticados têm esta premissa. Para cumprir este requisito, você deverá criar o CRUD de cadastro de usuários. Os campos a serem cadastrados serão os mesmos citados no requisito "gestão da conta do usuário logado".

- Traduzir locale pt-BR
  UTILIZAR GEM I18N

- Realizar ajustes no contador

  - EXTRA 1: Garantir que o contador regressivo seja inicado apenas se algum valor for passado
  - EXTRA 2: Impedir que o contador regressivo seja pressionado diversas vezes
  - EXTRA 3: Corrigir o pause do contador regressivo para q ele retorne de onde parou (atualmente ele ta funcionando como stop, retornando o contador do inicio)
  - EXTRA 4: Implementar o campo de limpar o timer

- Gerar documentação - Foi encontrado um problema: para criar uma nova _branch_ através das _issues_, o botão _create branch_ não estava disponível e pesquisando achei esse [link](https://stackoverflow.com/questions/73074590/gitlab-option-to-create-branch-from-the-issue-is-missing) que aponta ser necessário remover a relação com o _fork_. - Realizar o logout funcionou utilizando um button, mas não com um link to, pesquisar porque
  Extra: Adicionar estado de lista vazia
  https://tailwindui.com/components/application-ui/feedback/empty-states
