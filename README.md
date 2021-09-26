# ead_php_alura_solid

> Projeto referente a [este](https://cursos.alura.com.br/course/solid-php-principios-orientacao-a-objetos) curso.

1. Crie o ambiente
```sh
docker-compose up -d
```
> Caso queira, ao final da configuração, pare o Docker com ``docker-compose down``

2. Crie o autoloader
```sh
docker-compose exec app composer du
```

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
    > Just because you can, doesn't mean you should
- **Open/Closed Principle** (OCP): entidades de software, sejam classes, módulos, funções, qualquer coisa, conjunto de classes, devem ser abertas para expansão, porém fechadas para modificação
    > Open chest surgery is not needed when putting a coat 
- **Liskov Substitution Principle** (LSP): classes filhas nunca devem infringir definições de tipo ou de funcionalidade da classe pai
    > Seja q(x) uma propriedade que se pode provar do objeto x do tipo T. Então q(y) também é possível provar para o objeto y do tipo S, sendo S um subtipo de T.

    > If itlooks like a duck, quacks like a duce, but needs batteries, you probably have the wrong abstraction
- **Interface Segregation Principle** (ISP): uma classe não pode ser forçada a depender de métodos que ela não utilizará
- **Dependency Inversion Principle** (DIP): 1) módulos de alto nível não devem depender de módulos de baixo nível, e que ambos devem depender de abstrações e 2) abstrações não devem depender de implementações, implementações devem depender de abstrações
    > Would you solder a lamp directly to the electrical wiring in a wall?
