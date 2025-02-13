%===================================
% CEFET/RJ - CAMPUS PETR�POLIS
% GRADUA��O EM ENGENHARIA DE COMPUTA��O
% GCOM1001PE - Introdu��o � Engenharia
% PROF. RAFAEL SARAIVA SubáreaS
% SEMESTRE 2022/1 
%===================================
% Exemplo de aplica��o #4: integra��o num�rica
%===================================

clearvars; % limpa a mem�ria
clc; % limpa a tela
close all; % fecha todas as janelas gr�ficas que por acaso estejam abertas

% define function handler para a fun��o escolhida
f=@(x)(2*sin(3*x).*(x-1).^2);

% extremo inferior do intervalo de integra��o
a=0;

% extremo superior do intervalo de integra��o
b=2;

% n�mero de subintervalos
n=30;

% largura dos ret�ngulos
dx=(b-a)/n;

% coordenada x do v�rtice esquerdo de cada ret�ngulo
xl=a:dx:b-dx;

% somat�rio das �reas dos n ret�ngulos
A=sum(abs(f(xl))*dx);

% �rea da regi�o entre a curva e o eixo x usando a fun��o built-in quad
I=quad(@(x)(abs(f(x))),a,b);

for i=1:n
  rectangle('Position',[xl(i) 0 dx f(xl(i))],'FaceColor','r','EdgeColor','g');
  hold on;
end;  

% plota o gr�fico da fun��o f entre a e b
s=a:0.01:b;
plot(s,f(s),'LineWidth',2,'Color','k');
grid on;
xlim([a b]);
set(gca,'FontSize',18);
pbaspect([1 1 1]);
title(strcat(num2str(A),'(',num2str(I),')'));
  
  






