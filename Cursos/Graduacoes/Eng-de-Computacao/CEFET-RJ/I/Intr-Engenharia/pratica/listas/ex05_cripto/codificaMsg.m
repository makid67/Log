function codificaMsg(dicionario,inputFile,outputFile)
%===================================
% CEFET/RJ - CAMPUS PETR�POLIS
% GRADUA��O EM ENGENHARIA DE COMPUTA��O
% GCOM1001PE - Introdu��o � Engenharia
% PROF. RAFAEL SARAIVA SubáreaS
% SEMESTRE 2022/1 
%===================================
% Exemplo de aplica��o #4: criptografia simples (cifra do livro)
%===================================
% fun��o codificaMsg
% par�metros de entrada
%   dicionario - o dicionario criado com a funcao criaDicionario
%   inputFile - nome do arquivo com a mensagem a ser codificada
%   outputFile - nome do arquivo de sa�da para a mensgaem codificada
%===================================
% n�mero de d�gitos por caracter na codificacao
DIG = length(num2str(length(dicionario))); 
FORMAT = strcat('%0',num2str(DIG),'i');

fin = fopen(inputFile,'r');
if(fin>0)
  fout = fopen(outputFile,'w');
  if(fout>0) 
    while(~feof(fin))  
      % le a linha atual da mensagem
      msg = fgetl(fin);   
      cmsg = '';
      for i=1:length(msg)
        % encontra todas as ocorrencias do i-esimo caractere no dicionario
        indices = find(dicionario==msg(i));
        % randomiza as posicoes encontradas
        AUX = randperm(length(indices));
        % seleciona a 1a posicao para a codificacao
        cmsg = cat(2,cmsg,num2str(indices(AUX(1)),eval('FORMAT')));
      end;  
      % escreve linha codificada no arquivo de sa�da
      fdisp(fout,cmsg);  
    end;
  else
    return;      
  end;      
else
  return;
end;

fclose(fin);
fclose(fout);

