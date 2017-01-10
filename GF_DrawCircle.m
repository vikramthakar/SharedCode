function [xx,yy] = GF_DrawCircle(Radius,X,Y)
%% Function Help
    % [xx,yy] = GF_DrawCircle(Radius,X,Y)
    % Required inputs: Radius
    % Optional Inputs : X,Y (default = 0,0)
    
    if nargin == 1
        X = 0;
        Y = 0;
    end    
    td = [0:0.1:360];
    xx = Radius*cosd(td);
    yy = Radius*sind(td);
    plot(X+xx,Y+yy,'b');
end