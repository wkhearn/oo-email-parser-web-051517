# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :emails
  def initialize(emails)
    @emails = emails
    @parsed_emails = emails.split(/\s|'|,/).map{|index| index.strip}.reject{|index| index.empty?}.uniq
  end

  def parse
    @parsed_emails
  end

end
