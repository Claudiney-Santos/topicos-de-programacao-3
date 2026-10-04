# Tópicos em Programação 3
Projeto desenvolvido para a disciplina de Tópicos em Programação 3, ministrada pelo professor Diego Antunes na Universidade Tecnológica Federal do Paraná.
O objetivo deste projeto é estudar a linguagem de programação [GNU APL](https://www.gnu.org/software/apl/), que é uma linguagem de programação baseada em notação matemática e é conhecida por sua capacidade de manipular arrays e matrizes de forma eficiente.

## Como rodar o projeto
Instale o GNU APL em seu sistema operacional. Você pode encontrar instruções de instalação no site oficial do GNU APL: [https://www.gnu.org/software/apl/](https://www.gnu.org/software/apl/)

Caso use o package manager `nix`, você pode fazer uso do [flake para GNU APL](https://github.com/Claudiney-Santos/gnuapl-flake), criado por mim para essa disciplina.

Com o GNU APL instalado, você pode rodar o arquivo `./src/cat.apl` como se fosse um script, usando o seguinte comando no terminal:
```bash
./src/cat.apl ARQUIVO
```

Assim será lido o arquivo especificado e exibido seu conteúdo no terminal.

Caso tenha problemas para rodar o script, mesmo com o GNU APL instalado corretamente, leia a seção de [Make the script file executable](https://www.gnu.org/software/apl/apl.html#Make-the-script-file-executable) do manual do GNU APL.
