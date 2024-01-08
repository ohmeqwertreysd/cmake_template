#include <iostream>

#include <lib1.h>
#include <lib2.h>

int main()
{
    std::cout << "Im a executable" << std::endl;

    print_lib1_name();
    print_lib2_name();

    return 0;
}