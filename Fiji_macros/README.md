# ImageJ Macro: Distance Analysis

## Description

This macro automates the process of analyzing distances between two sets of label images (Channel 1 - C1 and Channel 2 - C2), measuring their properties, and merging the two channels for visualization. It uses the DiAna_Analyse plugin for distance analysis between corresponding C1 and C2 label images. The results of the analysis are saved as CSV files, and the merged images are saved as TIFF files for further review.

## Requirements

Before running this macro, ensure that the following plugins are installed in your ImageJ/Fiji setup:
- **DiAna_Analyse** plugin
- **MorphoLibJ** plugin

You can install these plugins through Fiji's updater:
1. Open Fiji.
2. Go to `Help > Update...` and check for updates.
3. Use the update site manager to find and install the plugins if needed.

## Usage Instructions

### Input Data Preparation

1. **Channel 1 (C1) Label Images**: Prepare a folder containing all your label images for Channel 1 (e.g., nuclear or cell label images).
2. **Channel 2 (C2) Label Images**: Prepare a separate folder containing the corresponding label images for Channel 2 (e.g., protein or marker label images).
3. Ensure that both the C1 and C2 folders contain label images with corresponding filenames, as the macro processes them in pairs.

### Running the Macro

1. **Open Fiji/ImageJ**: Start Fiji or ImageJ on your system.
2. **Open the Macro**: Load the macro into the Fiji/ImageJ editor.
3. **Run the Macro**: Click on `Run` in the macro editor.
4. **Select Input Directories**: 
   - The macro will prompt you to select the folders containing the C1 and C2 label images.
5. **Select Output Directories**: 
   - The macro will ask for directories where the CSV distance results and the merged images will be saved.
6. The macro will automatically process the images, perform distance analysis, and save the results.

### Output

- **Distance Results**: CSV files containing the distance analysis results will be saved in the specified output directory for CSVs (`dirSaveCsv`).
- **Merged Images**: TIFF files that merge the C1 and C2 channels for visualization will be saved in the specified output directory for merged images (`dirMerge`).

## File Naming Convention

Ensure that the filenames in the C1 and C2 directories match appropriately. The macro will process files in pairs (one from C1 and one from C2) based on their position in the sorted file list.

## Error Handling

If the number of images in the C1 and C2 folders does not match, the macro will terminate and display an error message. Please ensure that both folders contain the same number of corresponding files.

## Example

1. Place the C1 label images (e.g., `image1_C1.tif`, `image2_C1.tif`, ...) in the `C1` folder.
2. Place the C2 label images (e.g., `image1_C2.tif`, `image2_C2.tif`, ...) in the `C2` folder.
3. Run the macro, select the directories when prompted, and review the generated CSVs and merged TIFF files.

## Notes

- The macro uses 8-bit conversion to merge channels, but this can lead to data loss. Ensure this is acceptable for your analysis, or modify the conversion process as needed.
- After processing, the macro restores the default image scaling settings.

