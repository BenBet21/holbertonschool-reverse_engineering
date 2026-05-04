#!/bin/bash

source ./messages.sh

if [ $# -ne 1 ]; then
    echo "Error: Please provide an ELF file as argument."
    echo "Usage: $0 <elf_file>"
    exit 1
fi

file_name="$1"

if [ ! -f "$file_name" ]; then
    echo "Error: File '$file_name' not found."
    exit 1
fi

# Validate ELF using readelf (allowed tool)
if ! readelf -h "$file_name" > /dev/null 2>&1; then
    echo "Error: '$file_name' is not a valid ELF file."
    exit 1
fi

elf_info=$(readelf -h "$file_name")

magic_number=$(echo "$elf_info" | grep "Magic" | sed 's/.*Magic:\s*//')
class=$(echo "$elf_info" | grep "Class:" | awk '{print $2}')
byte_order=$(echo "$elf_info" | grep "Data:" | sed 's/.*Data:\s*//')
entry_point_address=$(echo "$elf_info" | grep "Entry point address:" | awk '{print $NF}')

display_elf_header_info
