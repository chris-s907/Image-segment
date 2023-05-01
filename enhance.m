file_path = 'F:\matlab\bin\AMR\2_segmentation\original_img\hole_road\';% the file path of the original images
file_pathsave = 'F:\matlab\bin\AMR\2_segmentation\improve_img\images_noise\';
img_path_list = dir(strcat(file_path,'frame*.jpg')); 
img_num = length(img_path_list);

%% improve the intensity
% for i = 1:10 
%     img_name = [file_path,'frame',int2str(i),'.jpg'];
%     I = imread(img_name);
%     [m,n,k] = size(I);
%     hsv = rgb2hsv(I);
%     H = hsv(:,:,1); 
%     S = hsv(:,:,2); 
%     V = hsv(:,:,3); 
% 
%   
%     for p = 1:m 
%         for q = 1: n
%             hsv(p,q,2) = 2* hsv(p,q,2);
%         end
%     end
%     
%    
%     for p = 1:m 
%         for q = 1: n
%             hsv(p,q,3) =1.2* hsv(p,q,3); 
%         end
%     end
% 
%     I = hsv2rgb(hsv); 
%     imshow(I)   
%     img_namesave = [file_pathsave,'frame_enhance',int2str(i),'.jpg'];
%     imwrite(I,img_namesave);
%     info = ['frame',int2str(i),' has been processed'];
%     disp(info);
% end

%% add the noise
%single process
% img_name = [file_path,'frame',int2str(9),'.jpg'];
% I = imread(img_name);
% g = imnoise( I , 'gaussian',0,0.01);
% imshow(g)
% img_namesave = [file_pathsave,'frame9_noise','.jpg'];
% imwrite(g,img_namesave);

%batch process
for i = 1:5
    img_name = [file_path,'hole',int2str(i),'.jpg']; % original image
    I = imread(img_name);
    g = imnoise( I , 'gaussian',0,0.01);
    img_namesave = [file_pathsave,'hole',int2str(i),'_noise.jpg'];
    imwrite(g,img_namesave);
end

%% smooth the image
% H=fspecial('disk',3);
% blurred = imfilter(I ,H,'replicate');
% imshow(blurred)
% img_namesave = [file_pathsave,'frame9_blur','.jpg'];
% imwrite(blurred ,img_namesave);

% %batch process
% for i = 1:5
%     img_name = [file_path,'hole',int2str(i),'.jpg']; % original image
%     I = imread(img_name);
%     H=fspecial('disk',3);
%     blurred = imfilter(I ,H,'replicate');
%     img_namesave = [file_pathsave,'hole',int2str(i),'_blur.jpg'];
%     imwrite(blurred,img_namesave);
% end

%% noise and blur
% for i = 1:5
%     img_name = [file_path,'hole',int2str(i),'.jpg']; % original image
%     I = imread(img_name);
%     g = imnoise( I , 'gaussian',0,0.01);
%     H=fspecial('disk',3);
%     blurred = imfilter(g ,H,'replicate');
%     img_namesave = [file_pathsave,'hole',int2str(i),'_noise+blur.jpg'];
%     imwrite(blurred,img_namesave);
% end



