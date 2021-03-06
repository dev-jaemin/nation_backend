#!/usr/bin/env python
# -*- coding: utf-8 -*-

from keras.models import load_model
from PIL import Image, ImageOps
import numpy as np
import sys

def getResult():
    # Load the model
    model = load_model('./nation-man/keras_model.h5')

    # Create the array of the right shape to feed into the keras model
    # The 'length' or number of images you can put into the array is
    # determined by the first position in the shape tuple, in this case 1.
    data = np.ndarray(shape=(1, 224, 224, 3), dtype=np.float32)
    # Replace this with the path to your image
    path = '../../public/image/1658155035456.jpg'
    image = Image.open(path).convert('RGB')
    # jpg = path.replace("\\","/").split("/")[-1]
    # bmp = jpg.replace("jpg", "bmp")
    image.save('../../public/image/1658155035456.bmp')

    #resize the image to a 224x224 with the same strategy as in TM2:
    #resizing the image to be at least 224x224 and then cropping from the center
    size = (224, 224)
    image = ImageOps.fit(image, size, Image.Resampling.LANCZOS)
    
    #turn the image into a numpy array
    image_array = np.asarray(image)
    # Normalize the image
    normalized_image_array = (image_array.astype(np.float32) / 127.0) - 1
    # Load the image into the array
    print(data[0].shape)
    print(normalized_image_array.shape)
    data[0] = normalized_image_array
    # run the inference
    prediction = model.predict(data)
    maxVal = max(prediction[0])
    idx = np.where(prediction[0] == maxVal)[0][0]

    vFile = open('./nation-man/labels.txt', encoding = 'UTF-8')
    vLine = 0
    line = "temp"
    for temp in vFile:
        if(vLine == idx):
            line = temp
        vLine +=1

    className = line
    print(className)

getResult()
