#include <iostream>

int main(int ac,char **av)
{
    if(ac < 2)
        return 1;
    std::string res(av[1]);
    
    for (size_t i = 0; i < res.length(); i++)
    {
        res[i] = res[i] - i;
    }
    std::cout << res << "\n";
    return 0;
}