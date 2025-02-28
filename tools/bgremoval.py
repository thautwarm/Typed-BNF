"""
This script helps to remove the background of an image
according to the minimal color group assignment.
Author: Taine Zhao <twshere@outlook.com>
License: MIT
"""
from PIL import Image
from collections import Counter
from pathlib import Path

def remove_bg(image_path: str):
    """
    use R/10 + B/10 + G/10 as the group key
    set the pixel in the largest group to transparent (A = 0)
     nd save the image to *.bgrm.png and *.ico
    """

    # Load the image
    image = Image.open(image_path, mode='r')

    # assure the image is RGBA
    image = image.convert('RGBA')

    # Get the dimensions of the image
    width, height = image.size

    # Create a dictionary to store the groups
    groups = Counter()

    # Iterate over the pixels in the image
    for x in range(width):
        for y in range(height):
            # Get the pixel value
            pixel = image.getpixel((x, y))

            # Get the group key
            groupKey = (pixel[0] // 10, pixel[1] // 10, pixel[2] // 10)

            # Add the pixel to the group
            groups[groupKey] += 1

    # Find the largest group
    largestGroup = max(groups.keys(), key=lambda x: groups[x])

    # Set the pixels in the largest group to transparent
    for x in range(width):
        for y in range(height):
            pixel = image.getpixel((x, y))
            groupKey = (pixel[0] // 10, pixel[1] // 10, pixel[2] // 10)
            if groupKey == largestGroup:
                image.putpixel((x, y), (0, 0, 0, 0))
    
    # Save the image
    outputPath = Path(image_path).with_suffix('.bgrm.png').absolute()
    image.save(outputPath)
    

    # generate icon from image
    icon_path = Path(image_path).with_suffix('.ico').absolute()
    image.save(icon_path, sizes=[(128, 128)])

    return image
    


if __name__ == '__main__':
    import sys
    remove_bg(sys.argv[1])
