import pytesseract
from pytesseract import Output
import PIL.Image
import cv2

"""
Page segmentation modes: 
O Orientation and script detection (OSD) only
1 Automatic page segmentation with OSD. ‘
2 Automatic page segmentation, but no OSD, or OCR.
3 Fully automatic page segmentation, but no OSD. (Default)
4 Assume a single column of text of variable sizes.
5 Assume a single uniform block of vertically aligned text.
6 Assume a single uniform block of textJ
7 Treat the image as a single text line.
8 Treat the image as a single word.
9 Treat the image as a single word in a circle.
10 Treat the image as a single character.
11 Sparse text. Find as much text as possible in no particular order.
12 Sparse text with OSD.
13 Raw line. Treat the image as a single text line, bypassing hacks that are Tesseract—specific.
"""

"""
OCR Engine modes:
0 Legacy engine only.
1 Neural nets LSTM engine only.
2 Legacy + LSTM engines.
3 Default, based on what is available.
"""

myconfig = r'--psm 11 --oem 3'

img = cv2.imread('logos.jpeg')
hegiht, width, _ = img.shape

# function 01
# boxes = pytesseract.image_to_boxes(img, config=myconfig)
# for box in boxes.splitlines():
#     box = box.split(' ')
#     x, y, w, h = int(box[1]), int(box[2]), int(box[3]), int(box[4])
#     cv2.rectangle(img, (x, hegiht - y), (w, hegiht - h), (0, 255, 0), 2)

# function 02
data = pytesseract.image_to_data(img, config=myconfig, output_type = pytesseract.Output.DICT)
amount_boxes = len(data['text'])
for i in range(amount_boxes):
    if float(data['conf'][i]) > 80:
        (x, y, w, h) = (data['left'][i], data['top'][i], data['width'][i], data['height'][i])
        cv2.putText(img, data['text'][i], (x, y - 10), cv2.FONT_HERSHEY_SIMPLEX, 0.5, (0, 255, 0), 2)

cv2.imshow('img', img)
cv2.waitKey(0)