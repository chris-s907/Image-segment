pretrainedURL = 'https://ssd.mathworks.com/supportfiles/vision/data/deeplabv3plusResnet18CamVid.zip';
pretrainedFolder = fullfile(tempdir,'pretrainedNetwork');
pretrainedNetworkZip = fullfile(pretrainedFolder,'deeplabv3plusResnet18CamVid.zip'); 
if ~exist(pretrainedNetworkZip,'file')
    mkdir(pretrainedFolder);
    disp('Downloading pretrained network (58 MB)...');
    websave(pretrainedNetworkZip,pretrainedURL);
end
unzip(pretrainedNetworkZip, pretrainedFolder)

pretrainedNetwork = fullfile(pretrainedFolder,'deeplabv3plusResnet18CamVid.mat');  
data = load(pretrainedNetwork);
net = data.net;
classes = string(net.Layers(end).Classes);

%% single processing
% I = imread('noise.jpg');
%     
% inputSize = net.Layers(1).InputSize;
% I = imresize(I,inputSize(1:2));
% C = semanticseg(I,net);
% cmap = camvidColorMap;
% B = labeloverlay(I,C,'Colormap',cmap,'Transparency',0.4);
% figure
% imshow(B)
% cmap2 = [cmap(1,:);cmap(4,:);cmap(9,:);cmap(10,:);cmap(11,:)];
% classes2 = ['others';'drivalbe surface';'vehicles';classes(10,1);'bicycles and motrocycles'];
% pixelLabelColorbar(cmap2, classes2);

%% batch processing
file_path = 'F:\matlab\bin\AMR\2_segmentation\improve_img\images_blur\';% the file path of the original images
file_pathsave = 'F:\matlab\bin\AMR\2_segmentation\improve_img_seg\images_seg_blur\';

%shadow pictures
for i = 1:5
    img_name = [file_path,'shadow',int2str(i),'_blur.jpg']; % original image
    I = imread(img_name);
    
    inputSize = net.Layers(1).InputSize;
    I = imresize(I,inputSize(1:2));
    C = semanticseg(I,net);
    cmap = camvidColorMap;
    B = labeloverlay(I,C,'Colormap',cmap,'Transparency',0.4);
    figure
    imshow(B)
    cmap2 = [cmap(1,:);cmap(4,:);cmap(9,:);cmap(10,:);cmap(11,:)];
    classes2 = ['others';'drivalbe surface';'vehicles';classes(10,1);'bicycles and motrocycles'];
    pixelLabelColorbar(cmap2, classes2);
    
   
    img_namesave = [file_pathsave,'shadow_blur',int2str(i),'_seg.jpg'];
    saveas(gcf,img_namesave);
    info = ['shadow_blur',int2str(i),' has been processed']; % original images
    disp(info);
end

%hole pictures
for i = 1:5
    img_name = [file_path,'hole',int2str(i),'_blur.jpg']; % original image
    I = imread(img_name);
    
    inputSize = net.Layers(1).InputSize;
    I = imresize(I,inputSize(1:2));
    C = semanticseg(I,net);
    cmap = camvidColorMap;
    B = labeloverlay(I,C,'Colormap',cmap,'Transparency',0.4);
    figure
    imshow(B)
    cmap2 = [cmap(1,:);cmap(4,:);cmap(9,:);cmap(10,:);cmap(11,:)];
    classes2 = ['others';'drivalbe surface';'vehicles';classes(10,1);'bicycles and motrocycles'];
    pixelLabelColorbar(cmap2, classes2);
    
   
    img_namesave = [file_pathsave,'hole_blur',int2str(i),'_seg.jpg'];
    saveas(gcf,img_namesave);
    info = ['hole_blur',int2str(i),' has been processed'];
    disp(info);
end