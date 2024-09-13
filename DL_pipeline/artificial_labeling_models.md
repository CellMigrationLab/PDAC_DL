# Deep learning artificial labeling models
------------------
The models were trained using [ZeroCostDL4Mic Pix2pix Notebooks.](https://github.com/HenriquesLab/ZeroCostDL4Mic/wiki#image-to-image-translation-networks)

| Model Name | Performance | Purpose and Associated Figure | Training Dataset Link |
|------------|-------------|-------------------------------|-----------------------|
| pix2pix_HUVEC_nuclei_cancer_cells_dataset | SSIM = 0.755 <br> lpips = 0.120 | This model was used in Fig. 4 to artificially label nulcei from BF images with cancer and endothelial cells. | [Link](https://doi.org/10.5281/zenodo.10621667) |
| pix2pix_HUVEC_nuclei_immuno_cells_dataset | SSIM = 0.756 <br> lpips = 0.130 | This model was used in Fig. 4 to artificially label nulcei from BF images with immuno and endothelial cells. | [Link](https://doi.org/110.5281/zenodo.10617565) |
| pix2pix_HUVEC_juctions_dataset | SSIM = 0.270 <br> lpips = 0.360 | This model was used in Fig. 4 to artificially label cell-cell juctions from BF images with immuno or cancer and endothelial cells. | [Link](https://doi.org/10.5281/zenodo.10611092) |
