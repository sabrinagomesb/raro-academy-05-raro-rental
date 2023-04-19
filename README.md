- [Admin Locadora RaroRental](#admin-locadora-rarorental)
  - [Objetivos](#objetivos)
    - [Atividade extra](#atividade-extra)
  - [Considerações importantes](#considerações-importantes)
    - [Formato de entrega](#formato-de-entrega)
    - [Resoluções dos problemas](#resoluções-dos-problemas)
      - [Gems](#gems)
      - [Design](#design)
      - [Validações](#validações)
      - [Relógio - Atividade Extra](#relógio---atividade-extra)
    - [Desafios e dificuldades](#desafios-e-dificuldades)
  - [Instalação](#instalação)
    - [Adiciona uma dependência do tailwind no frontend](#adiciona-uma-dependência-do-tailwind-no-frontend)

# Admin Locadora RaroRental

Projeto iniciado durante a semana 5 da turma de Ruby on Rails - Raro Academy pelo professor Paulo Fernandes e continuado como exercício da semana citada, que teve "Introdução ao Rails" como tema.

## Objetivos

Tendo como base o enunciado do exercício, os objetos são:

- [x] Retornar as mensagem de erro da partial `app/views/clientes/_form.html.erb`;
- [x] Garantir que todos os CRUDS tenham ações de `index`, `show`, `create`, `update` e `delete`;
- [x] Implementar design de todas as telas para que seja utilizável pelo usuário;
- [x] Alterar os alugueis para que eles permitam o cadastro dos seguintes campos:
  - data de inicio;
  - data fim;
  - valor a ser pago.
- [x] Ao clicar no avatar do usuário logado, o menu de contexto deve apresentar um link para editar os dados **do usuário logado**;
- [x] Implementar edição de todo o formulário do usuário logado com os campos:
  - nome;
  - email;
  - senha;
  - confirmação de senha;
  - foto (url para uma foto).
- [ ] Implementar gestão de usuário com os seguintes requisitos:
  - CRUD de cadastro de usuários;
  - Validação de usuário credenciado e autenticado para acessar o sistema de administraão.
- [ ] Implementar campo de busca que permita o usuário operar em pelo menos um campo das entidades em todas as telas de listagem.

### Atividade extra

Como atividade extra foram solicitadas as seguintes correções no relógio criado pelo professor durante as aulas:

- [x] Garantir que o timer seja iniciado somente se houver um tempo informado;
- [x] Impedir que o usuário consiga iniciar o timer mais de uma vez;
- [ ] Corrigir a ação de pausar para que o timer não seja reiniciado, mas retorne do ponto de onde parou;
- [x] Implementar a função do botão `limpar` do timer.

## Considerações importantes

### Formato de entrega

Conforme solicitado no enunciado do exercício, para cada funcionalidade foi criado um MR para a branch main com a descrição do que foi feito.
Seguindo a sugestão do professor, foram criadas issues para organização das tarefas e nomenclatura das branches.
Foi criado esse [template](./.gitlab/issue_templates/template.md) baseado no [artigo](https://www.pullrequest.com/blog/writing-a-great-pull-request-description/) compartilhado no enunciado para auxiliar na descrição do MR.
A listagem das issues criadas pode ser visualizada [aqui](./.gitlab/issues.md). E abaixo pode ser visto como o board de issues foi utilizado.

![board](./screenshots/../.gitlab/screenshots/Screenshot%20from%202023-04-18%2014-42-49.png)

### Resoluções dos problemas

#### Gems

Além da gem indicada para implementar os campos de busca, foi utiliazada também a _gem_ [Faker](https://github.com/faker-ruby/faker) para gerar dados _fake_ da entidade **Usuário**.

#### Design

#### Validações

Foram criadas validações em todas as entidades, exceto para Usuário, que teve suas validações criadas a partir da gem Devise. As mesmas foram implementadas nos _models_, usando como base a própria documentação do [Rails](https://guiarails.com.br/active_record_validations.html).

#### Relógio - Atividade Extra

Foi criada a rota `/relogio` para que ele saísse do `#index` da aplicação. Um ícone foi adicionado na `navbar`para que o mesmo possa ser acessado, conforme imagem abaixo.

Para os problemas do timer foram implementadas as seguintes soluções:

- Um alert é gerado na tela caso o usuário tente iniciar o timer com o _input_ vazio;
- O _button_ iniciar fica desabilitado quando recebe o primeiro clique e só volta a ficar habilitado quando o timer zera.

### Desafios e dificuldades

- Na implementação dos campos da entidade **Aluguel** houve dificuldades para manipular os dados do tipo _Date_ e _Float_, pois não foi possível definir nos seus respectivos _inputs_ o formato de data `DD/MM/YYYY` e o formato de moeda `BRL`. Para garantir o formato correto no _input_ de `valor_pago` foi tentado implementar uma validação com regex (`validates :valor_pago, format: { with: /\A\d+(\.\d{0,2})?\z/ }`), mas não houve sucesso. Para amenizar esse _gap_ foram criados `helpers` que mostram as datas e os valores nos formatos desejados nas _views_. E no _input_ de `valor_pago` foi criado um placeholder indicando o formato que deve ser preenchido.

<p align="left">
 <img src="./.gitlab/screenshots/view.aluguels.png" alt="preview exerc" width="40%">
 <img src="./.gitlab/screenshots/create.aluguel.png" alt="preview exerc" width="40%">
</p>

- No requisito **Formato de Entrega** foi encontrado o seguinte problema: para criar uma nova _branch_ através das _issues_, o botão _create branch_ não estava disponível e pesquisando encontrei esse [link](https://stackoverflow.com/questions/73074590/gitlab-option-to-create-branch-from-the-issue-is-missing) que aponta ser necessário remover a relação com o _fork_.

## Instalação

Antes de iniciar a aplicação, recomenda-se a execução da seguinte sequência de comandos:

```bash
bundle install
yarn install
rails db:create
rails db:migrate
rails db:seed
```

Para iniciar o servidor, recomenda-se a utilização do comando `./bin/dev`, pois ele garante os assets serão todos devidamente processados.

### Adiciona uma dependência do tailwind no frontend

```bash
yarn add @tailwindcss/forms
```
