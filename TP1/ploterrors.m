function ploterrors(F,t0,y0,T,y,n0,N0,N)
    rangeTemp = linspace(n0,N0,N);
    range = 10.^(-rangeTemp);
    errNames = {'Efe','Ebe','Eme','Erk4'};
    for ii = 1:4
        eval([errNames{ii} ' = zeros(N,1);']);
    end
    for ii = 1:N
        dt = range(ii);
        [Efe(ii),Ebe(ii),ehe,Eme(ii),Erk4(ii)] = errors(F,t0,y0,T,dt,y);
    end
   
    figure;
    loglog(range,[Efe,Ebe,Eme,Erk4],'-*')
    legend('Efe','Ebe','Eme','Erk4','Location','best');
    figure();
    plot([order(range,Efe),order(range,Ebe),order(range,Eme),order(range,Erk4)])
    legend('Efe','Ebe','Eme','Erk4','Location','best');
end