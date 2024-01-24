#include <cstddef>
#include <iostream>
#include <array>

using std::array;
using std::size_t;

template<size_t N>
int prefix_sum(const array<int, N>& lst)
{
    int sum = 0;
    for (const int& i : lst) {
        sum += i;
    }
    return sum;
}

template<size_t N>
bool non_neg_prefix_sum(const array<int, N>& lst)
{
    return prefix_sum(lst) > 0;
}

template<size_t N>
bool non_pos_prefix_sum(const array<int, N>& lst)
{
    return !non_neg_prefix_sum(lst);
}

int main()
{
    array n{1, 2, 3};
    int x = prefix_sum(n);
    std::cout << x << std::endl;
}
