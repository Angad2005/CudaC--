#include<iostream>
#include<cuda.h>

#include<cmath>
using namespace std;


//const word used to say rea donly from the input vector and pointers pont to the arrays in the GPU memory
__global__ void kernel(const float*a, const float*b, float*c, int n){
//blockDim.x is the number of threads in a block of GPU
//threadIdx.x is the index of the thread in a block
//blockIdx.x is the index of the block in a grid of blocks

//Multiplication of blockDim.x and blockIdx.x gives the index of the first thread in a block in the grid of blocks
//Adding threadIdx.x gives the index of the thread in the grid of blocks
    int index = blockDim.x * blockIdx.x + threadIdx.x;

//blockDim.x= size of team
//threadId.x= unique id of worker in the team
//blockIdx.x= unique id of team in the grid of teams
}



int main(){

    // Formula (N+threadperblock-1)/threadsperblock for first CUDA kernel prameter

    //Formula threads second arguement <1024 for second CUDA kernel parameter
    return 0;
}