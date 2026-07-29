#include <pawntest>
#include <session_utils>

TEST(formats_session_ids)
{
    new sessionId = FormatSessionId(5);
    ASSERT_EQ(sessionId, 1005);
}

TEST(validates_session_ids)
{
    new invalid = IsValidSession(999);
    new valid = IsValidSession(1000);

    ASSERT_FALSE(invalid);
    ASSERT_TRUE(valid);
}
