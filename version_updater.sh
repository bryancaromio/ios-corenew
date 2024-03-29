#!/bin/bash

# Obtener el nombre del archivo podspec (asumiendo que solo hay uno en el directorio actual)
podspec_file=$(find . -type f -name "*.podspec" | head -n 1)

# Obtener la versión actual del podspec
current_version=$(grep "s.version" "$podspec_file" | awk -F "'" '{print $2}')

# Incrementar la versión (parche)
new_version=$(echo $current_version | awk -F. -v OFS=. '{$NF++; print}')

# Actualizar la versión en el podspec
sed -i '' "s/s.version *= *'$current_version'/s.version = '$new_version'/g" "$podspec_file"

# Imprimir la nueva versión
echo "Nueva versión: $new_version"

# Asegurarse de que el cambio en el podspec esté reflejado en el commit
git add "$podspec_file"
git commit -m "config: podspec updated to $new_version [version]"

# Crear un nuevo tag y hacer push
# git tag -a $new_version -m "Version $new_version"
# git push origin develop
# git push origin $new_version

echo "Subida de versión completada a la versión $new_version"
