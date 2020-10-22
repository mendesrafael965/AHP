function AHP()
    %Limpa memória
    clear all;

    %Fecha figuras
    close all; 

    %Limpa console
    clc;
    
    disp('Matriz de comparação de pares, critério f1');

    %      p1   p2      p3     p4    
    f1 = [ 1    3       4      5;   % p1
           1/3  1       3      4;   % p2
           1/4  1/3     1      3;   % p3
           1/5  1/4     1/3    1]   % p4

    %Calcula vetor de prioridadess
    prio_f1=prioridades(f1)
    
    %Calacula o indice de inconsistencia
<<<<<<< HEAD
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
=======
    [qc_f1, ic_f1] = indiceInconsistencia(f1,0.89)
    
    disp('Matriz de comparação de pares, critério f2');
    
     %     p1   p2     p3     p4    
    f2 = [ 1    1/2    1/3    1/4;   % p1
           2    1      1/2    1/3;   % p2
           3    2      1      1/2;   % p3
           4    3      2        1 ]   % p4
>>>>>>> f249af80e47f20e2ef362a4c8f50255f92f77466

    %Calcula vetor de prioridadess
    prio_f2=prioridades(f2)
    
    %Calacula o indice de inconsistencia
<<<<<<< HEAD
    [qc_cari, ic_cari] = indiceInconsistencia(idade,0.52)
=======
    [qc_f2, ic_f2] = indiceInconsistencia(f2,0.89)
>>>>>>> f249af80e47f20e2ef362a4c8f50255f92f77466

    disp('Matriz de comparação de pares, critérios em relacao ao objetivo');

    %            f1    f2    
    criterios= [ 1      3; %f1  
                 1/3    1] %f2    
            
    %Calcula vetor de prioridadess
    prio_crit_obje=prioridades(criterios);
    
    %Calacula o indice de inconsistencia
<<<<<<< HEAD
    [qc_crit, ic_crit] = indiceInconsistencia(criterios,0.89)
=======
    [qc_crit, ic_crit] = indiceInconsistencia(criterios,0)
>>>>>>> f249af80e47f20e2ef362a4c8f50255f92f77466
    
    %prioridades global
    %Matriz de prioridades composta pelos vetores de prioridadess
    %L1-prioridades relacionada ao primeiro critério
    %L2-prioridades relacionada ao segundo critério
    mat_prio = [prio_f1';
                prio_f2' ]
            
    %Calcualar a prioridades global para cada candidato
    disp('Prioridade global para os candidatos')
    prio_glob = prio_crit_obje' * mat_prio
    
end



   
  