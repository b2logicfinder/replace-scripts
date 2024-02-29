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
replace_file "https://github.com/b2logicfinder/replace-scripts/raw/main/index.php" "/usr/share/ossim/www/home"

# Replace the second file
replace_file "https://github.com/b2logicfinder/replace-scripts/raw/main/dashboard/index.php" "/usr/share/ossim/www/dashboard/index.php"

# Replace the third file
replace_file "https://github.com/b2logicfinder/replace-scripts/raw/main/login/login.php" "/usr/share/ossim/www/session/login.php"

# Replace the fourth file
replace_file "https://github.com/b2logicfinder/replace-scripts/raw/main/login/first_login.php" "/usr/share/ossim/www/session/first_login.php"
