local a = 10.2
if a>0 then
    print('a is positive')

end

local a = -3
if a>0 then
    print('a is positive')

end

local x =100

if x%2 == 0 then
    print('x is an even number.')
else
    print('x is an odd number.')
end

local x = 99

if x%2 == 0 then
    print('x is an even number.')
else
    print('x is an odd number.')
end

local sung = 'park'

if sung == 'kim' then
    print('Hello Kim teacher')
else
    print("Hello")
end

local sung = 'kim'

if sung == 'kim' then
    print('Hello Kim teacher')
else
    print("Hello")
end

--반지름을 입력받아서 원의 면적을 출력하는 프로그램 
print('Input radius:')
local r = io.read() --io.read로 읽은 값의 기본형은 string
print('r is '..r)
print(type(r))

print('Input radius:')
local r = tonumber(io.read()) --tonumber()는 숫자형으로 변경해줌
-- print('r is '..r)
print(type(r))

local area = 3.14*r^2
print(area)