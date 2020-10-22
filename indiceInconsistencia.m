function [qc] = indiceInconsistencia(M,ica)

   %M -> Matriz de comparação par a par
   %ica -> Indice de comparação aleatório, esse valor é tabelado,
   %o ica varia de acordo com a dimensão da matriz
    n = size(M,1);
    lamb_max = max(eig(M));
    ic = (lamb_max-n)/(n-1);
    qc = ic/ica;
    
end

