function []=GF_plotannotation(Band,h2,h1)    

if strcmp(Band,'B25Rx')
    figure(h2.Number)
    title('Cranberry B25 Rx : Pilot Comparison')
    line([1930e6 1930e6],[-70 0],'Color','b','LineStyle','--');
    line([1995e6 1995e6],[-70 0],'Color','b','LineStyle','--');
    line([1.7e9 2.1e9],[-4 -4],'Color','r','LineStyle','--');
    line([1.7e9 2.1e9],[-15 -15],'Color','r','LineStyle','--');
    line([1.7e9 2.1e9],[-30 -30],'Color','r','LineStyle','--');        
    h2.CurrentAxes.FontSize=16;
    h2.CurrentAxes.YLabel.String='S_2_1 (dB)'; 
    h2.CurrentAxes.XLabel.String='Frequency (Hz)';
    h2.CurrentAxes.XLim=[1.9e9 2.05e9];
    h2.CurrentAxes.YLim=[-30 0];
    
    figure(h1.Number)
    title('Cranberry B25 Rx : Pilot Comparison')
    line([1930e6 1930e6],[-70 0],'Color','b','LineStyle','--');
    line([1995e6 1995e6],[-70 0],'Color','b','LineStyle','--');
    line([1.7e9 2.1e9],[-4 -4],'Color','r','LineStyle','--');
    line([1.7e9 2.1e9],[-15 -15],'Color','r','LineStyle','--');
    line([1.7e9 2.1e9],[-30 -30],'Color','r','LineStyle','--');        
    h1.CurrentAxes.FontSize=16;
    h1.CurrentAxes.YLabel.String='S_1_1 (dB)'; 
    h1.CurrentAxes.XLabel.String='Frequency (Hz)';
    h1.CurrentAxes.XLim=[1.9e9 2.05e9];
    h1.CurrentAxes.YLim=[-30 0];

elseif strcmp(Band,'B25Tx')
    figure(h2.Number)
    title('Cranberry B25 Tx : Pilot Comparison')
    line([1850e6 1850e6],[-70 0],'Color','b','LineStyle','--');
    line([1915e6 1915e6],[-70 0],'Color','b','LineStyle','--');
    line([1.7e9 2.1e9],[-4 -4],'Color','r','LineStyle','--');
    line([1.7e9 2.1e9],[-15 -15],'Color','r','LineStyle','--');
    line([1.7e9 2.1e9],[-30 -30],'Color','r','LineStyle','--');        
    h2.CurrentAxes.FontSize=16;
    h2.CurrentAxes.YLabel.String='S_2_1 (dB)'; 
    h2.CurrentAxes.XLabel.String='Frequency (Hz)';
    h2.CurrentAxes.XLim=[1.83e9 1.930e9];
    h2.CurrentAxes.YLim=[-30 0];
    
    figure(h1.Number)
    title('Cranberry B25 Tx : Pilot Comparison')
    line([1850e6 1850e6],[-70 0],'Color','b','LineStyle','--');
    line([1915e6 1915e6],[-70 0],'Color','b','LineStyle','--');
    line([1.7e9 2.1e9],[-4 -4],'Color','r','LineStyle','--');
    line([1.7e9 2.1e9],[-15 -15],'Color','r','LineStyle','--');
    line([1.7e9 2.1e9],[-30 -30],'Color','r','LineStyle','--');        
    h1.CurrentAxes.FontSize=16;
    h1.CurrentAxes.YLabel.String='S_1_1 (dB)'; 
    h1.CurrentAxes.XLabel.String='Frequency (Hz)';
    h1.CurrentAxes.XLim=[1.83e9 1.930e9];
    h1.CurrentAxes.YLim=[-30 0];

elseif strcmp(Band,'B30Tx')
    figure(h2.Number)
    title(sprintf('%s : Pilot Comparison',Band));
    line([2305e6 2305e6],[-80 0],'Color','b','LineStyle','--');
    line([2315e6 2315e6],[-80 0],'Color','b','LineStyle','--');
    line([2.2e9 2.4e9],[-4 -4],'Color','r','LineStyle','--');
    line([2.2e9 2.4e9],[-15 -15],'Color','r','LineStyle','--');
    line([2.2e9 2.4e9],[-30 -30],'Color','r','LineStyle','--');        
    h2.CurrentAxes.FontSize=16;
    h2.CurrentAxes.YLabel.String='S_2_1 (dB)';
    h2.CurrentAxes.XLabel.String='Frequency (Hz)';
    h2.CurrentAxes.XLim=[2.25e9 2.35e9];
    h2.CurrentAxes.YLim=[-30 0];
    
    figure(h1.Number)
    title(sprintf('%s : Pilot Comparison',Band));
    line([2305e6 2305e6],[-80 0],'Color','b','LineStyle','--');
    line([2315e6 2315e6],[-80 0],'Color','b','LineStyle','--');
    line([2.2e9 2.4e9],[-4 -4],'Color','r','LineStyle','--');
    line([2.2e9 2.4e9],[-15 -15],'Color','r','LineStyle','--');
    line([2.2e9 2.4e9],[-30 -30],'Color','r','LineStyle','--');        
    h1.CurrentAxes.FontSize=16;
    h1.CurrentAxes.YLabel.String='S_1_1 (dB)';
    h1.CurrentAxes.XLabel.String='Frequency (Hz)';
    h1.CurrentAxes.XLim=[2.25e9 2.35e9];
    h1.CurrentAxes.YLim=[-30 0];
    
elseif strcmp(Band,'B30Rx')
    figure(h2.Number)
    title(sprintf('%s : Pilot Comparison',Band))
    line([2350e6 2350e6],[-80 0],'Color','b','LineStyle','--');
    line([2360e6 2360e6],[-80 0],'Color','b','LineStyle','--');
    line([2.2e9 2.4e9],[-4 -4],'Color','r','LineStyle','--');
    line([2.2e9 2.4e9],[-15 -15],'Color','r','LineStyle','--');
    line([2.2e9 2.4e9],[-30 -30],'Color','r','LineStyle','--');        
    h2.CurrentAxes.FontSize=16;
    h2.CurrentAxes.YLabel.String='S_2_1 (dB)';
    h2.CurrentAxes.XLabel.String='Frequency (Hz)';
    h2.CurrentAxes.XLim=[2.33e9 2.39e9];
    h2.CurrentAxes.YLim=[-18 0];
    
    figure(h1.Number)
    title('Cranberry B25 Tx : Pilot Comparison')
    line([2350e6 2350e6],[-80 0],'Color','b','LineStyle','--');
    line([2360e6 2360e6],[-80 0],'Color','b','LineStyle','--');
    line([2.2e9 2.4e9],[-4 -4],'Color','r','LineStyle','--');
    line([2.2e9 2.4e9],[-15 -15],'Color','r','LineStyle','--');
    line([2.2e9 2.4e9],[-30 -30],'Color','r','LineStyle','--');        
    h1.CurrentAxes.FontSize=16;
    h1.CurrentAxes.YLabel.String='S_1_1 (dB)';
    h1.CurrentAxes.XLabel.String='Frequency (Hz)';
    h1.CurrentAxes.XLim=[2.33e9 2.39e9];
    h1.CurrentAxes.YLim=[-18 0];
end










