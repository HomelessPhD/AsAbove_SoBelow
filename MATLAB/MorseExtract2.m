%% Clear all: command window, workspace and figures
clear all;
close all;
clc;

%% Pre-process the data
    % Load the image
[img, map, alpha] =imread('nft.png');

    % Extract the line with MORSE code
string_temp = sqrt(sum(img(375:(end-375),5326,:).^2,3));

% hmmm  imagesc(img(2954:2997,5323:5327,1:3))
%       plot(string_temp(2580:2623),'-o')

    % Correct corrupted pixels
string_temp(2580:2623) = 24*[ones(1,1), zeros(1,6), ones(1,1), zeros(1,6), ones(1,2), zeros(1,6), ones(1,8), zeros(1,2), ones(1,1),  zeros(1,2), ones(1,2), zeros(1,6), ones(1,1)];

    % Binarize the pixels stream
string_temp = string_temp < 15; % > 20
string = string_temp(find(string_temp == 1, 1, 'first'):(find(string_temp == 1, 1, 'last')+1));

%% Retrive the morse code
    code = [];
    counter_0 = 0;
    counter_1 = 0;

    for Ip = 1:length(string)
        if(string(Ip) == 1)
            counter_1 = counter_1 + 1;
            if( counter_0 > 3 )
                code = [code, ' '];
            end
            counter_0 = 0;
        else
            counter_0 = counter_0 + 1;
            if( (counter_1 > 0) && (counter_1 <= 2))
                code = [code, '.']; 
            end
            if( counter_1 > 2)
                code = [code, '-'];
            end
            counter_1 = 0;
        end
    end

code
