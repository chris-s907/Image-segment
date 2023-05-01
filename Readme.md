Files content
2_segmentation ---- original_img ---- images : the given images of 'frame1' to 'frame10'
					        |_ shadow : 5 taken images with tree shadows
					        |_ hole_road : 5 taken images of road with hollows
			   
			   original_img_seg : apply segmentation algorithm with 'original_img' file
						 ---- images_seg
					        	    |_ shadow_seg 
					              |_ hole_road_seg  
			   
			   improve_img ---- images_blur : process 'original_img' with mean filter
					        |_ images_bright : process 'original_img' with HSV model of high saturation and value
					        |_ images_noise : process 'original_img' with gussian noise
 					        |_ images_noise+blur : process 'original_img' with mean filter and gussian noise
			   
			   improve_img_seg :  apply segmentation algorithm with 'improve_img' file
						  ---- images_seg_blur
					                |_ images_seg_bright 
					                |_ images_seg_noise
 					                |_ images_seg_noise+blur 

amr_hw.m : run the file to use trained DeepLabv3 model to do pictures segmentation
	         ( It will show the error: cmap = camvidColorMap. Then click the link to open the 'camvidColorMap.m' file and 
		change the content to the file attached named 'camvidColorMap.m' and run this file. Then the amr_hw.m will work )

camvidColorMap.m : copy the content of this fime and paste to the  'camvidColorMap.m' open in the first step

enhance.m : image processing script to generate the files 'improve_img'

Attention: The path and name of the file should be changed by our intension and local condition. The files are runing under the version of MATLAB 2022. If the version of the matlab is too low, there maybe some problems to run them sucessfully.
