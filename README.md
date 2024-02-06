# PDAC_DL
Associated with the publication "Quantitative analysis of pancreatic cancer cell attachment to endothelial cells"




# Deep learning segmentation models
------------------

| Model Name | Imaging Modality | Performance | Purpose and Associated Figure | Training Dataset Link | Training Notebook Link |
|------------|------------------|-------------|-------------------------------|-----------------------|------------------------|
| Model 1    | Brightfield      |  IoU = 0.813 <br> f1 = 0.933 | StarDist model to detect cancer cells in BSA-coated channels. Used to measure perfusion speed inside the channels (Fig S1). | [Link](https://zenodo.org/records/4034939) | [StarDist 2D Notebook](https://github.com/HenriquesLab/ZeroCostDL4Mic/wiki#segmentation-networks) |
| Model 2    | Fluorescence     | IoU = 0.646 <br> f1 = 0.877 | StarDist model to detect cancer cells from fixed samples. Used in Fig. 1 to count the number of attached cells | [Link](https://doi.org/10.5281/zenodo.10572310) | [StarDist 2D Notebook](https://github.com/HenriquesLab/ZeroCostDL4Mic/wiki#segmentation-networks) |
| Model 3    | Brightfield | IoU = 0.793 <br> f1 = 0.921 | StarDist model capable of segmenting cancer cells on endothelial cells | [Link](https://doi.org/10.5281/zenodo.10572122) | [StarDist 2D Notebook](https://github.com/HenriquesLab/ZeroCostDL4Mic/wiki#segmentation-networks) |
| Model 4    | Brightfield | IoU = 0.914 <br> f1 = 0.969 | StarDist model capable of segmenting neutrophils on endothelial cells | [Link](https://doi.org/10.5281/zenodo.10572231) | [StarDist 2D Notebook](https://github.com/HenriquesLab/ZeroCostDL4Mic/wiki#segmentation-networks) |
| Model 5    | Brightfield | IoU = 0.831 <br> f1 = 0.941 | StarDist model capable of segmenting mononucleated cells on endothelial cells | [Link](https://doi.org/10.5281/zenodo.10572200) | [StarDist 2D Notebook](https://github.com/HenriquesLab/ZeroCostDL4Mic/wiki#segmentation-networks) |
| Model 6    | Fluorescence     | IoU = 0.927 <br> f1 = 0.976 | StarDist model capable of segmenting endothelial nuclei while ignoring cancer cells | [Link](https://doi.org/10.5281/zenodo.10617532) | [StarDist 2D Notebook](https://github.com/HenriquesLab/ZeroCostDL4Mic/wiki#segmentation-networks) |
| ...        | ...            | ...  | ...         | ...                             | ...                   | ...                    |



# Deep learning artificial labeling models
------------------
| Model Name | Performance | Purpose and Associated Figure | Training Dataset Link | Training Notebook Link |
|------------|-------------|-------------------------------|-----------------------|------------------------|
| Model 1    | SSIM = 0.755 <br> lpips = 0.120 | BF to Dapi cancer cells | [Link](https://doi.org/10.5281/zenodo.10621667) | [Pix2pix Notebook](https://github.com/HenriquesLab/ZeroCostDL4Mic/wiki#image-to-image-translation-networks) |
| Model 2    | SSIM = 0.756 <br> lpips = 0.130 | BF to Dapi immuno cells | [Link](https://doi.org/110.5281/zenodo.10617565) | [Pix2pix Notebook](https://github.com/HenriquesLab/ZeroCostDL4Mic/wiki#image-to-image-translation-networks) |
| Model 3    | SSIM = 0.270 <br> lpips = 0.360 | BF to PECAM | [Link](https://doi.org/10.5281/zenodo.10611092) | [Pix2pix Notebook](https://github.com/HenriquesLab/ZeroCostDL4Mic/wiki#image-to-image-translation-networks) |
