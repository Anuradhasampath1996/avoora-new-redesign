magick cta-phone-frame.png ( hole-full.png -alpha copy ) -compose DstOut -composite PNG32:frame-hollow.png
magick cta-screen-avoora.png -resize 682x836! PNG32:content-sized.png
magick -size 693x869 canvas:none content-sized.png -geometry +17+6 -composite frame-hollow.png -composite -quality 92 ../cta-phone-left.webp
magick -size 693x869 xc:#0a0a0a hole-full.png -compose CopyOpacity -composite PNG32:black-screen2.png
magick -size 693x869 canvas:none black-screen2.png -composite frame-hollow.png -composite -flop -quality 92 ../cta-phone-right.webp
