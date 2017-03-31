convert -units PixelsPerInch /Users/macbookpro/Desktop/tesstest/tesstest.pdf -density 500 /Users/macbookpro/Desktop/tesstest/test.png
convert test.png -fill white -draw 'rectangle 10,10 20,20' -background white -flatten +matte /Users/macbookpro/Desktop/tesstest/test2.png
tesseract /Users/macbookpro/Desktop/tesstest/test2.png /Users/macbookpro/Desktop/tesstest/out -l eng+ben
