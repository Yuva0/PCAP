__kernel void comp(__global int* A,__global int* B){
	int i = get_global_id(0);
	int cnt=0,q=0;
	B[i] = 0;
	while(A[i]){
		if(A[i]%10 == 0)
			q = q*10+1;
		else
			q = q*10 + 0;
		A[i] = A[i]/10;
		cnt++;
	}
	while(cnt--){
		B[i] = B[i]*10 + q%10;
		q = q/10;
	}
}