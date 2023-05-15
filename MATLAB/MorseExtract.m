%% Clear all: command window, figures, workspace

clear all;
close all;
clc;

%% Load and pre-process the data
[img, map, alpha] =imread('nft.png');
string_temp = medfilt1(sqrt(sum(img(3,1:end,:).^2,3)),10)>10;
string{1} = string_temp(find(string_temp == 1, 1, 'first'):find(string_temp == 1, 1, 'last'));

string_temp = medfilt1(sqrt(sum(img(1:end,end-4,:).^2,3)),10)>10;
string{2} = string_temp(find(string_temp==1, 1, 'first'):find(string_temp==1, 1, 'last'));

string_temp = medfilt1(sqrt(sum(img(end-4,1:end,:).^2,3)),10)>10;
string{3} = flip(string_temp(find(string_temp==1, 1, 'first'):find(string_temp==1, 1, 'last')));

string_temp = medfilt1(sqrt(sum(img(1:end,4,:).^2,3)),10)>10;
string{4} = flip(string_temp(find(string_temp==1, 1, 'first'):find(string_temp==1, 1, 'last')));

%% Treat the image slice pre-processed earlier as Morse code OR bit-stream
for Is = 1:length(string)
  
    code{Is} = [];
    counter_0 = 0;
    counter_1 = 0;

    for Ip = 1:length(string{Is})
        if(string{Is}(Ip) == 1)
            counter_1 = counter_1 + 1;
            if( counter_0 > 25 )
                    % Just use the commented option to get the Morse option
                code{Is} = [code{Is}, '']; %[code{Is}, ' '];
            end
            counter_0 = 0;
        else
            counter_0 = counter_0 + 1;
            if( (counter_1 > 0) && (counter_1 < 15))
                code{Is} = [code{Is}, '1']; %[code{Is}, '.'];
            end
            if( counter_1 > 15)
                code{Is} = [code{Is}, '0']; %[code{Is}, '-'];
            end
            counter_1 = 0;
        end
    end
end

code{1}
code{2}
code{3}
code{4}
