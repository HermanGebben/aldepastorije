#!/bin/bash
# Foto's downloaden van de huidige WordPress-site
# Voer dit script eenmalig uit VOORDAT je WordPress uitschakelt
# Gebruik: bash download-fotos.sh

DOEL="fotos"
mkdir -p "$DOEL"

FOTOS=(
  "IMG_3528.jpg|https://aldepastorije.nl/wp-content/uploads/2020/10/IMG_3528.jpg"
  "Tuin-2.jpg|https://aldepastorije.nl/wp-content/uploads/2021/09/Tuin-2.jpg"
  "Bos2-scaled.jpg|https://aldepastorije.nl/wp-content/uploads/2023/03/Bos2-scaled.jpg"
  "IMG_0605-1.jpg|https://aldepastorije.nl/wp-content/uploads/2023/08/IMG_0605-1.jpg"
  "IMG_0608-2-768x576.jpg|https://aldepastorije.nl/wp-content/uploads/2023/08/IMG_0608-2-768x576.jpg"
  "IMG_0616-1-768x576.jpg|https://aldepastorije.nl/wp-content/uploads/2023/08/IMG_0616-1-768x576.jpg"
  "IMG_0619-768x576.jpg|https://aldepastorije.nl/wp-content/uploads/2023/08/IMG_0619-768x576.jpg"
  "IMG_0621-2-768x576.jpg|https://aldepastorije.nl/wp-content/uploads/2023/08/IMG_0621-2-768x576.jpg"
  "IMG_0622-768x576.jpg|https://aldepastorije.nl/wp-content/uploads/2023/08/IMG_0622-768x576.jpg"
  "IMG_5745.jpg|https://aldepastorije.nl/wp-content/uploads/2023/08/IMG_5745.jpg"
  "IMG_6268.jpg|https://aldepastorije.nl/wp-content/uploads/2023/08/IMG_6268.jpg"
  "IMG_6458.jpg|https://aldepastorije.nl/wp-content/uploads/2023/08/IMG_6458.jpg"
  "IMG_7711-768x576.jpg|https://aldepastorije.nl/wp-content/uploads/2023/08/IMG_7711-768x576.jpg"
  "Bosbergtoren-1024x683-1-300x200.jpg|https://aldepastorije.nl/wp-content/uploads/2025/05/Bosbergtoren-1024x683-1-300x200.jpg"
  "IMG_7156.jpg|https://aldepastorije.nl/wp-content/uploads/2025/05/IMG_7156.jpg"
  "IMG_7157.webp|https://aldepastorije.nl/wp-content/uploads/2025/05/IMG_7157.webp"
  "IMG_7159-768x576.jpg|https://aldepastorije.nl/wp-content/uploads/2025/05/IMG_7159-768x576.jpg"
  "IMG_7161.jpg|https://aldepastorije.nl/wp-content/uploads/2025/05/IMG_7161.jpg"
  "IMG_7166-768x576.jpg|https://aldepastorije.nl/wp-content/uploads/2025/05/IMG_7166-768x576.jpg"
  "IMG_7168.jpg|https://aldepastorije.nl/wp-content/uploads/2025/05/IMG_7168.jpg"
  "IMG_7171-768x576.jpg|https://aldepastorije.nl/wp-content/uploads/2025/05/IMG_7171-768x576.jpg"
  "IMG_7206-768x576.jpg|https://aldepastorije.nl/wp-content/uploads/2025/05/IMG_7206-768x576.jpg"
  "qr-code-pastorije-300x300.png|https://aldepastorije.nl/wp-content/uploads/2025/05/qr-code-pastorije-300x300.png"
)

echo "D'Alde Pastorije – foto's downloaden"
echo "====================================="
OK=0; FAIL=0

for ITEM in "${FOTOS[@]}"; do
  NAAM="${ITEM%%|*}"
  URL="${ITEM##*|}"
  if curl -s -f -o "$DOEL/$NAAM" "$URL"; then
    echo "✓ $NAAM"
    OK=$((OK+1))
  else
    echo "✗ MISLUKT: $NAAM"
    FAIL=$((FAIL+1))
  fi
done

echo ""
echo "Klaar: $OK foto's gedownload, $FAIL mislukt"
if [ $OK -gt 0 ]; then
  echo "Foto's staan in de map '$DOEL/'"
fi
