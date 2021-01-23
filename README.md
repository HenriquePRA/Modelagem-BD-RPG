# Modelagem BD-RPG :books:


<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary>Conteúdo</summary>
  <ul>
    <li>
      <a href="#Sobre">Sobre</a>
      <ul>
        <li><a href="#Minimundo">Minimundo</a></li>
        <li><a href="#ModeloER">Modelo Entidade Relacionamento</a></li>
        <li><a href="#ModeloLogico">Modelo Lógico</a></li>
        <li><a href="#DicionarioDados">Dicionário de Dados</a></li>
        <li><a href="#ModeloFisico">Modelo Físico</a></li>
        <li><a href="#Ferramentas">Ferramentas Utilizadas</a></li>
      </ul>
    </li>
    <li>
      <a href="#Requisitos">Requisitos</a>
      <ul>
        <li><a href="#ReqProj">Requisitos do Projeto</a></li>
        <li><a href="#ReqER">Requisitos do Modelo Conceitual</a></li>
        <li><a href="#ReqSQL">Requisitos do Modelo Físico</a></li>
      </ul>
    </li>
    <li><a href="#Status">Status</a></li>
    <li><a href="#instalação">Instalação e Testes</a></li>
  </ul>
</details>

<a name="Sobre"></a>
## Sobre :information_source:
Feito em 2019 como projeto final da disciplina de Banco de Dados 1 esse projeto foi modelado de forma a englobar toda organização
interna de um jogo estilo RPG, como por exemplo relações entre, classes, criaturas e etc.

Esse projeto engloba a modelagem de um banco de dados desde a idealização de como seria o minimundo em que será inserido passando 
pelos modelos conceitual, lógico até chegar ao físico.

<a name="Minimundo"></a>
* ### Minimundo (Fragmento)
  Representando o banco de dados de um jogo de rpg, nesse jogo é determinado que os jogadores podem interagir, fazer missões,
  obter conquistas, chefiar e fazer parte de uma guilda que pode possuir ou não alinhamento...

<a name="ModeloER"></a>
* ### Modelo Entidade-Relacionamento
  <img src="https://raw.githubusercontent.com/HenriquePRA/Modelagem-BD-RPG/screenshots/screenshots/conceitual.JPG" height="1080">

<a name="ModeloLogico"></a>
* ### Modelo Lógico
  <img src="https://raw.githubusercontent.com/HenriquePRA/Modelagem-BD-RPG/screenshots/screenshots/logico.jpg">
     
<a name="DicionarioDados"></a>
* ### Dicionário de Dados (Fragmento)
  <img src="https://raw.githubusercontent.com/HenriquePRA/Modelagem-BD-RPG/screenshots/screenshots/dicionario.JPG">
  
<a name="ModeloFisico"></a>
* ### Modelo Físico (Fragmento)
  <img src="https://raw.githubusercontent.com/HenriquePRA/Modelagem-BD-RPG/screenshots/screenshots/fisico.JPG">
  
<a name="Ferramentas"></a>
* ### Ferramentas Utilizadas
  * BrModelo (Conceitual)
  * MySql Workbench (Lógico)
  * MySql (Físico)

<a name="Requisitos"></a>
## Requisitos :clipboard:
Por se tratar de um projeto final de disciplina, este projeto possúi vários requisitos técnicos em suas diversas etapas de modelagem 
especialmente quanto ao script SQL em seu modelo físico, sendo eles:

