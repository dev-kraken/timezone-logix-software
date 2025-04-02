#!/bin/sh

# Install tzdata package
apk add --no-cache tzdata

# Set timezone to America/Los_Angeles
cp /usr/share/zoneinfo/America/Los_Angeles /etc/localtime

# Set timezone environment variable
echo "America/Los_Angeles" > /etc/timezone

# Verify the change
date
