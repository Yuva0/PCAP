__kernel void decoct(__global int* A,__global int* B)
{
	int i = get_global_id(0);
	int val = A[i];
	int quo=0,cnt=0;
	//Reversed Octal
	while(A[i] != 0){
		quo = quo*10+A[i]%8;
		A[i] = A[i]/8;
		cnt++;
	}
	
	
	//Reverse
	B[i] = 0;
	while(cnt!=0){
		B[i] = B[i]*10 + quo%10;
		quo = quo/10;
		cnt--;
	}
	
}