<ul>
  <li>
    <a name="ReqProj"><b>Requisitos do Projeto</b></a>
    <ul>
      <br>
      <li>
        <b>Introdução:</b> descrição da finalidade do banco de dados. A introdução deverá conter as
        informações da realidade a ser modelada (minimundo) com a descrição detalhada das regras
        de negócio e a definição do escopo do projeto.
      </li>
      <br>
      <li>
        <b>Esquema Conceitual:</b> apresentar o diagrama E-R contendo as cardinalidades máxima e
        mínima de cada relacionamento. Utilizar a notação de Peter Chen com o brModelo.
      </li>
      <br>
      <li>
        <b>Esquema lógico:</b> apresentar o diagrama relacional normalizado contendo as cardinalidades
        máxima e mínima de cada relacionamento. Utilizar a notação crow’s foot (IE) com o MySQL
        Workbench.
      </li>
      <br>
      <li>
        <b>Dicionário de Dados:</b> descrição tabelas e seus atributos de forma a detalhar seu tipo, descrição, 
        se pode receber valores nulos, o domínio de origem (em caso de chave estrangeira) e se o atributo é chave
        estrangeira our primária.
      </li>
      <br>
      <li>
        <b>Script de Criaçao:</b> Um sript separado para criação das tabelas do projeto escrito utilizando a linguagem
        de consulta estruturada SQL.
      </li>
      <br>
      <li>
        <b>Script de Povoamento:</b> Um sript separado para o povoamento das tabelas do projeto escrito utilizando a linguagem
        de consulta estruturada SQL, deve possuir uma quantidade mínima de dados necessários para o uso do script de consultas.
      </li>
      <br>
    </ul>
  </li>
  <li>
    <a name="ReqER"><b>O Modelo Conceitual deve possuir: </b></a>
    <br><br>
    <ul>
      <li>Entidade fraca com relacionamento identificador</li>
      <li>Entidade associativa (agregação) </li>
      <li>Estrutura de especialização com uma tabela para cada entidade</li>
      <li>Relacionamento N:N </li>
      <li>Relacionamento 1:1</li>
      <li>Relacionamento com atributos</li>
      <li>Relacionamento ternário</li>
      <li>Auto-Relacionamento</li>
      <li>Atributo Multivalorado</li>
      <li>Atributo Composto</li>
    </ul>
    <br>
  </li>
  <li>
    <a name="ReqSQL"><b>Requisitos do modelo Físico (Criação, Inserção e Atualização)</b></a>
    <br><br>
    <ul>
      <li>Constraint Check (mínimo de 3, diferentes)</li>
      <li>Constraint Unique</li>
      <li>Constraint Foreign key</li>
      <li>Constraint Default</li>
      <li>Inserir pelo menos 5 linhas em cada tabela</li>
      <li>Atualização de um campo</li>
      <li>Atualização de múltiplos campos</li>
      <li>Exclusão de dados com condição em pelo menos duas tabelas</li>
    </ul>
  </li>
  <br>
  <li>
    <a>
      <b>Requisitos do modelo Físico (Consultas):</b> Consultas de dados com as respostas,
      cada uma com um enunciado que envolva pelo menos uma das seguintes cláusulas
    </a>
    <br><br>
    <ul>
      <li>IN</li>
      <li>NOT IN </li>
      <li>BETWEEN</li>
      <li>NOT BETWEEN</li>
      <li>IS NULL</li>
      <li>IS NOT NULL</li>
      <li>LIKE</li>
      <li>NOT LIKE </li>
      <li>ORDER BY</li>
      <li>COUNT</li>
      <li>SUM</li>
      <li>AVG</li>
      <li>MAX</li>
      <li>MIN</li>
      <li>GROUP BY</li>
      <li>HAVING</li>
      <li>INNER JOIN</li>
      <li>LEFT JOIN</li>
      <li>RIGHT JOIN</li>
      <li>SUBCONSULTA</li>      
    </ul>
  </li>
</ul>


<a name="Status"></a>
## Status do Projeto :construction_worker:
  Finalizado :tada:
  
<a name="instalação"></a>
## Instalação e Testes :computer:

<b>Modelo Conceitual:</b> Para ver ou modificar o modelo conceitual deve ser utilizado a ferramenta brModelo,
o arquivo com o modelo Conceitual é o Conceitual.brM3

<b>Esquema Lógico:</b> Para ver ou modificar o esquema lógico deve ser utilizado a ferramenta MySQL Workbench,
o arquivo com o esquema lógico é o Logico.mwb

<b>Dicionário de Dados:</b> Apesar de ter utilizado o LibreOffice para escrevelo para ver ou modificar o mesmo
qualquer editor com suporte a documentos .docx pode ser utilizado, o arquivo com o dicionário é o Dicionário de Dados.docx
      
<b>Modelo Físico:</b> A maioria dos banco de dados com suporte a SQL deve ser capaz de executar os scripts sem
problema como por exemplo o MySQL ou PostgreSQL. todavia enfatizo que esses scripts foram testados apenas no MySQL.

Os scripts devem ser executados na ordem:
1. Criacao.sql
2. Povoamento.sql

E as consultas em Consultas.sql devem ser feitas uma por uma.




