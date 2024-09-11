// ---------------------------------------------------
// ImageJ Macro: Distance Analysis
// Joanna W. Pylvänäinen
// ---------------------------------------------------
//
// Description:
// This macro automates the process of analyzing distances between two sets of images (Channel 1 - C1 and Channel 2 - C2), 
// measuring their properties, and merging the two channels for visualization. It uses the DiAna_Analyse plugin for distance 
// analysis between corresponding C1 and C2 images. The results of the analysis are saved as CSV files, and the merged images 
// are saved as TIFF files for further review.
//
// User Instructions:
// 1. Ensure that the DiAna_Analyse and MorphoLibJ plugins are installed in ImageJ/Fiji.
// 2. Place your Channel 1 (C1) images and Channel 2 (C2) images in separate folders.
// 3. Run this macro. When prompted, select the folders containing the C1 and C2 images.
// 4. The macro will process each corresponding pair of images (one from C1 and one from C2), perform distance analysis, 
//    and merge the channels for visualization.
// 5. Results will be saved as follows:
//    - Distance analysis results will be saved as CSV files in the specified "dirSaveCsv" directory.
//    - Merged images will be saved as TIFF files in the specified "dirMerge" directory.
// 6. Ensure that the file lists in both directories (C1 and C2) have corresponding names to match C1 and C2 images correctly.
// 7. Modify the directory paths in the macro if necessary, or select directories interactively during runtime.
//
// ---------------------------------------------------

// Close all open windows
close("*");

// Set the directory for Channel 1 images (C1)
dirC1 = getDirectory("cc"); // Prompt user to select the folder for C1 images

// Get the list of files in the C1 directory
listC1 = getFileList(dirC1);
Array.sort(listC1); // Sort the list alphabetically
Array.print(listC1); // Print the list for debugging
n1 = lengthOf(listC1); // Count the number of files
print(n1); // Print the number of C1 images

// Set the directory for Channel 2 images (C2)
dirC2 = getDirectory("FN"); // Prompt user to select the folder for C2 images

// Get the list of files in the C2 directory
listC2 = getFileList(dirC2);
Array.sort(listC2); // Sort the list alphabetically
Array.print(listC2); // Print the list for debugging
n2 = lengthOf(listC2); // Count the number of files
print(n2); // Print the number of C2 images

// Check if the number of files in C1 and C2 directories match
if (n1 != n2) {
    exit("Error: Number of files in C1 and C2 directories do not match.");
}

// Set the directory where the CSV distance results will be saved
dirSaveCsv = getDirectory("save_csv");

// Set the directory where the merged images will be saved
dirMerge = getDirectory("save_merge");

// Set measurement options: minimum value, no redirection, 3 decimal points
run("Set Measurements...", "min redirect=None decimal=3");

//------------------------------

// Enable batch mode for smoother and faster processing
setBatchMode(false);

// Start loop to process each pair of C1 and C2 images
for (i = 0; i < n1; i++) {

    // Process Channel 1 (C1) image
    pathC1 = dirC1 + listC1[i]; // Get full path for the C1 image
    open(pathC1); // Open C1 image
    title = getTitle(); // Get the image title
    
    title_noex = File.getNameWithoutExtension(pathC1); // Get filename without extension for future use
    
    print(title); // Print title for debugging
    rename("C1"); // Rename image to C1 for clarity
	
	run("Remap Labels"); // Remap the labels (custom operation)
	run("glasbey on dark"); // Apply a specific color map for visualization

    run("Measure"); // Measure the image properties to get the number of objects

    // Process Channel 2 (C2) image
    pathC2 = dirC2 + listC2[i]; // Get full path for the C2 image
    open(pathC2); // Open C2 image
    title2 = getTitle(); // Get the image title
    print(title2); // Print title for debugging
    rename("C2"); // Rename image to C2 for clarity
	
	run("glasbey on dark"); // Apply the same color map as for C1
    run("Remap Labels"); // Remap the labels (custom operation)
    run("Measure"); // Measure the image properties to get the number of objects

    
    // Perform distance analysis between C1 and C2
    selectImage("C1"); // Select the C1 image
    selectImage("C2"); // Select the C2 image
    run("DiAna_Analyse", "img1=C1 img2=C2 lab1=C1 lab2=C2 adja kclosest=1"); // Run distance analysis with specific parameters
    
    // Save the adjacency results as a CSV file
    selectWindow("AdjacencyResults");
    saveAs("Results", dirSaveCsv + title_noex + "_distances.csv");

    // Merge the two channels (C1 and C2) for visualization
    selectWindow("C1");
    run("Conversions...", " "); // Ensure no scaling during conversion
    run("8-bit"); // Convert C1 to 8-bit
    
    selectWindow("C2");    
    run("Conversions...", " "); // Ensure no scaling during conversion
    run("8-bit"); // Convert C2 to 8-bit
    
    // Merge C1 and C2 into a single image
    run("Merge Channels...", "c1=C1 c2=C2 create");
    rename(title); // Rename the merged image with the original title
    saveAs("Tiff", dirMerge + title_noex + "+merge"); // Save the merged image as a TIFF

    // Close all image windows after processing
    close("*");
    
    // Close the CSV result window to prevent clutter
    close(title_noex + "_distances.csv");
}

// Re-enable conversion settings (scaling enabled by default)
run("Conversions...", "scale");

