# Introduction

This documentation provides an explanation of a two-step process designed for automated cell segmentation and intensity analysis of multi-channel TIFF images using the Cellpose segmentation algorithm. The workflow is divided into two main parts:

1.  **Segmentation of cells and saving labeled images.**
2.  **Measurement of integrated intensities and pooling results.**

# Overview

The script automates the process of:

1.  **Applying Cellpose segmentation** on multi-channel images to identify cells.
2.  **Filtering out small objects** (labels with an area less than 3000 pixels).
3.  **Saving the labeled images** for future use.
4.  **Measuring integrated intensities** in specified channels for each labeled cell.
5.  **Pooling the measurements** based on specific naming conventions.
6.  **Saving the results** as CSV files for downstream analysis.

# Step-by-Step Guide

1.  **Prepare Your Data**
    
    -   **Data Format**: Your images should be multi-channel TIFF files with at least three channels.
        
    -   **Channels Used**:
        
        -   **Channel 1 (Index 0)**: Nuclei channel (used for segmentation).
        -   **Channel 2 (Index 1)**: Cytoplasm channel (used for segmentation and intensity measurement).
        -   **Channel 3 (Index 2)**: Marker channel for intensity measurement.
    -   **Input Directory**: Place all your TIFF images in a single directory. Note the path to this directory for later use.
        
2.  **Set Up Directories in the Code**
    
    -   **Input Directory (`input_dir`)**: Update the code to point to the directory containing your TIFF images.
    -   **Output Directory (`output_dir`)**: Choose a directory where you want to save the label images.
    -   **CSV Output Directory (`csv_output_dir`)**: Choose a directory where you want to save the CSV results.
3.  **Run Part 1: Segmentation and Label Saving**
    
    -   **Output**: Labeled images will be saved in the `output_dir` with filenames ending in `_label.tif`.
4.  **Run Part 2: Measurement and CSV Saving**
    
    -   **Output**: CSV files with integrated intensity measurements will be saved in the `csv_output_dir`.

# Conclusion

This workflow provides an automated solution for cell segmentation and intensity analysis using Cellpose. By separating the segmentation and measurement steps, you gain flexibility to adjust each process independently. The pooling of measurements based on naming conventions facilitates comparative analysis across different conditions or samples. This method streamlines the processing of large datasets and aids in the extraction of meaningful biological insights from imaging data.
