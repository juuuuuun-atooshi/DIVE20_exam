class NoticeMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mailer.sendmail_topic.subject
  #
  def sendmail_topic(topic)
    @greeting = "Hi"
    @topic = topic

    mail to: "test1@test.com",
         subject: '【なんちゃってFacebook】新規記事が投稿されました'
  end
end
