require "test_helper"

class PostMailerTest < ActionMailer::TestCase
  test "newpost_email" do
    mail = PostMailer.newpost_email
    assert_equal "Newpost email", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
