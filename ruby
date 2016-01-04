# Emulate grep
ruby -pe 'next unless $_ =~ /regexexp/' < File.txt

# print the line immediately after a regexp, but not the regex matching line
ruby -ne 'puts $_ if @prev =~ /regex/; @prev = $_;' < file.txt

