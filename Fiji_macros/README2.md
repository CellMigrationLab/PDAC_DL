# ImageJ Macro: PECAM Mask Processing Tool

## Description
The **PECAM Mask Processing Tool** is an ImageJ macro designed to refine cell-cell junctions from label images of whole-cell labels and save the corrected junctions as mask images. This macro processes PECAM (Platelet Endothelial Cell Adhesion Molecule) staining images alongside corresponding label images, allowing users to inspect and manually adjust cell boundaries. 

After adjustments, the macro converts the label boundaries into a binary mask, applies post-processing steps (morphological operations such as closing, and skeletonization), and saves the processed mask as a TIFF file. The final mask represents the refined cell-cell junctions.

## Macro Workflow

1. **Open PECAM Image**: Opens the PECAM staining image from a selected directory.
2. **Open Corresponding Label Image**: Opens the corresponding label/mask image from a selected directory.
3. **Convert Mask to ROIs**: Converts the label image into ROIs (Regions of Interest).
4. **Display Boundaries**: Generates and displays the label boundaries on top of the PECAM image.
5. **User Interaction**: Provides an interface for the user to inspect and manually adjust the label boundaries using the **Channels Tool**.
6. **Post-Processing**: After user confirmation, the macro converts the mask to a binary image, applies morphological operations (e.g., closing), and skeletonizes the result.
7. **Save Processed Mask**: The final processed mask is saved as a TIFF file in the specified output directory.

## User Instructions

1. **Step 1**: When prompted, select the directory containing PECAM sequence images.
2. **Step 2**: Select the directory containing the corresponding label images.
3. **Step 3**: Select the directory where you want to save the final processed masks.
4. **Step 4**: The macro will overlay the PECAM images with the mask boundaries and prompt you to inspect the results.
5. **Step 5**: Use the **Channels Tool** to inspect and improve the boundaries if necessary, then click "OK" when satisfied.
6. **Step 6**: The macro will automatically process the masks and save them in the output directory.

## Requirements

- ImageJ/Fiji with the necessary plugins for ROI and mask processing.
- A folder containing PECAM staining images.
- A folder containing corresponding label images (mask files).

## Outputs

- Processed mask images will be saved in the output directory as TIFF files with the suffix `_processed`. The processed mask is skeletonized and represents the refined cell-cell junctions.

## Important Notes

- Ensure that the filenames of the PECAM images and the mask/label images correspond to each other to avoid processing mismatches.
- The macro will only save the final processed mask, not the intermediate images.
- The script works best when the mask and PECAM images are carefully aligned.

## Code Structure

### Initial Setup

The macro starts by closing any open windows and resetting the ROI Manager to ensure a clean workspace.

```java
close("*");
roiManager("reset");
