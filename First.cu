#include<iostream>

// Cuda library
#include<cuda.h>
using namespace std;
// Cuda kernel function which runs on the GPU
__global__ void myFirstKernel() {
    printf("Hello World from GPU!\n");
    
}

int main() {
    cout<<"Hello World from CPU!"<<endl;
    // Launch the kernel with 1 block and 1 thread
    myFirstKernel<<<1, 1>>>();
    
    // Wait for the GPU to finish before accessing on host
    cudaDeviceSynchronize();
    
    return 0;
}