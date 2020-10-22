function y = prioridades(M)
         
    c=1;
    n =size(M,1);
    nrM(n,:)=10000; tolmet=0; tolerance=.035;
    while tolmet<1 
        c=c+1;                                       
        M=M^2;                                      
        sr1M = sum(M,2);                             
        sr2M = sum(sr1M);                            
        nrM(:,c) = sr1M./sr2M;                       
        tol(c)=sum(abs(nrM(:,c) - nrM(:,c-1)));      
         if tol < tolerance                   
            tolmet=1;                          
         elseif sum(sum(M))>=10e30 
             tolmet=1;                         
         end
         y = nrM(:,end);
    end
end

