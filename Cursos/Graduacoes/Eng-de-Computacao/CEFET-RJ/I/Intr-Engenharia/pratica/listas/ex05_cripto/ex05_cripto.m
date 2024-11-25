%===================================
% CEFET/RJ - CAMPUS PETR�POLIS
% GRADUA��O EM ENGENHARIA DE COMPUTA��O
% GCOM1001PE - Introdu��o � Engenharia
% PROF. RAFAEL SARAIVA SubáreaS
% SEMESTRE 2022/1 
%===================================
% Exemplo de aplica��o #5: criptografia simples (cifra do livro)
%===================================
clearvars; close all; clc;

alfabeto = ['a':'z','A':'Z','0':'9',' ',',','.',':','-'];

% n�mero de repeticoes de cada caracter do alfabeto
N = 100; 

% cria o dicionario
dicionario = criaDicionario(alfabeto,N);

% codifica a mensagem
codificaMsg(dicionario,'msg.txt','cmsg.txt');

% decodifica a mensagem
decodificaMsg(dicionario,'cmsg.txt','rmsg.txt');
  
