function [out]=GF_letters(in)

    if isletter(in)
        alphabet=in;
        if strcmp(lower(alphabet),'a')
            num=1;
        elseif strcmp(lower(alphabet),'b')
            num=2;
        elseif strcmp(lower(alphabet),'c')
            num=3;    
        elseif strcmp(lower(alphabet),'d')
            num=4;
        elseif strcmp(lower(alphabet),'e')
            num=5;    
        elseif strcmp(lower(alphabet),'f')
            num=6;
        elseif strcmp(lower(alphabet),'g')
            num=7;
        elseif strcmp(lower(alphabet),'h')
            num=8;
        elseif strcmp(lower(alphabet),'i')
            num=9;
        elseif strcmp(lower(alphabet),'j')
            num=10;
        elseif strcmp(lower(alphabet),'k')
            num=11;
        elseif strcmp(lower(alphabet),'l')
            num=12;
        elseif strcmp(lower(alphabet),'m')
            num=13;
        elseif strcmp(lower(alphabet),'n')
            num=14;
        elseif strcmp(lower(alphabet),'o')
            num=15;
        elseif strcmp(lower(alphabet),'p')
            num=16;
        elseif strcmp(lower(alphabet),'q')
            num=17;
        elseif strcmp(lower(alphabet),'r')
            num=18;
        elseif strcmp(lower(alphabet),'s')
            num=19;
        elseif strcmp(lower(alphabet),'t')
            num=20;
        elseif strcmp(lower(alphabet),'u')
            num=21;
        elseif strcmp(lower(alphabet),'v')
            num=22;
        elseif strcmp(lower(alphabet),'w')
            num=23;
        elseif strcmp(lower(alphabet),'x')
            num=24;
        elseif strcmp(lower(alphabet),'y')
            num=25;
        elseif strcmp(lower(alphabet),'z')
            num=26;    
        else
            num=0;
        end
        out=num;
    elseif isnumeric(in)
        num=in;
        if num==1
            alphabet='a';
        elseif num==2
            alphabet='b';
        elseif num==3
            alphabet='c';    
        elseif num==4
            alphabet='d';
        elseif num==5
            alphabet='e';    
        elseif num==6
            alphabet='f';
        elseif num==7
            alphabet='g';
        elseif num==8
            alphabet='h';
        elseif num==9
            alphabet='i';
        elseif num==10
            alphabet='j';
        elseif num==11
            alphabet='k';
        elseif num==12
            alphabet='l';
        elseif num==13
            alphabet='m';
        elseif num==14
            alphabet='n';
        elseif num==15
            alphabet='o';
        elseif num==16
            alphabet='p';
        elseif num==17
            alphabet='q';
        elseif num==18
            alphabet='r';
        elseif num==19
            alphabet='s';
        elseif num==20
            alphabet='t';
        elseif num==21
            alphabet='u';
        elseif num==22
            alphabet='v';
        elseif num==23
            alphabet='w';
        elseif num==24
            alphabet='x';
        elseif num==25
            alphabet='y';
        elseif num==26
            alphabet='z';    
        else
            alphabet='';
        end
        out=alphabet;
    end
end