import cv2 as cv
import os

sizeFace = (128,128)
def detectAndDisplay(frame, countImg):
    height, width = frame.shape[0:2]
    cv.VideoWriter('outpy.avi',cv.VideoWriter_fourcc('M','J','P','G'), 10, (width,height))
    frame_gray = cv.cvtColor(frame, cv.COLOR_BGR2GRAY)
    frame_gray = cv.equalizeHist(frame_gray)

    #-- Detect faces
    faces = face_cascade.detectMultiScale(frame_gray)
    for (x,y,w,h) in faces:
        # countImg = countImg + 1
        frame = cv.rectangle(frame, (x,y),(x+w,y+h), (255,0,0), 2 )
        # frame = cv.ellipse(frame, center, (w//2, h//2), 0, 0, 360, (255, 0, 255), 4)

        faceROI = frame_gray[y:y+h,x:x+w]
        faceROI = cv.resize(faceROI, sizeFace)

        pathImg = os.path.join('/home/plee/Desktop/Face-SVM/DATA/ngan' , str(countImg) + '.jpg')
        # print(pathImg)
        cv.imwrite(pathImg, faceROI)
        # cv.imwrite('~\DATA\\ngan\\' + str(countImg) + '.jpg',faceROI)
    
    cv.imshow('Capture - Face detection', frame)

face_cascade = cv.CascadeClassifier()
eyes_cascade = cv.CascadeClassifier()

#-- 1. Load the cascades
if not face_cascade.load('haarcascade_frontalface_alt.xml'):
    print('--(!)Error loading face cascade')
    exit(0)

camera_device = 0
#-- 2. Read the video stream
cap = cv.VideoCapture(camera_device)
if not cap.isOpened:
    print('--(!)Error opening video capture')
    exit(0)
countImg = 0 
while True:
    ret, frame = cap.read()
    if frame is None:
        print('--(!) No captured frame -- Break!')
        break
    # cv.imshow('cap',frame)
    countImg = countImg + 1
    # print(countImg)
    detectAndDisplay(frame,countImg)

    if cv.waitKey(1) & 0xFF == ord('q'):
        break
