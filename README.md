# Sistema Emissão de Nota Fiscal

Esse sistema é utilizado pela turma do 4 módulo de Análise e Desenvolvimento de Sistemas do segundo semestre de 2017.


## Instruções:

### Rodando os testes

Para rodar os testes do model Customer podemos fazer:

```ruby
rails test tests/models/customer_test.rb
```

E para rodar os testes de todos os models podemos fazer:

```ruby
rails test tests/models
```

### Migration e alteração

Para gerar um migration de alteração de campo podemos fazer:

```ruby
rails g migration ChangeItemProductPrice
```

E no conteúdo da migration que está no diretório db/migrate do projeto, podemos fazer:

```ruby
class ChangeItemProductPrice < ActiveRecord::Migration[5.1]
  def change
    change_column :items, :product_price, :decimal, precision: 15, scale: 2
  end
end
```

Para que a alteração seja aplicada no banco de dados, devemos fazer:

```ruby
rails db:migrate
```

E para as migratrions refletirem na base de testes, fazer:

```ruby
rails db:migrate RAILS_ENV=test
```

