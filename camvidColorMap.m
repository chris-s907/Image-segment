function cmap = camvidColorMap()
% Define the colormap used by CamVid dataset.

% cmap = [
%     128 128 128   % Sky
%     128 0 0       % Building
%     192 192 192   % Pole
%     128 64 128    % Road
%     60 40 222     % Pavement
%     128 128 0     % Tree
%     192 128 128   % SignSymbol
%     64 64 128     % Fence
%     64 0 128      % Car
%     64 64 0       % Pedestrian
%     0 128 192     % Bicyclist
%     ];

cmap = [
    192 192 192   % Sky(others)
    192 192 192   % Building(others)
    192 192 192   % Pole(others)
    128 64 128    % Road(drivable surface)
    192 192 192   % Pavement(others)
    192 192 192   % Tree(others)
    192 192 192   % SignSymbol(others)
    192 192 192   % Fence(others)
    64 0 128      % Car(vehicles)
    64 64 0       % Pedestrian(Pedestrian)
    0 128 192     % Bicyclist(bicycles and motorcycles)
    ];


% Normalize between [0 1].
cmap = cmap ./ 255;
end