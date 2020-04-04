# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

 class EmailAddressParser

   @@email_addresses = []

  attr_accessor :emails

  def inititialize(emails)
    @emails = emails
    @@email_addresses << emails
  end

  def parse
    email_address = @@email_addresses.gsub(", ", " ").split
    email_address.uniq
  end

end
