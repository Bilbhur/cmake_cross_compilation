#include <iostream>
#include <string>

int main() {
    std::cout << "Hello, World! What's your name ?" << std::endl;
    std::string test;
    std::cin >> test;

    std::cout << "Glad to meet you " << test << std::endl;
    return 0;
}
