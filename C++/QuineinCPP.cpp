#include <iostream>
int main() {
std::string s = "std::string s = %c%s%1$c; printf(s.c_str(), 34, s.c_str());";
printf(s.c_str(), 34, s.c_str());
return 0;
}