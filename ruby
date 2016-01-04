# Emulate grep
ruby -pe 'next unless $_ =~ /regexexp/' < File.txt

# print the line immediately after a regexp, but not the regex matching line
ruby -ne 'puts $_ if @prev =~ /regex/; @prev = $_;' < file.txt

# print the last 2 lines of a file (emulate 'tail -2'); NOTE reads entire file!
ruby -e 'puts STDIN.readlines.reverse!.slice(0,2).reverse!' < file.txt
