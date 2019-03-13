__kernel void swapping(__global int* A){
	int i = get_global_id(0); // take threads half of array size to minimize threads used
	int eleid = i*2;
	int temp;
	temp = A[eleid+1];
	A[eleid+1] = A[eleid];
	A[eleid] = temp;
}