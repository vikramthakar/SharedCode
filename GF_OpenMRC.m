function [Output] = GF_OpenMRC(PN)
%% Function to open MRC 
% Input = PartNum eg : 2MT1-1501
    if nargin == 0
        PN = '2MT1-1501';
    end
    MRCPath = '\\rds36.sjs.avagotech.net\npi\FBAR Mask Review Checklists';
    MRCFile = dir([MRCPath '\*' PN '*.*']);
    
    if length(MRCFile) > 1
        [dt] = max(MRCFile.datenum);
        tmpfiles = {MRCFile.name}';
        tmpdates = {MRCFile.datenum}';
        tmpfile = tmpfiles(cellfun(@(x)x==dt,tmpdates));
        while iscell(tmpfile)
            tmpfile = tmpfile{1};
        end
        MRCFile = tmpfile;
    else
        MRCFile = MRCFile.name;
        while iscell(MRCFile)
            MRCFile = MRCFile{1};
        end        
    end
    
    % Check if MRCPath points to a network drive
    if strfind(MRCPath,'\\')
        % Mount MRCPath to T:\        
        tmppath = strsplit(MRCPath,{'\','/'});
        if size(tmppath,2) > 1
            MRCPath1 = ['"' MRCPath '"'];
        end                
    else
        MRCPath1 = MRCPath;
    end
    % Run txtcmd
    txtcmd = ['net use t: ' MRCPath1 ' /P:Yes'];
    [a,b] = system(txtcmd);
    if ~isempty(strfind(b,'The local device name is already in use'))
        txtcmd = ['net use t: /DELETE /Y'];
        system(txtcmd);
        txtcmd = ['net use t: ' MRCPath1 ' /P:Yes'];
        [a,b] = system(txtcmd);
    end
    
    % Open MRC
    txtcmd = ['T:\' MRCFile ' &'];
    [a,b] = system(txtcmd);
    
    % unmount F:
    pause on;
    pause(5);
    txtcmd = ['net use t: /DELETE /Y'];
    system(txtcmd);
    pause off;
    
    Output = fullfile(MRCPath,MRCFile);
end