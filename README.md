# image optimizer script in bash

This shell simple bash script automates the process of converting JPEG and PNG images to WebP format and updating Markdown files to reference the converted WebP images. This can help you optimize your website or obsidian notes for faster loading times and reduce the size of images while retaining image quality.

## Prerequisites

Before using this script, make sure you have the following dependencies installed on your system:

- `cwebp`: This command-line tool is required for converting images to WebP format. You can install it by following the instructions for your specific operating system.

- `sed`: This utility is used for editing Markdown files, so it should be available on most Unix-based systems by default.
## Usage

1. Clone this repository to your local machine:
   ```bash
   git clone https://github.com/fadyio/image-optimizer.git 
   ```
2. Move the image-optimizer.sh file to the directory you want to optimise the image in.

3. Open a terminal and Run the script to convert the images and edit Markdown files:
   ```bash
   chmod +x image-optimizer.sh
   ./image-optimizer.sh
   ```
4. The script will perform the following actions:
   - Convert JPEG and PNG images in the in all directory and sub-directory to WebP format and will delete the fils with jpg,jpeg,png after convert. 
   - Edit Markdown files in directory  and sub-directory to replace references to PNG and JPEG images with WebP images.


## Acknowledgments

- The WebP conversion is performed using the `cwebp` utility.
- Markdown file editing is achieved using the `sed` command-line tool.