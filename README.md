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
    
4. **Other**:
   - The code used to perform the Analysis of Cell Attachment Patterns described in the paper is available [here](https://github.com/CellMigrationLab/PDAC_DL/tree/main/CellAttachmentSimulation).
   - Analyzing Cell Attachment Patterns: Simulated vs Observed Marker Overlaps Notebook [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/CellMigrationLab/PDAC_DL/blob/main/CellAttachmentSimulation/Analyzing_Cell_Attachment_Patterns_Simulated_vs_Observed_Marker_Overlaps.ipynb)

   

## Citation

If you find the resources or code in this repository useful for your projects, please cite our paper:

*Quantitative Analysis of Pancreatic Cancer Cell Attachment to Endothelial Cells*

Gautier Follain, Sujan Ghimire*, Joanna Pylvänäinen*, Camilo Guzmàn, James RW Conway, Marko Salmi, Johanna Ivaska#, Guillaume Jacquemet#.

*For an accurate citation format, please look at the publication details once the paper is available.*

---





