# Emulate grep
ruby -pe 'next unless $_ =~ /regexexp/' < File.txt

