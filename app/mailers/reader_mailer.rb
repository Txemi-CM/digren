class ReaderMailer < ActionMailer::Base
  default from: "no_reply@digital-renaissance.org"

  def download_email(reader)
  	@reader = reader
  	mail(:to => reader.email, :subject => "You can download your ebook here")
  end

end
