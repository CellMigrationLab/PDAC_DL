# PDAC DL

This repository contains code and documentation associated with the manuscript "Quantitative Analysis of Pancreatic Cancer Cell Attachment to Endothelial Cells."

In this study, we developed an advanced image analysis pipeline to examine how circulating cells interact with endothelial cells. The pipeline encompasses several critical steps:

### 1. **Deep Learning Pipeline for Image Processing**:
   - Brightfield videos were processed using a deep learning (DL) pipeline, enabling us to segment the circulating cells and predict and segment useful landmarks on the endothelial monolayer.
   - The DL pipeline is detailed and available [here](https://github.com/CellMigrationLab/PDAC_DL/tree/main/DL_pipeline#deep-learning-based-image-analysis-pipeline).
   - The segmentation DL models used, along with their training datasets, are listed [here.](https://github.com/CellMigrationLab/PDAC_DL/blob/main/DL_pipeline/segmentation_models.md).
   - The artificial labeling DL models used, along with their training datasets, are listed [here](https://github.com/CellMigrationLab/PDAC_DL/blob/main/DL_pipeline/artificial_labeling_models.md).
   - This pipeline was created by integrating multiple [ZeroCostDL4Mic](https://github.com/HenriquesLab/ZeroCostDL4Mic) notebooks.

### 2. **Tracking Circulating Cells**:
   - Circulating cells were tracked using [TrackMate](https://imagej.net/plugins/trackmate/) and the label detector, as described in our manuscript.
   - Additional information regarding the TrackMate label detector is available [here](https://imagej.net/plugins/trackmate/detectors/trackmate-label-image-detector).
   - Generated tracking data can be found [here.](https://github.com/CellMigrationLab/PDAC_DL/blob/main/CellTracksColab/tracking_datasets.md) 

### 3. **Compilation of Tracks**:
   - The tracks were compiled and processed using a modified version of [CellTracksColab](https://github.com/CellMigrationLab/CellTracksColab).
   - Details on the analysis and the modified notebooks can be found [here](https://github.com/CellMigrationLab/PDAC_DL/tree/main/CellTracksColab#pdac-celltrackscolab).

      - General Notebook [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/CellMigrationLab/PDAC_DL/blob/main/CellTracksColab/PDAC_CellTracksColab_General.ipynb)
      - Count Arrested Tracks Notebook [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/CellMigrationLab/PDAC_DL/blob/main/CellTracksColab/PDAC_CellTracksColab_Arrested_Tracks.ipynb)
      - Track Clustering Notebook [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/CellMigrationLab/PDAC_DL/blob/main/CellTracksColab/PDAC_CellTracksColab_Track_Clustering.ipynb)
      - Landing Notebook [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/CellMigrationLab/PDAC_DL/blob/main/CellTracksColab/PDAC_CellTracksColab_Landing_Tracks.ipynb)

### 4. **Cell Adhesion Simulator**:
   - The simulator employs a probabilistic model to simulate cell attachment, where the attachment probability is influenced by key factors such as the adhesion strength of circulating cells, the properties of the endothelial background, and the flow speed.
   - The simulator is available on its dedicated GitHub repository: [AdhesionFlowSimulator](https://github.com/CellMigrationLab/AdhesionFlowSimulator).

### 5. **Statistical analyses**:
   - The code used to perform the randomization tests and t-tests is available [here](https://github.com/CellMigrationLab/PDAC_DL/tree/main/Statistics) and was modified from  [Plot-Stats](https://github.com/CellMigrationLab/Plot-Stats)
   - Statistical analyses Notebook [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/CellMigrationLab/PDAC_DL/blob/main/Statistics/Plot%26Stats_PDAC.ipynb)


### 6. **Other**:
   - The code used to perform the Analysis of Cell Attachment Patterns described in the paper is available [here](https://github.com/CellMigrationLab/PDAC_DL/tree/main/CellAttachmentSimulation).
   - Analyzing Cell Attachment Patterns: Simulated vs Observed Marker Overlaps Notebook [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/CellMigrationLab/PDAC_DL/blob/main/CellAttachmentSimulation/Analyzing_Cell_Attachment_Patterns_Simulated_vs_Observed_Marker_Overlaps.ipynb)
   - The code for distance and intensity analyses and HUVEC monolayer annotation can be found [here](https://github.com/CellMigrationLab/PDAC_DL/tree/main/Analysis_scripts).



## Citation



---





