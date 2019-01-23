    % clear all
    
    %clearvars
    %clearvars -GLOBAL
    %close all
    
    % set(0,'DefaultFigureWindowStyle','docked')
    global C

    addpath ../geom2d/geom2d

    C.q_0 = 1.60217653e-19;             % electron charge
    C.hb = 1.054571596e-34;             % Dirac constant
    C.h = C.hb * 2 * pi;                    % Planck constant
    C.m_0 = 9.10938215e-31;             % electron mass
    C.kb = 1.3806504e-23;               % Boltzmann constant
    C.eps_0 = 8.854187817e-12;          % vacuum permittivity
    C.mu_0 = 1.2566370614e-6;           % vacuum permeability
    C.c = 299792458;                    % speed of light
    C.g = 9.80665; %metres (32.1740 ft) per s²
    
    p=0; %position
    vinitial=0; % initial velocity
    t=1; %time
    f=1; % initial force
    v=p*t;
    v=1; %starting velocity
    electron =[p,v];
    stoptime= 100; 
    driftvel=0;
    for t= 0:t:stoptime
        prob=randi([1 100],1,1)
            if prob<=5;
                    v=0;
            end 
        plot(electron(1,1),electron(1,2),'ob');
        title(['The velocity of the Electron is ', num2str(driftvel), ' m/s'])
        
            dv=f*t;
            v= v+dv;
            electron(1,1)= electron(1,1) + v*dv;
            p= p+v*t;
            if t>0
            driftvel=(driftvel + v)/t;
            end
        pause(0.1);
        hold on;
    end  
        
        