#!/bin/bash

# Function to replace a file
replace_file() {
    local source_url=$1
    local dest_file=$2

    # Download the file from the source URL
    curl -LJO $source_url

    # Check if the download was successful
    if [ $? -eq 0 ]; then
        # Replace the existing file with the downloaded file
        mv "$(basename $source_url)" "$dest_file"
        echo "File replaced successfully: $dest_file"
    else
        echo "Failed to download the file from $source_url. Please check the source URL and try again."
    fi
}

# Replace the first file
replace_file "https://www.networkfort.com/wp-content/uploads/2019/07/imgpsh_fullsize_anim-4.png" "/usr/share/ossim/www/pixmaps/logo/ossim_contrast_logo.png"

# Replace the second file
replace_file "https://www.networkfort.com/wp-content/uploads/2019/07/imgpsh_fullsize_anim-4.png" "/usr/share/ossim/www/pixmaps/logo/av_contrast_logo-past.png"

# Replace the third file
replace_file "https://www.networkfort.com/wp-content/uploads/2019/07/imgpsh_fullsize_anim-4.png" "/usr/share/ossim/www/pixmaps/logo/av_contrast_logo.png"

# Replace the fourth file
replace_file "https://www.networkfort.com/wp-content/uploads/2019/07/imgpsh_fullsize_anim-4.png" "/usr/share/ossim/www/pixmaps/logo/logo_ossim.png"

# Replace the fifth file
replace_file "https://www.networkfort.com/wp-content/uploads/2019/07/imgpsh_fullsize_anim-4.png" "/usr/share/ossim/www/pixmaps/logo/logo_siem.png"
