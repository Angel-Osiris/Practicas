local D1=1
local D2=2
local D3=3
local D4=4
local D5=5
local D6=6
local tm=7000000
local tm2=3500000
local State=0

gpio.mode(D1,0)
gpio.mode(D2,0)
gpio.mode(D3,0)
gpio.mode(D4,0)
gpio.mode(D5,0)
gpio.mode(D6,0)


gpio.write(D1,0)
gpio.write(D2,0)
gpio.write(D3,0)
gpio.write(D4,0)
gpio.write(D5,0)
gpio.write(D6,0)

while true do
 State=0   
gpio.write(D6,1) 
gpio.write(D1,1)
tmr.delay(tm)

while State~=4 do
    gpio.write(D6,1)
    gpio.write(D1,1) tmr.delay(200000)
    State=State+1
    gpio.write(D1,0) tmr.delay(200000)
    
end
gpio.write(D2,1) tmr.delay(tm2)
gpio.write(D6,1) tmr.delay(tm2)
gpio.write(D2,0)
gpio.write(D6,0)

gpio.write(D3,1)
gpio.write(D4,1)
tmr.delay(tm)
State=0
while State~=4 do
    gpio.write(D3,1)
    gpio.write(D4,1) tmr.delay(200000)
    State=State+1
    gpio.write(D4,0) tmr.delay(200000)
    
end
gpio.write(D5,1) 
gpio.write(D3,1)
tmr.delay(tm2)
gpio.write(D5,0) 
gpio.write(D3,0)
end





