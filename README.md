# ead_php_alura_solid

> Projeto referente a [este](https://cursos.alura.com.br/course/solid-php-principios-orientacao-a-objetos) curso.

1. Crie o ambiente
```sh
docker-compose up -d
```
> Caso queira, ao final da configuração, pare o Docker com ``docker-compose down``

2. Baixe as dependências do composer
```sh
docker-compose exec app composer install
```

> Para criar autoload sem instalar as dependências ``docker-compose exec app composer du``

## Execução

- Caso recém tenha feito a **configuração inicial** e o ambiente continue rodando, tudo certo. Pode acessar ``localhost:8989/arquivo-script.php``
- Do contrário, suba o ambiente novamente:
```sh
docker-compose up
```
> Pare com <kbd>Ctrl</kbd><kbd>C</kbd>

> Caso modifique Dockerfile, rebuilde com ``docker-compose up --build``

> Para acessar o container use ``docker-compose exec app bash`` ou execute os scripts diretamente pelo Docker ``docker-compose exec app php public/arquivo-script.php``

## Anotações

- **Coesão** em uma classe é quando ela faz somente o que faz sentido (responsabilidade correta)
- **Encapsulamento**, pilar da OO, esconde (priva) implementação mas disponibiliza uma chamada aberta (publica)
- **Acoplamento** ocorre quando uma classe conhece/depende de outra. Se uma dessas dependências mudar pode afetar a classe que as conhece.
    > Dependa de abstrações e não de implementações

---

- **Single Responsability Principle** (SRP): uma classe deve ter somente um motivo para mudar (pois só possui uma responsabilidade)
