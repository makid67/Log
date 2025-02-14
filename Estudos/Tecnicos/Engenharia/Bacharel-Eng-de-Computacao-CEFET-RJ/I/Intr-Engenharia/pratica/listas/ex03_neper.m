%===================================
% CEFET/RJ - CAMPUS PETR�POLIS
% GRADUA��O EM ENGENHARIA DE COMPUTA��O
% GCOM1001PE - Introdu��o � Engenharia
% PROF. RAFAEL SARAIVA SubáreaS
% SEMESTRE 2022/1 
%===================================
% Exemplo de aplica��o #3: calculando uma aprox. p/a constante de Neper
%===================================
clearvars; clc; close all;

M0=input('Investimento inicial: R$ ');
disp('Per�odo de aplica��o: 1 ano');

% para obter uma aproxima��o para a constante de Neper, fa�a R=100%
% para avaliar a qualidade da aproxima��o, compare com valor de exp(1)
R=input('Rentabilidade anual(%): ')/100;

disp(strcat('Montante final: R$ ',num2str(M0*(1+R))));

disp(' '); N=2;
input('E se o banco remunerar a aplica��o semestralmente?');
disp(strcat('Per�odos de remunera��o em 1 ano:',num2str(N)));
disp(strcat('Rentabilidade por per�odo de remunera��o(%):',num2str(100*R/N)));
disp(strcat('Montante final: R$ ',num2str(M0*(1+R/N)^N,'%.2f')));

disp(' '); N=4;
input('E se o banco remunerar a aplica��o trimestralmente?');
disp(strcat('Per�odos de remunera��o em 1 ano:',num2str(N)));
disp(strcat('Rentabilidade por per�odo de remunera��o(%):',num2str(100*R/N)));
disp(strcat('Montante final: R$ ',num2str(M0*(1+R/N)^N,'%.2f')));

disp(' '); N=12;
input('E se o banco remunerar a aplica��o mensalmente?');
disp(strcat('Per�odos de remunera��o em 1 ano:',num2str(N)));
disp(strcat('Rentabilidade por per�odo de remunera��o(%):',num2str(100*R/N)));
disp(strcat('Montante final: R$ ',num2str(M0*(1+R/N)^N,'%.2f')));

disp(' '); N=365;
input('E se o banco remunerar a aplica��o diariamente?');
disp(strcat('Per�odos de remunera��o em 1 ano:',num2str(N)));
disp(strcat('Rentabilidade por per�odo de remunera��o(%):',num2str(100*R/N)));
disp(strcat('Montante final: R$ ',num2str(M0*(1+R/N)^N,'%.2f')));

disp(' '); N=365*24;
input('E se o banco remunerar a aplica��o de hora em hora?');
disp(strcat('Per�odos de remunera��o em 1 ano:',num2str(N)));
disp(strcat('Rentabilidade por per�odo de remunera��o(%):',num2str(100*R/N)));
disp(strcat('Montante final: R$ ',num2str(M0*(1+R/N)^N,'%.2f')));

disp(' '); N=365*24*60;
input('E se o banco remunerar a aplica��o minuto a minuto?');
disp(strcat('Per�odos de remunera��o em 1 ano:',num2str(N)));
disp(strcat('Rentabilidade por per�odo de remunera��o(%):',num2str(100*R/N)));
disp(strcat('Montante final: R$ ',num2str(M0*(1+R/N)^N,'%.2f')));

% plota o gr�fico
f=@(R,x)((1+R./x).^x);
x=1:500;
plot(x,f(R,x),'b');
hold on;
line([min(x) max(x)],[exp(R) exp(R)],'Color','r','LineStyle','--');
grid on;
xlim([min(x) max(x)]);
set(gca,'FontSize',18);
xlabel('N�mero de per�odos de remunera��o no intervalo considerado');
ylabel('Montante Final (expresso em m�ltiplos de M0)');
title(strcat('R(%)=',num2str(100*R)));
