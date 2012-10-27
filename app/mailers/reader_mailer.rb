class ReaderMailer < ActionMailer::Base
  default from: "no_reply@digital-renaissance.org"

  def download_email(reader)
  	@reader = reader
  	mail(:to => reader.email, :subject => "Digital Renaissance - Download your ebook for free now")
  end

end
