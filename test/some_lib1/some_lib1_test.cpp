#include <gtest/gtest.h>

#include <lib1.h>

TEST(SomeLib1Test, powtest)
{
    ASSERT_EQ(get_pow(5), 25);
}
