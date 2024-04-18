#include<stdio.h>
__global__ void hello_world(void)
{
  printf("hello GPU");
}
int main()
{
  printf("hello CPU");
  hello_world<<<1,6>>>();
  cudaDeviceReset();
  return 0;
}