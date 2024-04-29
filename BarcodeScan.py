import cv2, zxingcpp
import sys
import requests

##	#	f'\n Text:    "{result.text}"'
##	#	f'\n Format:   {result.format}'
##	#	f'\n Content:  {result.content_type}'
##	#	f'\n Position: {result.position}')


def attemptInfoGrab():
    json_link = "https://world.openfoodfacts.org/api/v0/product/" + results[0].text + ".json"
    response = requests.get(json_link)
    
    if response.status_code == 200:
        productData = response.json()
        
        product_name = productData.get('product', {}).get('product_name')
        #product_name = productData.get('product_name', 'Unknown')
        image_url = productData.get('product', {}).get('selected_images', {}).get('front', {}).get('display', {}).get('en')

        proteins = productData.get('product', {}).get('nutriments', {}).get('proteins')
        fat = productData.get('product', {}).get('nutriments', {}).get('fat')
        carbs = productData.get('product', {}).get('nutriments', {}).get('carbohydrates')
        energy = productData.get('product', {}).get('nutriments', {}).get('energy')
        calories = round(int(energy)/4.184)        


        print(product_name)
        print(image_url)
        print(calories)
        print(proteins)
        print(carbs)
        print(fat)
    else:
        #print("Failed to fetch JSON data. Status code:", response.status_code)
        pass



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
            attemptInfoGrab()
    except:
        print("Error")
        print("Serverside")


