require "test_helper"

class CrudNotificationMailerTest < ActionMailer::TestCase
  test "creat_notification" do
    mail = CrudNotificationMailer.creat_notification
    assert_equal "Creat notification", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "update_notification" do
    mail = CrudNotificationMailer.update_notification
    assert_equal "Update notification", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "delete_notification" do
    mail = CrudNotificationMailer.delete_notification
    assert_equal "Delete notification", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
