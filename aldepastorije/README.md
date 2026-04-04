# d'Alde Pastorije – Website

Statische website voor [d'Alde Pastorije](https://www.aldepastorije.nl), een Bed & Bos in Hoornsterzwaag, Friesland.

## Structuur

```
aldepastorije/
├── index.html          # Homepagina
├── blokhut.html        # Blokhut (faciliteiten, galerij, FAQ, tarieven)
├── locatie.html        # Locatie & kaart
├── omgeving.html       # Tips in de omgeving
├── contact.html        # Contactpagina met formulier
├── style.css           # Alle opmaak
├── script.js           # Navigatie, lightbox & FAQ-accordion
└── fotos/              # Alle afbeeldingen
```

## Online via GitHub Pages (gratis)

### Eenmalige setup

1. Maak een gratis account op [github.com](https://github.com)
2. Klik op **New repository** → naam bijv. `aldepastorije` → zet op **Public**
3. Klik op **uploading an existing file** en sleep alle bestanden én de map `fotos/` erin
4. Ga naar **Settings → Pages**
5. Kies *Source*: **Deploy from a branch** → `main` → `/ (root)` → **Save**
6. Na 1-2 minuten live op `gebruikersnaam.github.io/aldepastorije`

### Eigen domeinnaam koppelen

7. **Settings → Pages → Custom domain** → vul `aldepastorije.nl` in → Save
8. Pas bij je registrar de DNS aan:

| Type  | Naam | Waarde                   |
|-------|------|--------------------------|
| A     | @    | 185.199.108.153          |
| A     | @    | 185.199.109.153          |
| A     | @    | 185.199.110.153          |
| A     | @    | 185.199.111.153          |
| CNAME | www  | gebruikersnaam.github.io |

GitHub regelt automatisch een gratis SSL-certificaat (https).

## Alternatief: Netlify

Sleep de map naar [netlify.com](https://netlify.com) — direct live, geen account vereist.

## Contactformulier activeren

1. Gratis account op [formspree.io](https://formspree.io)
2. Nieuw formulier aanmaken → kopieer jouw persoonlijke code
3. In `contact.html` aanpassen:
   ```html
   action="https://formspree.io/f/jouw-code"
   ```

## Foto's bijwerken

Zet nieuwe foto's in de map `fotos/` met dezelfde bestandsnaam als de bestaande.
Upload daarna opnieuw naar GitHub — het bestand wordt automatisch overschreven.

## Kosten

| Onderdeel | Kosten |
|-----------|--------|
| GitHub Pages hosting | Gratis |
| Formspree contactformulier | Gratis (max. 50/maand) |
| Domeinnaam aldepastorije.nl | ~€10-15/jaar |
| SSL-certificaat | Gratis |
| **Totaal** | **~€10-15/jaar** |
