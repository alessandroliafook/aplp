#include <iostream>
#include <string>
#include <vector>
#include <algorithm>

using namespace std;

int main() {
    string a, b;
    vector<string> lista;
    int i, j; 

    cin >> a;
    cin >> i;

    for(j = 0; j < i; j++){
        cin >> b;
        lista.push_back(b);
    }

    for(j = 0; j < i; j++){
        if(lista[j] == a){
        std::reverse(lista[j].begin(), lista[j].end());
        }      
    } 

    for(j = 0; j < i; j++) {cout << lista[j] << "\n";}

return 0;

}


