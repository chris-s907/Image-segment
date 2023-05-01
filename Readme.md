## Introduction
* Perform Image segmentation using the method: DeepLabv3 with the MATLAB toolbox, on the 10 sample images provided.
Link for the model = 'https://ssd.mathworks.com/supportfiles/vision/data/deeplabv3plusResnet18CamVid.zip'.
Modify the network’s output classes to these output classes:
	* vehicles
	* bicycles and motorcycles
	* pedestrians
	* others
	* drivable surface

* The performance of the segmentation network is not 100% accurate. There are some points of failure in the network.

* Improve the images without any MATLAB toolbox functions for better segmentation.

## Files
* `2_segmentation`
	* `original_img`
		* `images` examples of 'frame1' to 'frame10'
		* `shadow` 5 taken images with tree shadows
		* `hole_road` 5 taken images of road with hollows		   
	* `original_img_seg`	
		* `images_seg` apply original trained model to example images
		* `shadow_seg` apply original trained model to 5 images with shadows
		* `hole_road_seg` apply original trained model to 5 images with holes
	* `improve_img` 
		* `images_blur` process 'original_img' with mean filter
		* `images_bright` process 'original_img' with HSV model of high saturation and value
		* `images_noise` process 'original_img' with gussian noise
		* `images_noise+blur` process 'original_img' with mean filter and gussian noise
	* `improve_img_seg` 
		* `images_seg_blur` apply segmentation algorithm with'images_blur'
		* `images_seg_bright` apply segmentation algorithm with'images_seg_bright'
		* `images_seg_noise` apply segmentation algorithm with'images_seg_noise'
		* `images_seg_noise+blur` apply segmentation algorithm with'images_seg_noise+blur'

* `amr_hw.m` run the file to use trained DeepLabv3 model to do pictures segmentation
Note: It will show the error.
Solution: Open the link to open the `camvidColorMap.m` file and change the content to the file attached named `camvidColorMap.m` and run this file. Then the amr_hw.m will work. 

* `camvidColorMap.m` copy the content of this fime and paste to the  'camvidColorMap.m' open in the first step

* `enhance.m` image processing script to generate the files 'improve_img'

* `comparison.pdf` all the image comparison

Attention: The codes are runing under the version of MATLAB 2022. If the version of the matlab is too low, there maybe some problems to run them sucessfully.
