# Deep learning segmentation models
------------------

Here, we list the main models used in the paper and their respective training datasets. The models were trained using [ZeroCostDL4Mic StarDist 2D Notebooks.](https://github.com/HenriquesLab/ZeroCostDL4Mic/wiki#segmentation-networks)


| Model Name | Imaging Modality | Performance | Purpose and Associated Figure | Training Dataset Link |
|------------|------------------|-------------|-------------------------------|-----------------------|
| Flow chamber dataset | Brightfield      | IoU = 0.813 <br> f1 = 0.933 | StarDist model to detect cancer cells in BSA-coated channels. Used to measure perfusion speed inside the channels (Fig S1). | [Link](https://zenodo.org/records/4034939) |
| StarDist_Fluorescent_cells | Fluorescence     | IoU = 0.646 <br> f1 = 0.877 | StarDist model to detect cancer cells from fixed samples. Used in Fig. 1 to count the number of attached cells | [Link](https://doi.org/10.5281/zenodo.10572310) |
| StarDist_BF_cancer_cell_dataset_20x | Brightfield | IoU = 0.793 <br> f1 = 0.921 | StarDist model capable of segmenting cancer cells on endothelial cells (20x magnification). This model was used to segment cancer cells prior to tracking in Fig 1.  | [Link](https://doi.org/10.5281/zenodo.10572122) |
| StarDist_BF_Neutrophil_dataset | Brightfield | IoU = 0.914 <br> f1 = 0.969 | StarDist model capable of segmenting neutrophils on endothelial cells. This model was used to segment neutrophils prior to tracking in Fig 2. | [Link](https://doi.org/10.5281/zenodo.10572231) |
| StarDist_BF_Monocytes_dataset | Brightfield | IoU = 0.831 <br> f1 = 0.941 | StarDist model capable of segmenting mononucleated cells on endothelial cells. This model was used to segment mononucleated cells prior to tracking in Fig 2. | [Link](https://doi.org/10.5281/zenodo.10572200) |
| StarDist_HUVEC_nuclei_dataset | Fluorescence     | IoU = 0.927 <br> f1 = 0.976 | StarDist model capable of segmenting endothelial nuclei while ignoring cancer cells. Used to segment endothelial nuclei in Fig 4. | [Link](https://doi.org/10.5281/zenodo.10617532) |
| StarDist_BF_cancer_cell_dataset_10x | Brightfield     | IoU = 0.882 <br> f1 = 0.968 | StarDist model capable of segmenting cancer cells on endothelial cells (10x magnification) | [Link](https://zenodo.org/uploads/13304399) |
| StarDist_AsPC1_Lifeact | Fluorescence     | IoU = 0.884 <br> f1 = 0.967 | StarDist model capable of segmenting AsPC1 cells from AsPC1 channel, in addition to segmenting from background, model also segments individual cells from clusters. |
| Stardist_MiaPaCa2_from_CD44 | Fluorescence     | IoU = 0.884 <br> f1 = 0.950 | StarDist model capable of segmenting MiaPaCa2 cells from CD44 channel while ignoring endothelial cells. | [Link](https://doi.org/10.5281/zenodo.13442877) |
| StarDist_TumorCell_nuclei | Fluorescence     | IoU = 0.558 <br> f1 = 0.793 | StarDist model capable of segmenting tumor cell nuclei from the nuclei channel while ignoring endothelial nuclei. | [Link](https://doi.org/10.5281/zenodo.13443221) |
