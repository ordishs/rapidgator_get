# Rapidgator Download Script

## Overview
This Bash script automates the process of downloading files from Rapidgator. It uses the Rapidgator API to log in with user credentials, check the file link, and download the file to the local system.

## Prerequisites
- Bash (Unix shell)
- `curl` command-line tool for transferring data with URLs
- `jq` for processing JSON

## Setup
1. **Environment File**: Create a `.env` file in the same directory as the script with the following content, replacing `your_email` and `your_password` with your Rapidgator credentials:

```
email=your_email
password=your_password
```

2. **Permissions**: Ensure the script is executable:

```bash
chmod +x rapidgator_download.sh
```


## Usage
Run the script with the URL of the file you want to download from Rapidgator as a parameter:

```bash
./rapidgator_download.sh <Rapidgator_File_URL>
```

Example:

```
./rapidgator_download.sh https://rapidgator.net/file/1234567890abcdef1234567890abcdef/MyFile.zip.html
```


## Script Flow
1. **URL Input**: The script takes a Rapidgator file URL as an argument.
2. **Credential Loading**: User credentials are loaded from the `.env` file.
3. **API Login**: Logs into Rapidgator using the API and retrieves an access token.
4. **File Check**: Checks the provided file link using the Rapidgator API.
5. **File Download**: Retrieves the direct download URL and downloads the file, saving it with its original filename.

## Notes
- The script is intended for personal use with valid Rapidgator credentials.
- Ensure that the `.env` file is kept secure and not shared, as it contains sensitive information.

