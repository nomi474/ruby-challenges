print("Give me a calcNumber: ")
originalNum = gets.to_i
calcNum =originalNum + 5
#print "Num + 5: #{calcNum}\n"
calcNum *=2
#print "(Num +5) *2: #{calcNum}\n"
calcNum -=4
#print "((Num +5) *2) - 4: #{calcNum}\n"
calcNum= calcNum / 2
#print "calcNum = calcNum/2:  #{calcNum}\n"
calcNum = calcNum - originalNum
#print "calcNum - originalNum: #{calcNum}\n"
puts("Number is #{calcNum.to_s}")