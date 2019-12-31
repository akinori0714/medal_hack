class InquiryMailer < ApplicationMailer
  def mail(user)
    @user = user
    mail to: user.email,
         subject: "お問い合わせ"
  end
end
