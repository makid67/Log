function [dicionario]=criaDicionario(alfabeto,N)
%===================================
% CEFET/RJ - CAMPUS PETR�POLIS
% GRADUA��O EM ENGENHARIA DE COMPUTA��O
% GCOM1001PE - Introdu��o � Engenharia
% PROF. RAFAEL SARAIVA SubáreaS
% SEMESTRE 2022/1 
%===================================
% Exemplo de aplica��o #4: criptografia simples (cifra do livro)
%===================================
% fun��o criaDicionario
% par�metros de entrada
%   alfabeto - conjunto de caracteres alfanum�ricos
%   N - n�mero de repeticoes de cada caracter
% par�metros de sa�da
%   dicionario - o dicionario de codificacao
%===================================
dicionario='';
n = length(alfabeto);
for i=1:n % repete cada caracter N vezes
  dicionario = cat(2,dicionario,repmat(char(alfabeto(i)),1,N));
end;
% randomiza os indices
indices = randperm(n*N);
% novo dicionario, com os caracteres "embaralhados"
dicionario = dicionario(indices);  
