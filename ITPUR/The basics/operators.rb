digit = 1234

thousands_place = digit/1000
hundreds = digit % 1000 / 100
tens = digit % 1000 % 100 / 10
ones = 1234 % 1000 %100 % 10
