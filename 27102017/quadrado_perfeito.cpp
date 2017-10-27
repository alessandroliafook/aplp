#include <iostream>
#include <string>

using namespace std;

int main(){
    int len, i, j;
    bool out = true;

    cin >> len;

    int mat[len][len];

    for(int i = 0; i < len; i++){
        for(int j = 0; j < len; j++){
            cin >> mat[i][j];
        }
    } 
    
    int lin1 = 0, lin2 = 0;

    for(int i = 0; i < len; i++){

        for(int j = 0; j < len; j++){
            lin2 = lin2 + mat[i][j];
        }
        if(i != 0 && lin1 != lin2){out = false; break;}
	
        }

        lin1 = lin2; 
        lin2 = 0;

    }
 

    if(out){cout << "True";}
    else {cout << "False";}

    return 0;

}

