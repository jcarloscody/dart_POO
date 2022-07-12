# Herança Covariante
> covarint

Possibilita o desenvolvedor implementar uma função que originalmente recebe como argumento um objeto da classe X, porém com esta palavra chave permite receber objetos da classe Y, Z (...) que são filhos do objeto da classe X.

Aqui temos:
- Classe abstrata pai: 
  - Mamifero
  - Classes Filhas:
    - Humano (recebe no metodo um objeto fruta ou filha de fruta)
    - Macaco

- Classe Pai:
  - Fruta
  - Classes Filhas:
    - Banana