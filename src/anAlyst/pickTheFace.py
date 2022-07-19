import numpy as np
import cv2
import os
import sys

def imread_korean(path):
    with open(path, "rb") as fp:
        bytes = bytearray(fp.read())
        numpy_array = np.asarray(bytes, dtype=np.uint8)
    return cv2.imdecode(numpy_array, cv2.IMREAD_UNCHANGED)

def save_face(actor,ext,face_cascade) :
    try :
        save_img_dir =f"./public/image/{actor}.jpg"
        new_save_img_dir = "./public/image"
        print(new_save_img_dir+"/" +actor+ "_face.jpg")

        img = cv2.imread(f"{save_img_dir}")
        gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
        faces = face_cascade.detectMultiScale(gray, 1.3,5)

        for (x,y,w,h) in faces:
            actor_face = gray[y:y+h, x:x+w]
            try:
                if not os.path.exists(new_save_img_dir) :
                    os.makedirs(new_save_img_dir)
            except OSError as e:
                print(e)
            _, im_write_korean = cv2.imencode(".jpg", actor_face)
            im_write_korean.tofile(f"{new_save_img_dir}/{actor}_face.jpg")
    except :
        pass


if __name__ == "__main__":
    face_cascade = cv2.CascadeClassifier("./src/anAlyst/haarcascade_frontalface_alt.xml")

    save_face(sys.argv[1],sys.argv[2],face_cascade)