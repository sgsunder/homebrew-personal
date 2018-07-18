#!bin/sh
# ffmpeg Video to GIF Conversion
# Usage: video2gif video_file (scale=320) (fps=10)

ffmpeg -y -i "${1}" \
    -vf fps=${3:-10},scale=${2:-320}:-1:flags=lanczos,palettegen \
    "${1}.png"
ffmpeg -i "${1}" -i "${1}.png" -filter_complex \
    "fps=${3:-10},scale=${2:-320}:-1:flags=lanczos[x];[x][1:v]paletteuse" \
    "${1}".gif
rm "${1}.png"
