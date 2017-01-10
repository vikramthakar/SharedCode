function [Specs] = GF_BandSpecs(param)
%% Function Captures Band Specs programatically for Integration Purposes

if nargin == 0
    param.Band = 'B30';
end

Band = param.Band;
    switch Band
        case 'B1'
            Specs.TxFreq = [1920 1980];
            Specs.RxFreq = [2110 2170];
        case 'B2'
            Specs.TxFreq = [1850 1910];
            Specs.RxFreq = [1930 1990];
        case 'B3'
            Specs.TxFreq = [1710 1785];
            Specs.RxFreq = [1805 1880];
        case 'B4'
            Specs.TxFreq = [1710 1755];
            Specs.RxFreq = [2110 2155];
        case 'B7'
            Specs.TxFreq = [1710 1755];
            Specs.RxFreq = [2110 2155];
        case 'B8'
            Specs.TxFreq = [880 915];
            Specs.RxFreq = [925 960];
        case 'B13'
            Specs.TxFreq = [777 787];
            Specs.RxFreq = [746 756];
        case 'B20'
            Specs.TxFreq = [832 862];
            Specs.RxFreq = [791 821];
        case 'B25'
            Specs.TxFreq = [1850 1915];
            Specs.RxFreq = [1930 1995];
        case 'B30'
            Specs.TxFreq = [2305 2315];
            Specs.RxFreq = [2350 2360];
        case 'B40'
            Specs.TDDFreq = [2300 2400];
        case 'B41'
            Specs.TDDFreq = [2496 2690];
        case 'B66'
            Specs.TxFreq = [1710 1780];
            Specs.RxFreq = [2110 2200];
        otherwise
            Specs = [];
    end
    
    try
        Function = param.Function;
        Specs1 = Specs;
        Specs = [];
        switch Function
            case 'Tx'                
                Specs = Specs1.TxFreq;
            case 'Rx'                
                Specs = Specs1.RxFreq;
            case 'TDD'                
                Specs = Specs1.TDDFreq;                            
        end
    end
    
end