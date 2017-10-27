#include <stdio.h>

int fibo(int num)
{
 
   if (num <= 0) { return 0; }
    else if (num == 1) { return 1; }
    else {return fibo(num - 1) + fibo(num - 2);}

}

int main(){
    int input, a, b, c, d, e, f, g;

    scanf("%d", &input);
    a = fibo(input);
    b = fibo(input + 1);
    c = fibo(input + 2);
    
    d = a % 10;
    e = b % 10;
    f = c % 10;

    g = d + e + f;
       
    printf("%d", g);
}
