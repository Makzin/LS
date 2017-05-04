5.step(to: 10, by: 3) { |value| puts value }

# this code will print 5, then 8
# it basically will start a sequence at num, in this case 5, and increment by the (optional) step argument (here this is
# 3. If no step argument is passed, it defaults to 1. The first argument is the limit, in this case 10). It will
# execute the code block each time the counter still returns true.
