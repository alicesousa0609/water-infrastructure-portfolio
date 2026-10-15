# SANIT Engenharia — Image Extraction Kit

Prepared for Alice Silva de Sousa's water-infrastructure portfolio. Source: https://www.sanit.com.br/en/technologies-en/

## What is included

- `sanit_image_preview.html`: a standalone visual gallery with 12 linked images; **requires internet** to display them.
- `sanit_images_manifest.csv` and `.json`: image titles, original image URLs, official source pages, image type, and notes.
- `download_sanit_images.ps1`: downloads 12 original files to `images/` on a Windows computer.
- `download_sanit_images.py`: Python alternative that performs the same task.
- `github_gallery_section_REQUIRES_PERMISSION.html`: optional gallery section to paste into your own `index.html` **only when reuse is authorised**.
- `images/`: destination folder for the downloaded files. The ZIP does not contain the actual third-party image files: direct image downloads were not possible from this environment.

## Download images on Windows

1. Extract the entire ZIP to a folder.
2. Right-click `download_sanit_images.ps1` and choose **Run with PowerShell**. If restricted by your security settings, do **not** disable security protections; use the Python script instead if available, or open the direct image links in the HTML gallery and save images manually.
3. Check the `images/` directory. All files are downloaded from SANIT's public website to your own PC.
4. Keep the CSV file beside the photos to document provenance and attributions.

## Publishing to GitHub

The SANIT website displays `Copyright ©2026 Sanit Engenharia` and we did not find an explicit open license granting third-party republication. Public display of an image does **not** mean permission to copy and republish it. Obtain written permission from SANIT and, if different, from the image rights holder **before** committing photos or diagrams to your public portfolio. Attribution alone does not substitute for permission.

After authorization: upload the contents of `images/` and then add the HTML fragment in `github_gallery_section_REQUIRES_PERMISSION.html` to your site's `index.html`. Images are referenced as `images/<filename>`.

**Accuracy notice:** Do not label these images as photographs of the user's own SANIT assignments unless independently confirmed. They are SANIT corporate technology references.

## Contact to request reuse permission

Official public contact listed on the site: `comercial@sanit.com.br`.
Proposed request: permission to reproduce specified corporate photographs/diagrams, with full attribution and links, in a non-commercial professional GitHub portfolio for international job applications.
