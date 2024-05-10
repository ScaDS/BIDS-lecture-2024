// the sample define the GPU behaviour when accessing pixels outside of the image
__constant sampler_t sampler = CLK_NORMALIZED_COORDS_FALSE | CLK_ADDRESS_CLAMP_TO_EDGE | CLK_FILTER_NEAREST;

// the kernel function itself, with the parameters
__kernel void maximum_z_projection(
    IMAGE_src_TYPE  src,            // the input image, named 'src' 
    IMAGE_dst_TYPE  dst             // the output image, named 'dst'
) 
{
  const int x = get_global_id(0);  // the x coordinate of the current pixel, provided by the GPU thread
  const int y = get_global_id(1);  // the y coordinate of the current pixel, provided by the GPU thread

  IMAGE_src_PIXEL_TYPE max = 0;
  for (int z = 0; z < GET_IMAGE_DEPTH(src); ++z)  // loop over all z-axis range of the image
  {
    // read the pixel value at the current position (x,y,z) from the input image 'src'
    const IMAGE_src_PIXEL_TYPE value = READ_IMAGE(src, sampler, POS_src_INSTANCE(x,y,z,0)).x;  
    if (value > max || z == 0) {  // conditional statement to find the maximum value
      max = value;
    }
  }

  // write the pixel value at the current position (x,y,z) of the output image 'dst'
  WRITE_IMAGE(dst, POS_dst_INSTANCE(x,y,0,0), CONVERT_dst_PIXEL_TYPE(max));
}