import cv2, zxingcpp
import sys

##	#	f'\n Text:    "{result.text}"'
##	#	f'\n Format:   {result.format}'
##	#	f'\n Content:  {result.content_type}'
##	#	f'\n Position: {result.position}')


if __name__ == "__main__":
    try:
        imgPath = str(sys.argv[1])
        img = cv2.imread(imgPath)
        results = zxingcpp.read_barcodes(img)
        if len(results) == 0:
            print("Error")
            print("No Barcode Detected")
        elif len(results) > 1:
            print("Error")
            print("Multiple barcodes detected")
        else:
            print("Success")
            print(results[0].format)
            print(results[0].text) 
    except:
        print("Error")
        print("Serverside")
