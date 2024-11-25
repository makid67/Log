function decodificaMsg(dicionario,inputFile,outputFile)
%===================================
% CEFET/RJ - CAMPUS PETR�POLIS
% GRADUA��O EM ENGENHARIA DE COMPUTA��O
% GCOM1001PE - Introdu��o � Engenharia
% PROF. RAFAEL SARAIVA SubáreaS
% SEMESTRE 2022/1 
%===================================
% Exemplo de aplica��o #4: criptografia simples (cifra do livro)
%===================================
% fun��o decodificaMsg
% par�metros de entrada
%   dicionario - o dicionario criado com a funcao criaDicionario
%   inputFile - nome do arquivo com a mensagem a ser codificada
%   outputFile - nome do arquivo de sa�da para a mensagem codificada
%===================================
% n�mero de d�gitos por caracter na codificacao
DIG = length(num2str(length(dicionario))); 

fin = fopen(inputFile,'r');
if(fin>0)
  fout = fopen(outputFile,'w');
  if(fout>0)  
    while(~feof(fin))  
      % le a linha atual da mensagem codificada
      cmsg = fgetl(fin);   
      rmsg='';
      for i=1:DIG:length(cmsg)
        rmsg = cat(2,rmsg,dicionario(str2num(cmsg(i:i+DIG-1))));
      end;  
      % escreve linha decodificada no arquivo de sa�da
      fputs(fout,rmsg);  
      fputs(fout,newline);      
    end;  
  else
    disp(fout);
    return;      
  end;      
else
  disp(fin);
  return;
end;
  