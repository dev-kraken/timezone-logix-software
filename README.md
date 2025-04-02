# Timezone Setup Script

This repository contains a shell script to set the timezone to America/Los_Angeles in an Alpine-based Docker container.

## Description

The `set_timezone.sh` script performs the following tasks:
- Installs the `tzdata` package.
- Copies the timezone file for America/Los_Angeles to `/etc/localtime`.
- Sets the timezone environment variable in `/etc/timezone`.
- Verifies the change by printing the current date and time.

## How to Use

1. **Host the Script:**  
   Push the `set_timezone.sh` script to your Git repository. For example, if hosted on GitHub, the raw file URL might be:  
   `https://raw.githubusercontent.com/dev-kraken/timezone-logix-software/main/settimezone.sh`

2. **Run via Curl:**  
   In your Alpine-based Docker container, you can download and execute the script with:
   ```sh
   curl -s https://raw.githubusercontent.com/dev-kraken/timezone-logix-software/main/settimezone.sh | sh
    ```
3. **Using in a Dockerfile:**  
   Incorporate the script into your Dockerfile as follows:
    ```dockerfile
    FROM alpine:latest
   
    # Install curl and run the timezone setup script
    RUN apk add --no-cache curl && \
    curl -s https://raw.githubusercontent.com/dev-kraken/timezone-logix-software/main/settimezone.sh | sh && \
    apk del curl
    
    CMD ["sh"]
    ```
