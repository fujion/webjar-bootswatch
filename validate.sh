function dir_exists {
  if [[ ! -d $webjar_root/$1 ]]; then
    echo "Directory does not exist: $1"
    exit 1
  else
    echo "Directory exists: $1"
  fi
}

function file_exists {
  if [[ ! -f $webjar_root/$1 ]]; then
    echo "File does not exist: $1"
    exit 2
  else
    echo "File exists: $1"
  fi
}

if [[ "" == "$1" ]]; then
  echo "You must specify the webjar root directory."
  exit 3
fi

webjar_root=$1

dir_exists "dist/cerulean"
dir_exists "dist/cyborg"
dir_exists "dist/flatly"
dir_exists "dist/litera"
dir_exists "dist/lux"
dir_exists "dist/minty"
dir_exists "dist/pulse"
dir_exists "dist/sandstone"
dir_exists "dist/sketchy"
dir_exists "dist/solar"
dir_exists "dist/superhero"
dir_exists "dist/vapor"
dir_exists "dist/zephyr"
dir_exists "dist/cosmo"
dir_exists "dist/darkly"
dir_exists "dist/journal"
dir_exists "dist/lumen"
dir_exists "dist/materia"
dir_exists "dist/morph"
dir_exists "dist/quartz"
dir_exists "dist/simplex"
dir_exists "dist/slate"
dir_exists "dist/spacelab"
dir_exists "dist/united"
dir_exists "dist/yeti"

file_exists "LICENSE"
file_exists "README.md"

echo "=========================="
echo "Validation was successful."
