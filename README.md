# PDAC DL

This repository contains code and documentation associated with the manuscript "Quantitative Analysis of Pancreatic Cancer Cell Attachment to Endothelial Cells."

In this study, we developed an advanced image analysis pipeline to examine how circulating cells interact with endothelial cells. The pipeline encompasses several critical steps:

1. **Deep Learning Pipeline for Image Processing**:
   - Brightfield videos were processed using a deep learning (DL) pipeline, enabling us to segment the circulating cells and predict and segment useful landmarks on the endothelial monolayer.
   - The DL pipeline is detailed and available [here](https://github.com/CellMigrationLab/PDAC_DL/tree/main/DL_pipeline#deep-learning-based-image-analysis-pipeline).
   - The DL models used, along with their training datasets, are listed [here](https://github.com/CellMigrationLab/PDAC_DL/blob/main/README.md#deep-learning-segmentation-models).
   - This pipeline was created by integrating multiple [ZeroCostDL4Mic](https://github.com/HenriquesLab/ZeroCostDL4Mic) notebooks.

2. **Tracking Circulating Cells**:
   - Circulating cells were tracked using [TrackMate](https://imagej.net/plugins/trackmate/) and the label detector, as described in our manuscript.
   - Additional information regarding the TrackMate label detector is available [here](https://imagej.net/plugins/trackmate/detectors/trackmate-label-image-detector).

3. **Compilation of Tracks**:
   - The tracks were compiled and processed using a modified version of [CellTracksColab](https://github.com/CellMigrationLab/CellTracksColab).
   - Details on the analysis and the modified notebooks can be found [here](https://github.com/CellMigrationLab/PDAC_DL/tree/main/CellTracksColab#pdac-celltrackscolab).

      - General Notebook [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/guijacquemet/PDAC_DL/blob/main/CellTracksColab/PDAC_CellTracksColab_General.ipynb)
      - Count Arrested Tracks Notebook [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/guijacquemet/PDAC_DL/blob/main/CellTracksColab/PDAC_CellTracksColab_Arrested_Tracks.ipynb)
      - Track Clustering Notebook [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/guijacquemet/PDAC_DL/blob/main/CellTracksColab/PDAC_CellTracksColab_Track_Clustering.ipynb)
      - Landing Notebook [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/guijacquemet/PDAC_DL/blob/main/CellTracksColab/PDAC_CellTracksColab_Landing_Tracks.ipynb)




   

## Citation

If you find the resources or code in this repository useful for your projects, please cite our paper:

*Quantitative Analysis of Pancreatic Cancer Cell Attachment to Endothelial Cells*

Gautier Follain, Sujan Ghimire*, Joanna Pylvänäinen*, Camilo Guzmàn, James RW Conway, Marko Salmi, Johanna Ivaska#, Guillaume Jacquemet#.

*For an accurate citation format, please look at the publication details once the paper is available.*

---



# Deep learning segmentation models
------------------

Here, we list the main models used in the paper and their respective training datasets.


| Model Name | Imaging Modality | Performance | Purpose and Associated Figure | Training Dataset Link | Training Notebook Link |
|------------|------------------|-------------|-------------------------------|-----------------------|------------------------|
| Model 1    | Brightfield      |  IoU = 0.813 <br> f1 = 0.933 | StarDist model to detect cancer cells in BSA-coated channels. Used to measure perfusion speed inside the channels (Fig S1). | [Link](https://zenodo.org/records/4034939) | [StarDist 2D Notebook](https://github.com/HenriquesLab/ZeroCostDL4Mic/wiki#segmentation-networks) |
| Model 2    | Fluorescence     | IoU = 0.646 <br> f1 = 0.877 | StarDist model to detect cancer cells from fixed samples. Used in Fig. 1 to count the number of attached cells | [Link](https://doi.org/10.5281/zenodo.10572310) | [StarDist 2D Notebook](https://github.com/HenriquesLab/ZeroCostDL4Mic/wiki#segmentation-networks) |
| Model 3    | Brightfield | IoU = 0.793 <br> f1 = 0.921 | StarDist model capable of segmenting cancer cells on endothelial cells (20x magnification) | [Link](https://doi.org/10.5281/zenodo.10572122) | [StarDist 2D Notebook](https://github.com/HenriquesLab/ZeroCostDL4Mic/wiki#segmentation-networks) |
| Model 4    | Brightfield | IoU = 0.914 <br> f1 = 0.969 | StarDist model capable of segmenting neutrophils on endothelial cells | [Link](https://doi.org/10.5281/zenodo.10572231) | [StarDist 2D Notebook](https://github.com/HenriquesLab/ZeroCostDL4Mic/wiki#segmentation-networks) |
| Model 5    | Brightfield | IoU = 0.831 <br> f1 = 0.941 | StarDist model capable of segmenting mononucleated cells on endothelial cells | [Link](https://doi.org/10.5281/zenodo.10572200) | [StarDist 2D Notebook](https://github.com/HenriquesLab/ZeroCostDL4Mic/wiki#segmentation-networks) |
| Model 6    | Fluorescence     | IoU = 0.927 <br> f1 = 0.976 | StarDist model capable of segmenting endothelial nuclei while ignoring cancer cells | [Link](https://doi.org/10.5281/zenodo.10617532) | [StarDist 2D Notebook](https://github.com/HenriquesLab/ZeroCostDL4Mic/wiki#segmentation-networks) |
| Model 7    | Brightfield     | IoU = 0.882 <br> f1 = 0.968 | StarDist model capable of segmenting cancer cells on endothelial cells (10x magnification) | [Link](https://zenodo.org/uploads/13304399) | [StarDist 2D Notebook](https://github.com/HenriquesLab/ZeroCostDL4Mic/wiki#segmentation-networks) |
| Model 8    | Fluorescence     | IoU = 0.884 <br> f1 = 0.967 | StarDist model capable of segmenting AsPC1 cells from AsPC1 channel, in addition to segmenting from background, model also segments individual cells from clusters. | [Link tobe added]([10.5281/zenodo.13442128](https://zenodo.org/uploads/13442128)) | [StarDist 2D Notebook](https://github.com/HenriquesLab/ZeroCostDL4Mic/wiki#segmentation-networks) |
| Model 9    | Fluorescence     | IoU = 0.884 <br> f1 = 0.950 | StarDist model capable of segmenting MiaPaCa2 cells from CD44 channel while ignoring endothelial cells. | [Link tobe added]() | [StarDist 2D Notebook](https://github.com/HenriquesLab/ZeroCostDL4Mic/wiki#segmentation-networks) |
| Model 10    | Fluorescence     | IoU = 0.558 <br> f1 = 0.793 | StarDist model capable of segmenting tumor cell nuclei from the nuclei channel while ignoring endothelial nuclei. | [Link tobe added]() | [StarDist 2D Notebook](https://github.com/HenriquesLab/ZeroCostDL4Mic/wiki#segmentation-networks) |
| ...        | ...            | ...  | ...         | ...                             | ...                   | ...                    |



# Deep learning artificial labeling models
------------------
| Model Name | Performance | Purpose and Associated Figure | Training Dataset Link | Training Notebook Link |
|------------|-------------|-------------------------------|-----------------------|------------------------|
| Model 1    | SSIM = 0.755 <br> lpips = 0.120 | BF to Dapi cancer cells | [Link](https://doi.org/10.5281/zenodo.10621667) | [Pix2pix Notebook](https://github.com/HenriquesLab/ZeroCostDL4Mic/wiki#image-to-image-translation-networks) |
| Model 2    | SSIM = 0.756 <br> lpips = 0.130 | BF to Dapi immuno cells | [Link](https://doi.org/110.5281/zenodo.10617565) | [Pix2pix Notebook](https://github.com/HenriquesLab/ZeroCostDL4Mic/wiki#image-to-image-translation-networks) |
| Model 3    | SSIM = 0.270 <br> lpips = 0.360 | BF to PECAM | [Link](https://doi.org/10.5281/zenodo.10611092) | [Pix2pix Notebook](https://github.com/HenriquesLab/ZeroCostDL4Mic/wiki#image-to-image-translation-networks) |
