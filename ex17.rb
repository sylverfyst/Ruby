#we could do these two on one line, how? by removing the second variable and nesting it in the write operation
#it's kind of ugly, but it works.  I prefer more verbose code since it's easier to read.
open(ARGV[1], 'w').write(open(ARGV[0], 'r').read)