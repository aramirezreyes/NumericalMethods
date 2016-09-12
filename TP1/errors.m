function [efe,ebe,ehe,eme,erk4] = errors(F,t0,y0,T,dt,y)
    [tfe,yfe] = FEmethod(F,t0,y0,T,dt);
    [tbe,ybe] = BEmethod(F,t0,y0,T,dt);
    %[the,yhe] = HEmethod(F,t0,y0,T,dt);
    [tme,yme] = MEmethod(F,t0,y0,T,dt);
    [trk4,yrk4] = RK4method(F,t0,y0,T,dt);
    efe = max(abs(yfe-y(tfe)'));
    ebe = max(abs(ybe-y(tbe)'));
    %ehe = max(abs(yhe-y(the)));
    eme = max(abs(yme-y(tme)'));
    erk4 = max(abs(yrk4-y(trk4)'));
    ehe = 0;
end