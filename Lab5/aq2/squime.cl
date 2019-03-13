__kernel void prime(__global int* A,__global int* B){
	int idx = get_global_id(0);
	int fac=1;
	for(int i=2;i<=A[idx]/2;i++){
		if(A[idx]%i == 0){
			B[idx] = A[idx]*A[idx];
			return;
		}
	}
	B[idx] = A[idx];
}