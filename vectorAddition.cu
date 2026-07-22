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

//Defining workers for work
if(index<n){ //index is less than the size of the array or elements in storage
    c[index]=a[index]+b[index]; //vector addition of the two arrays and storing in the third array
}

}



int main(){

    int n; //size of vector
    cout<<"Enter the size of the arrayto be computed on GPU: "; 
    cin>>n; 

    // Allocating memory on the CPU for the input and output vectors
    float *a = new float[n];
    float *b = new float[n];
    float *c = new float[n];

    // Initializing the input vectors with values
    for(int i=0; i<n; i++){
    a[i]=0.1f; //assigning values
    b[i]=0.2f;
    }

    

    // Formula (N+threadperblock-1)/threadsperblock for first CUDA kernel prameter

    //Formula threads second arguement <1024 for second CUDA kernel parameter
    return 0;
}