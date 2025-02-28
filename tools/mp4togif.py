"""
This script helps to create .gif out of a given mp4
"""  """
You might need the following dependencies:
> pip install moviepy==1.0.3

About the generation parameters abouty `editor/typedbnf/ide-demo.gif`:
> python tools/mp4togif.py "demo.mp4" -o editor/typedbnf/ide-demo.gif -r 0.5 -f 3
"""
from moviepy.editor import VideoFileClip
import os
import argparse
from PIL import Image

Image.ANTIALIAS = Image.LANCZOS # type: ignore

def mp4togif(video_path: str, output_path: str | None = None, resize_factor: float = 1.0, fps: int = 15):
    """
    Convert an MP4 video file to a GIF.
    
    Args:
        video_path (str): Path to the input MP4 file
        output_path (str, optional): Path for the output GIF file. If not provided, 
                                    uses the same name as input with .gif extension
        resize_factor (float, optional): Factor to resize the video (1.0 = original size)
        fps (int, optional): Frames per second for the output GIF
        optimize (bool, optional): Whether to optimize the GIF (default: True)
        colors (int, optional): Number of colors in the GIF palette (2-256, default: 256)
                               Lower values reduce file size but decrease quality
    
    Returns:
        str: Path to the created GIF file
    """
    # Validate input file exists
    if not os.path.exists(video_path):
        raise FileNotFoundError(f"Input video file not found: {video_path}")
    
    # Generate output path if not provided
    if output_path is None:
        base_name = os.path.splitext(video_path)[0]
        output_path = f"{base_name}.gif"
    
    # Load the video clip
    clip = VideoFileClip(video_path)
    
    # Resize if needed
    if resize_factor != 1.0:
        clip = clip.resize(resize_factor)
    
    # Write the GIF file with quality parameters
    clip.write_gif(output_path, fps=fps, opt=True)
    
    # Close the clip to free resources
    clip.close()
    
    print(f"GIF created at: {output_path}")
    return output_path


if __name__ == '__main__':
    # Create argument parser
    parser = argparse.ArgumentParser(description='Convert MP4 video to GIF')
    
    # Add arguments
    parser.add_argument('video_path', type=str, help='Path to the input MP4 file')
    parser.add_argument('-o', '--output', type=str, dest='output_path', 
                        help='Path for the output GIF file (default: same name with .gif extension)')
    parser.add_argument('-r', '--resize', type=float, dest='resize_factor', default=1.0,
                        help='Factor to resize the video (default: 1.0 = original size)')
    parser.add_argument('-f', '--fps', type=int, default=15,
                        help='Frames per second for the output GIF (default: 15)')
    
    # Parse arguments
    args = parser.parse_args()
    
    # Call the function with parsed arguments
    mp4togif(args.video_path, args.output_path, args.resize_factor, args.fps)