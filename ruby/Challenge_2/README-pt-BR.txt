2# Desafio

Complete a função no arquivo challenge.rb

A função converte uma string e converte em uma tag html.
Os primeiros caracteres serão hashtags, o numero do <hx> será de acordo com a quantidade de hashtags no começo da string.
No máximo só podem haver 6 #, caso tenha mais, deve retornar a string "Wrong input". Primeiro
Se houver qualquer outro caracter além de hashtag até o primeiro espaço, deve retornar a string "Wrong input". Segundo
O texto da tag, deve ser separado por um espaço após as hashtags, tudo após este espaço será considerado texto dentro da tag. Terceiro
Não deve haver espaços entre o começo e o final do texto, remova-os se necessário. Ok
Se não houver texto após as hashtags, deve retornar uma string vazia. 
Se a função receber uma string vazia, deve retornar uma string vazia.

Exemplos:
Entrada => "### O mundo deslumbrante no qual estou a descobrir"
Saída Esperada => "<h3>O mundo deslumbrante no qual estou a descobrir</h3>"

Entrada => "####### O mundo deslumbrante no qual estou a descobrir"
Saída Esperada => "Wrong input"
