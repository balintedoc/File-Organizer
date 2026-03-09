
#!/bin/bash

# File Organizer Script

# Create folders
mkdir -p Images Documents Videos Music Archives Scripts Others

for file in *; do
    if [[ -f "$file" ]]; then
        case "${file##*.}" in
            jpg|jpeg|png|gif|webp)
                mv "$file" Images/
                ;;
            pdf|doc|docx|txt|odt)
                mv "$file" Documents/
                ;;
            mp4|mkv|mov|avi)
                mv "$file" Videos/
                ;;
            mp3|wav|flac)
                mv "$file" Music/
                ;;
            zip|tar|gz|rar|7z)
                mv "$file" Archives/
                ;;
            sh|py|js)
                mv "$file" Scripts/
                ;;
            *)
                mv "$file" Others/
                ;;
        esac
    fi
done

echo "Files organized successfully."
