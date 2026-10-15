#!/usr/bin/env python3
"""Download linked images from SANIT public technology pages for local review only.
Publication/reuse requires authorization from the appropriate rights holders.
"""
import csv
from pathlib import Path
from urllib.request import Request, urlopen
ROOT=Path(__file__).resolve().parent
OUT=ROOT/'images';OUT.mkdir(exist_ok=True)
with (ROOT/'sanit_images_manifest.csv').open(encoding='utf-8-sig',newline='') as f:
    items=list(csv.DictReader(f))
for item in items:
    print('Downloading:',item['filename'])
    try:
        req=Request(item['image_url'],headers={'User-Agent':'Mozilla/5.0 (portfolio image research)'})
        with urlopen(req,timeout=45) as res:
            data=res.read()
        if len(data)<1000: raise ValueError('Image data unexpectedly small')
        (OUT/item['filename']).write_bytes(data)
        print('  Saved',len(data),'bytes')
    except Exception as e:
        print('  FAILED:',e)
print('Check image permissions before adding these files to a public repository.')
