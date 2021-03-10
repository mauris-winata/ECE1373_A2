#include <algorithm>
#include <float.h>
#include "conv_layer.h"

void conv_layer(float * mem,            // global memory pointer
                int input_offset,       // offset of inputs
                int output_offset,      // offset of outputs
                const int b,            // batch size
                const int od,           // output dimensions
                const int ox,           // output width
                const int oy,           // output height
                const int id,           // input dimensions
                const int ix,           // input width
                const int iy,           // input height
                const int s,            // stride
                const int k)            // kernel size
{

// Global memory interface
#pragma HLS INTERFACE m_axi port=mem depth=2147483648
// Bind all control ports to a single bundle
#pragma HLS INTERFACE s_axilite port=b bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=od bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=ox bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=oy bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=id bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=ix bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=iy bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=s bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=k bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=input_offset
#pragma HLS INTERFACE s_axilite port=output_offset
#pragma HLS INTERFACE s_axilite port=return bundle=CTRL_BUS

//#pragma HLS array partition variable=*mem cyclic factor=2

  int num_weights = id*od*k*k;
  int num_biases = od;
  int num_input = b*id*ix*iy;
  int num_output = b*od*ox*oy;

  // Batch
  for (int b_=0; b_< b; b_++)
  {
	#pragma HLS LOOP_TRIPCOUNT min=0 max=10 avg=10
//	#pragma HLS pipeline //opt 1
//	#pragma HLS unroll factor=2
    // Output Dimensions (Feature Maps)
    for (int o_d = 0; o_d < od; o_d++)
    {
	  #pragma HLS LOOP_TRIPCOUNT min=0 max=512 avg=512
      // Output Y Dimension
      for (int o_y = 0; o_y < oy; o_y++)
      {
		#pragma HLS LOOP_TRIPCOUNT min=0 max=224 avg=224
        // Output X Dimension
        for (int o_x = 0; o_x < ox; o_x++)
        {
		  #pragma HLS LOOP_TRIPCOUNT min=0 max=224 avg=224
//		  #pragma HLS pipeline
          // Set bias
           float output_element = mem[input_offset/sizeof(float) + num_weights + o_d];
           float output_element_test_1 = mem[input_offset/sizeof(float) + num_weights + o_d];
           float output_element_test_2 = 0;
          // Weighted Sum:

          // Input Dimensions (Feature Maps)
          for (int i_d = 0; i_d < id; i_d++)
          {
			  #pragma HLS LOOP_TRIPCOUNT min=0 max=512 avg=512
			  #pragma HLS pipeline
//			  #pragma HLS unroll factor=2
              // Input X Dimension - unrolled innermost loops
              int i_y = o_y*s;
              int iiy = 0;

              int i_x = o_x*s;
              int iix = 0;
              int output_element_1 = 0;
              int output_element_2 = 0;
              int output_element_3 = 0;
              int output_element_4 = 0;
              int output_element_5 = 0;
              int output_element_6 = 0;
              int output_element_7 = 0;
              int output_element_8 = 0;
              int output_element_9 = 0;

              //First Iteration
              if (k > 0) output_element_1 = mem[input_offset/sizeof(float) + num_weights+num_biases+ b_*id*ix*iy + i_d*ix*iy + i_y*ix + i_x]*
					  mem[input_offset/sizeof(float) + o_d*id*k*k + i_d*k*k + iiy*k + iix];

              if (k > 1) {
            	  i_x++;
            	  iix++;
            	  output_element_2 = mem[input_offset/sizeof(float) + num_weights+num_biases+ b_*id*ix*iy + i_d*ix*iy + i_y*ix + i_x]*
         					  mem[input_offset/sizeof(float) + o_d*id*k*k + i_d*k*k + iiy*k + iix];
              }

              if (k > 2) {
            	  i_x++;
            	  iix++;
            	  output_element_3 = mem[input_offset/sizeof(float) + num_weights+num_biases+ b_*id*ix*iy + i_d*ix*iy + i_y*ix + i_x]*
         					  mem[input_offset/sizeof(float) + o_d*id*k*k + i_d*k*k + iiy*k + iix];
              }

              //Second Iteration
              if (k > 0) {
                  i_x = o_x*s;
                  iix = 0;
            	  i_y++;
				  iiy++;
            	  output_element_4 = mem[input_offset/sizeof(float) + num_weights+num_biases+ b_*id*ix*iy + i_d*ix*iy + i_y*ix + i_x]*
					  mem[input_offset/sizeof(float) + o_d*id*k*k + i_d*k*k + iiy*k + iix];
              }

              if (k > 1) {
            	  i_x++;
            	  iix++;
            	  output_element_5 = mem[input_offset/sizeof(float) + num_weights+num_biases+ b_*id*ix*iy + i_d*ix*iy + i_y*ix + i_x]*
         					  mem[input_offset/sizeof(float) + o_d*id*k*k + i_d*k*k + iiy*k + iix];
              }

              if (k > 2) {
            	  i_x++;
            	  iix++;
            	  output_element_6 = mem[input_offset/sizeof(float) + num_weights+num_biases+ b_*id*ix*iy + i_d*ix*iy + i_y*ix + i_x]*
         					  mem[input_offset/sizeof(float) + o_d*id*k*k + i_d*k*k + iiy*k + iix];
              }
              //Third Iteration
              if (k > 0) {
                  i_x = o_x*s;
                  iix = 0;
            	  i_y++;
				  iiy++;
            	  output_element_7 = mem[input_offset/sizeof(float) + num_weights+num_biases+ b_*id*ix*iy + i_d*ix*iy + i_y*ix + i_x]*
					  mem[input_offset/sizeof(float) + o_d*id*k*k + i_d*k*k + iiy*k + iix];
              }

              if (k > 1) {
            	  i_x++;
            	  iix++;
            	  output_element_8 = mem[input_offset/sizeof(float) + num_weights+num_biases+ b_*id*ix*iy + i_d*ix*iy + i_y*ix + i_x]*
         					  mem[input_offset/sizeof(float) + o_d*id*k*k + i_d*k*k + iiy*k + iix];
              }

              if (k > 2) {
            	  i_x++;
            	  iix++;
            	  output_element_9 = mem[input_offset/sizeof(float) + num_weights+num_biases+ b_*id*ix*iy + i_d*ix*iy + i_y*ix + i_x]*
         					  mem[input_offset/sizeof(float) + o_d*id*k*k + i_d*k*k + iiy*k + iix];
              }

              //Sum
              output_element += output_element_1 + output_element_2 + output_element_3
            		  + output_element_4 + output_element_5 + output_element_6
					  + output_element_7 + output_element_8 + output_element_9;

          }
          // Write output
          mem[output_offset/sizeof(float) + b_*od*ox*oy + o_d*ox*oy + o_y*ox + o_x] = std::max(0.0f, output_element);
        }
      }
    }
  }
}



