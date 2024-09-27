// ---------------------------------------------------
// ImageJ Macro: PECAM_mask_processing_tool
// Joanna W. Pylvänäinen
// ---------------------------------------------------
/* 
 * Macro Description:
 * -------------------
 * This ImageJ macro is designed to refine cell-cell junctions from label images of whole cell labels
 * and save the corrected junctions as mask images. It processes PECAM staining images alongside
 * corresponding label images, allowing the user to manually inspect and adjust cell boundaries. 
 * The workflow includes converting the label image into ROIs, displaying the boundaries on the PECAM
 * image, and giving the user the option to refine the boundaries. Once the adjustments are made,
 * the macro converts the refined mask into a binary image, applies morphological operations (such as closing),
 * skeletonizes the junctions, and saves the final processed mask as a TIFF file in the specified output directory.
 *
 * The macro performs the following steps:
 * 
 * 1. Opens a PECAM staining image and the corresponding label image.
 * 2. Converts the mask into ROIs and displays the label boundaries on top of the PECAM image.
 * 3. Provides an interface for the user to inspect and manually adjust the label boundaries.
 * 4. Converts the adjusted mask to a binary image, applies morphological operations, and skeletonizes the result.
 * 5. Saves the final processed mask as a TIFF file in the specified output directory.
 *
 * User Instructions:
 * -------------------
 * 1. When prompted, select the directory containing PECAM sequence images.
 * 2. Select the directory containing the corresponding label images.
 * 3. Select the directory where you want to save the final processed masks.
 * 4. The macro will overlay the PECAM images with the mask boundaries and prompt you to inspect the results.
 * 5. Use the Channels Tool to inspect and improve the boundaries if needed, then click "OK" when satisfied.
 * 6. The macro will automatically process the masks and save them in the output directory.
 *
 * Important Notes:
 * ----------------
 * - Ensure that the filenames of the PECAM images and the mask/label images correspond to each other.
 * - The output processed mask will be skeletonized and saved as a TIFF file with the suffix "_processed".
 */

// Initial cleanup: close any open windows and reset the ROI Manager to avoid conflicts
close("*");
roiManager("reset");

// Set directories for input and output
dirAll = getDirectory("PECAM sequence"); // Directory containing PECAM staining images
dirC1 = getDirectory("labels");          // Directory containing the mask/label images
dirLabels = getDirectory("save_borders"); // Directory where final processed masks will be saved

// Get the file lists from the specified directories
listAll = getFileList(dirAll);  // List of PECAM staining image files
listC1 = getFileList(dirC1);    // List of label/mask files
n1 = lengthOf(listAll);         // Number of PECAM images
n2 = lengthOf(listC1);          // Number of mask files

// Print the number of files in both directories for verification
print(n1 + " " + n2);

// Sort both file lists in alphabetical order to ensure that the corresponding images and masks match up
Array.sort(listAll);
Array.sort(listC1);

// Iterate over the list of PECAM images
for (i = 0; i < n1; i++) {
    // Open the PECAM staining image
    pathAll = dirAll + listAll[i];  // Full path to the PECAM image
    open(pathAll);                  // Open the image
    name = File.nameWithoutExtension; // Get the image name without the file extension
    print(name);                    // Print the name for tracking
    rename("PECAM");                // Rename the image window to "PECAM"
    run("32-bit");                  // Convert the image to 32-bit

    // Open the corresponding mask image
    pathC1 = dirC1 + listC1[i];     // Full path to the corresponding mask/label image
    open(pathC1);                   // Open the mask image
    rename(name + "_labels");       // Rename the mask image to "<PECAM_name>_labels"

    // Convert label image to ROIs and display boundaries on the mask
    labels = getTitle();            // Store the title of the current window
    run("Label image to ROIs");     // Convert the labeled regions into ROIs
    run("Label Boundaries");        // Generate boundary lines from the labels
    rename("borders");              // Rename the boundary image to "borders"

    // Select the original PECAM image and convert it to 8-bit for display purposes
    selectWindow("PECAM");
    run("8-bit");

    // Merge the PECAM image and borders into one window for user inspection
    run("Merge Channels...", "c1=PECAM c2=borders create");

    // Adjust contrast for better visualization of the PECAM image
    Stack.setChannel(1);
    run("Enhance Contrast", "saturated=0.35");
    run("Grays");                   // Convert the PECAM image to grayscale

    // Switch to the borders channel and set it to grayscale
    Stack.setChannel(2);

    // Store the title of the merged image window
    merge = getTitle();

    // Open the Channels Tool and allow the user to inspect the borders
    run("Channels Tool...");
    waitForUser("check borders");  // Wait for the user to confirm the mask's borders

    // Split the merged channels (PECAM and borders) back into separate images
    run("Split Channels");

    // Select the channel that contains the borders and process it further
    selectWindow("C2-" + merge);    // Select the second (border) channel

    // Convert the borders to a binary mask for further analysis
    setThreshold(1, 255, "raw");
    run("Convert to Mask");

    // Perform morphological operations and skeletonization on the mask
    run("Options...", "iterations=3 count=1 black do=Close");  // Close small holes
    run("Skeletonize");                                        // Skeletonize the mask

    // Save the final processed mask as a TIFF file
    saveAs("Tiff", dirLabels + name + "_processed");
}

// Close all open windows and reset the ROI Manager for the next iteration
close("*");
roiManager("reset");
