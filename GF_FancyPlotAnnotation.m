function []=GF_FancyPlotAnnotation(param)
    
    % Standard Inputs
    if nargin == 0
        param.MarkRange = [-3 -100];
        param.FreqOffset = [3e6 6e6];   % cold / hot
        param.ILOffset = [0 0];         % cold / hot
        param.transparency = 0.1;
    end
    % check input
    if nargin == 1
        %Vars = fieldnames(param);
        if ~isfield(param,'MarkRange')
            param.MarkRange = [35 -60];
        end
        if ~isfield(param,'FreqOffset')
            param.FreqOffset = [3e6 6e6]; % cold / hot
        end
        if ~isfield(param,'ILOffset')
            param.ILOffset = [0 0];  % cold / hot
        end
        if ~isfield(param,'transparency')
            param.transparency = 0.1;
        end
        if isfield(param,'Band')
            [Specs] = GF_BandSpecs(param);
            param.freq  = Specs.TxFreq;
            local_annotation_run(param); % Tx call
            param.freq  = Specs.RxFreq;
            local_annotation_run(param); % Rx call
        end
    end
    if nargin == 0
        % Band 30 ISO spec
        while 0
            param.freq  = [2330e6 2335e6];
            param.MarkRange = [30 -70];
            param.FreqOffset = [0e6 0e6]; % cold / hot
            param.ILOffset = [0 0];   % cold / hot
            param.transparency = 0.1;
            break;
        end      
        % B30 SDARS spec
        while 0
            param.freq  = [2336.2e6 2341.3e6];
            param.MarkRange = [15 6.5];
            param.FreqOffset = [0e6 0e6]; % cold / hot
            param.ILOffset = [0 0];   % cold / hot
            param.transparency = 0.1;
            break;
        end
        local_annotation_run(param);
    end
    
end

function [] = local_annotation_run(param)
    freq = param.freq;
    MarkRange = param.MarkRange;
    FreqOffset = param.FreqOffset;
    ILOffset = param.ILOffset;
    trans = param.transparency;
    
    p1=patch([freq(1) freq(2) freq(2) freq(1) freq(1)],[MarkRange(1) MarkRange(1) MarkRange(2) MarkRange(2) MarkRange(1)],'g');
    set(p1,'FaceAlpha',trans,'EdgeColor','g');    
    p1=patch([freq(2) freq(2)+FreqOffset(2) freq(2)+FreqOffset(2) freq(2) freq(2)],[MarkRange(1)+ILOffset(2) MarkRange(1)+ILOffset(2) MarkRange(2) MarkRange(2) MarkRange(1)+ILOffset(2)],'r');
    set(p1,'FaceAlpha',trans,'EdgeColor','r'); 
    p1=patch([freq(1)-FreqOffset(1) freq(1)-FreqOffset(1) freq(1) freq(1) freq(1)-FreqOffset(1)],[MarkRange(2) MarkRange(1)+ILOffset(1) MarkRange(1)+ILOffset(1) MarkRange(2) MarkRange(2)],'b');
    set(p1,'FaceAlpha',trans,'EdgeColor','b'); 
end