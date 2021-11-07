
#include <stdio.h>
#include <math.h>
#include <time.h>
#define BILLION  1000000000.0


int main()
{
    struct timespec start, end;
 
    clock_gettime(CLOCK_REALTIME, &start);
    
	int pixels8[8][8] = {{90, 72, 38, 8, 55, 38, 245, 240},
						 {95, 54, 21, 18, 16, 150, 190, 235},
						 {80, 28, 24, 33, 44, 55, 200, 240},
						 {100, 60, 58, 44, 0, 65, 150, 280},
						 {180, 170, 55, 48, 0, 140, 132, 220},
						 {220, 200, 220, 2, 13, 50, 70, 85},
						 {240, 238, 0, 1, 18, 11, 60, 95},
						 {240, 220, 200, 100, 31, 30, 32, 250}};
	int pixels[3][3];
	int Gx1[3][3] = {{1,0,-1},{2,0,-2},{1,0,-1}};
	int Gy1[3][3] = {{1,2,1},{0,0,0},{-1,-2,-1}};
	int Gx2[3][3] = {{1,0,-1},{1,0,-1},{1,0,-1}};
	int Gy2[3][3] = {{1,1,1},{0,0,0},{-1,-1,-1}};
	
	int num1, num2, num3;
	int res_sobel=0;
	int res_prewitt=0;
    printf("prewitt :\n");
    for(int r = 0; r < 6; r++){
    	for(int c = 0; c < 6; c++){
    		pixels[0][0] = pixels8[0+r][0+c];
			pixels[0][1] = pixels8[0+r][1+c];
			pixels[0][2] = pixels8[0+r][2+c];
			pixels[1][0] = pixels8[1+r][0+c];
			pixels[1][1] = pixels8[1+r][1+c];
			pixels[1][2] = pixels8[1+r][2+c];
			pixels[2][0] = pixels8[2+r][0+c];
			pixels[2][1] = pixels8[2+r][1+c];
			pixels[2][2] = pixels8[2+r][2+c];
			int temp1=0,temp2=0,temp3=0,temp4=0;
			for(int z= 0; z < 3; z++){
    			for(int x = 0; x < 3; x++){
    				temp1+=Gx1[z][x]*pixels[z][x];
    				temp2+=Gy1[z][x]*pixels[z][x];
    				temp3+=Gx2[z][x]*pixels[z][x];
    				temp4+=Gy2[z][x]*pixels[z][x];
    		}}
    		res_sobel = sqrt(temp1*temp1 + temp2*temp2);
    		res_prewitt = sqrt(temp3*temp3 + temp4*temp4);
			// det1 : Sobel
			//printf("%d ",res_sobel);

			// det2 : Prewitt
			printf("%d ",res_prewitt);

    	}
    	printf("\n");
    }
    clock_gettime(CLOCK_REALTIME, &end);
    double time_spent = (end.tv_sec - start.tv_sec) +
                        (end.tv_nsec - start.tv_nsec) / BILLION;
 
    printf("The elapsed time is %f seconds\n", time_spent);
    return 0;
}
