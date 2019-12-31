class ApplicationMailer < ActionMailer::Base
  default from:      'メダルハック運営事務局'
          bcc:       'sample@gmail.com'
          reply_to:  'ample+reply@gmail.com'
  layout 'mailer'
end
