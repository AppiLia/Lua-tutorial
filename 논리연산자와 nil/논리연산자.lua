--and는 ture and ture만 true, 
--or는 true or true, false or true, true or false, 
--not은 다항 연산자

---1<x and x<1

--a<-2 or a>1

local x =10
local b = -1<x and x<1
print(b)

local x = 0.5
local b = -1<x and x<1
print(b)

b = x<-1 or x>1
print(b)

local x = 0.5
if -1<x and x<1 then
    print('|x|<1 holds.')
else
    print('|x|>1 holds.')
end

local x = 2
if -1<x and x<1 then
    print('|x|<1 holds.')
else
    print('|x|>1 holds.')
end


local b = true
local c = not b
print(c)


local x = 1
c = not (x<10)

local x, y, z, r = -10, 0, 'hi', ''
--r의 ''는 빈 문자형이다 아무튼 문자형인것 문자형이니까 true다

local b = not x
print(b)
local b = not y
print(b)
local b = not z
print(b)
local b = not r
print(b)


--루아에서 숫자형/ 문자열은 true로 감지

