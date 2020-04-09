
local D1=1
local D2=2
local D3=3
local D4=4
local D5=5
local D6=6
local D7=7
local tm=2500000

gpio.mode(D1,0)
gpio.mode(D2,0)
gpio.mode(D3,0)
gpio.mode(D4,0)
gpio.mode(D5,0)
gpio.mode(D6,0)
gpio.mode(D7,0)

function display (d1,d2,d3,d4,d5,d6,d7)
      gpio.write(D1,d1)
      gpio.write(D2,d2)
      gpio.write(D3,d3)
      gpio.write(D4,d4)
      gpio.write(D5,d5)
      gpio.write(D6,d6)
      gpio.write(D7,d7)
end


while true do

    print("SALUDO")
    display(0,1,1,0,1,1,1)
    print("h")
tmr.delay(tm)

display(1,1,1,1,1,1,0)
      tmr.delay(tm)
      print("o")


      display(0,0,0,1,1,1,0)
      display(0,0,0,1,1,1,0)
      tmr.delay(tm)
      print("l")
      
      display(1,1,1,0,1,1,1)
      tmr.delay(tm)
      print("A")


      tmr.delay(1000000)

print("FRASE")
display(1,1,0,0,1,1,1)
      tmr.delay(tm)
      print("p")

      display(1,1,1,0,1,1,1)
      tmr.delay(tm)
print("R")


display(0,0,0,0,1,1,0)
      tmr.delay(tm)
      print("I")

      display(1,1,1,0,1,1,0)
      tmr.delay(tm)
      print("N")
      
      display(1,0,0,1,1,1,0)
      tmr.delay(tm)
      print("c")

      display(1,0,0,1,1,1,1)
      tmr.delay(tm)  
print("E")

display(1,0,1,1,0,1,1)
      tmr.delay(tm)
print("S")

display(1,1,1,0,1,1,1)
      tmr.delay(tm)
print("A")

tmr.delay(1000000)

print("CBTIS-85")
display(1,0,0,1,1,1,0)
tmr.delay(tm)
print("c")


display(1,1,1,1,1,1,1)
tmr.delay(tm)
print("B")

display(0,0,0,1,1,1,1)
tmr.delay(tm)
print("t")

display(0,0,0,0,1,1,0)
tmr.delay(tm)
print("I")

display(1,0,1,1,0,1,1)
tmr.delay(tm)
print("S")


display(0,0,0,0,0,0,1)
tmr.delay(tm)
print("-")


display(1,1,1,1,1,1,1)
tmr.delay(tm)
print("8")


display(1,0,1,1,0,1,1)
tmr.delay(tm)
print("5")

end
