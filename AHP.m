function AHP()
    %Limpa memória
    clear all;

    %Fecha figuras
    close all; 

    %Limpa console
    clc;
    
    disp('Matriz de comparação de pares, critério experiencia');

    %      Tom   Dick  Harry    
    experiencia = [ 1    1/4  4; ...   % Tom
                   4    1    9; ...   % Dick
                   1/4  1/9  1 ]      % Harry

    %Calcula vetor de prioridadess
    prio_expe=prioridades(experiencia)
    
    %Calacula o indice de inconsistencia
    [qc_expe, ic_expe] = indiceInconsistencia(experiencia,0.52)

    disp('Matriz de comparação de pares, critério educacao');

    %      Tom   Dick  Harry    
    educacao= [ 1    3  1/5; ...   % Tom
                1/3  1  1/7; ...   % Dick
                5    7  1 ]      % Harry

    %Calcula vetor de prioridadess
    prio_educ=prioridades(educacao)
    
    %Calacula o indice de inconsistencia
    [qc_educ, ic_educ] =  indiceInconsistencia(educacao,0.52)

    disp('Matriz de comparação de pares, critério carisma');

    %      Tom   Dick  Harry    
    carisma= [ 1    5   9; ...   % Tom
               1/5  1   4; ...   % Dick
               1/9  1/4 1 ]      % Harry

    %Calcula vetor de prioridadess
    prio_cari=prioridades(carisma)
    
    %Calacula o indice de inconsistencia
    [qc_cari, ic_cari] = indiceInconsistencia(carisma,0.52)

    disp('Matriz de comparação de pares, critério idade');

    %      Tom   Dick  Harry    
    idade= [ 1    1/3   5; ...   % Tom
             3    1     9; ...   % Dick
             1/5  1/9   1 ]      % Harry

    %Calcula vetor de prioridadess
    prio_idad=prioridades(idade)
    
    %Calacula o indice de inconsistencia
    [qc_cari, ic_cari] = indiceInconsistencia(idade,0.52)

    disp('Matriz de comparação de pares, critérios em relacao ao objetivo');

    %            Exp. Edu.  Cari.   Idade    
    criterios= [ 1    4     3       7; ...   %Exp.
                 1/4  1     1/3     3; ...   %Edu.
                 1/3  3     1       5; ...   %Cari.
                 1/7  1/3   1/5     1]       %Idade

    %Calcula vetor de prioridadess
    prio_crit_obje=prioridades(criterios)
    
    %Calacula o indice de inconsistencia
    [qc_crit, ic_crit] = indiceInconsistencia(criterios,0.89)
    
    %prioridades global
    %Matriz de prioridades composta pelos vetores de prioridadess
    %L1-prioridades relacionada ao primeiro critério
    %L2-prioridades relacionada ao segundo critério
    %...
    %...
    mat_prio = [prio_expe';
                prio_educ';
                prio_cari';
                prio_idad']
            
    %Calcualar a prioridades global para cada candidato
    disp('Prioridade global para os candidatos')
    prio_glob = prio_crit_obje' * mat_prio
    
end



   
  