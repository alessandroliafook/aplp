#include <iostream>
#include <string>
using namespace std;

int main(){

    int num, size;
    string input = "";
    
    cout << "Lendo um número..." << endl;
    cin >> num;
    
    cout << "Lendo uma palavra..." << endl;
    cin >> input;
    
    size = input.size();

    cout << num << endl;
    cout << input << endl << "Size " << size << endl;
    cout << "Substring " << input.substr(1, size) << endl;

    return 0;
}
