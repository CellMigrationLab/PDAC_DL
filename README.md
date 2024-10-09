# PDAC DL  [![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.13868959.svg)](https://doi.org/10.5281/zenodo.13868959)


This repository contains all the code, models, and analysis tools developed for the manuscript "Fast label-free live imaging reveals key roles of flow dynamics and CD44-HA interaction in cancer cell arrest on endothelial monolayers." This repository includes deep learning models, cell tracking tools, statistical analyses, and simulation tools used to study cell adhesion dynamics under flow conditions.


### 0. **Data and code**:
   - All data and code associated with the manuscript are available in a dedicated [Zenodo community](https://zenodo.org/communities/pdac_dl) 

### 1. **Deep Learning Pipeline for Image Processing**:
   - Brightfield videos were processed using a deep learning (DL) pipeline, enabling us to segment the circulating cells and predict and segment useful landmarks on the endothelial monolayer.
   - The DL pipeline is detailed and available [here](https://github.com/CellMigrationLab/PDAC_DL/wiki/Deep-Learning%E2%80%90based-Image-Analysis-Pipeline).
   - The segmentation DL models used, along with their training datasets, are listed [here](https://github.com/CellMigrationLab/PDAC_DL/wiki/Segmentation-models).
   - The artificial labeling DL models used, along with their training datasets, are listed [here](https://github.com/CellMigrationLab/PDAC_DL/wiki/Artificial-labeling-models).
   - This pipeline was created by integrating multiple [ZeroCostDL4Mic](https://github.com/HenriquesLab/ZeroCostDL4Mic) notebooks.

### 2. **Tracking Circulating Cells**:
   - Circulating cells were tracked using [TrackMate](https://imagej.net/plugins/trackmate/) and the label detector, as described in our manuscript.
   - Additional information regarding the TrackMate label detector is available [here](https://imagej.net/plugins/trackmate/detectors/trackmate-label-image-detector).
   - The tracks were compiled and processed using a modified version of [CellTracksColab](https://github.com/CellMigrationLab/CellTracksColab).
   - Details on the analysis and the modified notebooks can be found [here](https://github.com/CellMigrationLab/PDAC_DL/wiki/PDAC-CellTracksColab).

      - General Notebook [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/CellMigrationLab/PDAC_DL/blob/main/CellTracksColab/PDAC_CellTracksColab_General.ipynb)
      - Count Arrested Tracks Notebook [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/CellMigrationLab/PDAC_DL/blob/main/CellTracksColab/PDAC_CellTracksColab%20_Arrested_Tracks.ipynb)
      - Track Clustering Notebook [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/CellMigrationLab/PDAC_DL/blob/main/CellTracksColab/PDAC_CellTracksColab_Track_Clustering.ipynb)
      - Landing Notebook [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/CellMigrationLab/PDAC_DL/blob/main/CellTracksColab/PDAC_CellTracksColab_Landing_Tracks.ipynb)

   - Generated tracking data can be found [here.](https://github.com/CellMigrationLab/PDAC_DL/wiki/Tracking-datasets) 

### 3. **Cell Adhesion Simulator**:
   - The simulator employs a probabilistic model to simulate cell attachment, where the attachment probability is influenced by key factors such as the adhesion strength of circulating cells, the properties of the endothelial background, and the flow speed.
   - The simulator is available on its dedicated GitHub repository: [AdhesionFlowSimulator](https://github.com/CellMigrationLab/AdhesionFlowSimulator).

### 4. **Statistical analyses**:
   - The code used to perform the randomization tests and t-tests is available [here](https://github.com/CellMigrationLab/PDAC_DL/wiki/Statistics) and was modified from  [Plot-Stats](https://github.com/CellMigrationLab/Plot-Stats)
   - Statistical analyses Notebook [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/CellMigrationLab/PDAC_DL/blob/main/Statistics/Plot%26Stats_PDAC.ipynb)

### 5. **Other**:
   - Analyzing Cell Attachment Patterns: Simulated vs Observed Marker Overlaps Notebook [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/CellMigrationLab/PDAC_DL/blob/main/CellAttachmentSimulation/Analyzing_Cell_Attachment_Patterns_Simulated_vs_Observed_Marker_Overlaps.ipynb)
   - The code for distance and intensity analyses and HUVEC monolayer annotation can be found [here](https://github.com/CellMigrationLab/PDAC_DL/tree/main/Analysis_scripts).

## Citation

**Fast label-free live imaging reveals key roles of flow dynamics and CD44-HA interaction in cancer cell arrest on endothelial monolayers**  
Gautier Follain, Sujan Ghimire, Joanna W Pylvänäinen, Monika Vaitkevičiūtė, Diana H Wurzinger, Camilo Guzmán, James RW Conway, Michal Dibus, Sanna Oikari, Kirsi Rilla, Marko Salmi, Johanna Ivaska, Guillaume Jacquemet  
*bioRxiv* (2024). doi: [10.1101/2024.09.30.615654](https://doi.org/10.1101/2024.09.30.615654)



---





