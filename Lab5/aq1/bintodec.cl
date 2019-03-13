__kernel void bdec(__global int* A,__global int* B){
	int i = get_global_id(0);
	int rem,cnt=0;
	B[i] = 0;
	while(A[i]){
		rem = A[i]%10;
		if(rem == 1){
			for(int i=0;i<cnt;i++){
				rem = rem*2;
			}
			B[i] += rem;
		}
		cnt++;
		A[i] /= 10;
	}
}