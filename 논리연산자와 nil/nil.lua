--nil 은 선언되지 않은 변수의 값 == NULL 이라고 생각하면 될것같음
--선언이 되었는데 아무값도 들어가 있지 않는 변수의 값 또한 nil

local a
print(a)
--변수 선언만 하고 아무값도 대입 안하면 nil

print(b)
--선언조차 되지 않은 변수값이라 nil

local c = nil
print(c)
--nil자체가 값이기 때문에 nil의 대입도 가능


local a,b = 10
print(a,b)
--b가 초기값이 없으니 nil이 됨

local x = 'hi all'
x = x..' yes'
print(x)

x=nil
print(x)


if x==nil then
    print('x is nil')
end


local x1 = 0
local x2 = ''
local x3 = false
local x4 -- nil
print(not x1)
print(not x2)
print(not x3)
print(not x4)

--nil은 false값을 가짐

print('------------------')

if x then
    print('true')
else
    print('false')
end


