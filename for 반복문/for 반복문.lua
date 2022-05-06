-- for 반복변수=시작값, 끝값[, 증감값] do 실행문들 end
--[]<-넣어도 되고 안넣어도됨(생략) 왜? 증감값은 기본값이 1이기 때문

for count=10, 0, -1 do
    print(count)
end

for count=10, 0, -1 do
    print(count)
end
--print('final count'..count)
--반복변수는 반복문 안에서만 사용이 가능하고 반복문이 끝나면 소멸한다.

for _=1,5 do
    print('hi')
end

local sum = 0
for k=1, 100 do
    sum=sum+k
end
print(sum)
--반복문 위에서 선언된 변수는 반복문 안에서 자유롭게 접근 가능

local sum = 0
for k=0, 100,2 do
    sum=sum+k
end
print(sum)
--1~100 짝수들만의 합

local sum = 0 
for k=1, 100 do
    if k%2==0 then
        sum=sum+k
    end
end
print(sum)
--1~100 짝수들만의 합

local dan = 7
for k=1,9 do
    local r = dan *k -- r=지역변수 do~end 사이에서만 사용가능
    print(dan..'X'..k..' = '..r)
end

for dan = 2,9 do
    for k=1,9 do
        local r=dan *k
        print(dan..'X'..k..'='..r)
    end
    if dan<9 then
        print('----------')

    end
end


-- for i, e in ipairs(table) do 실행문들 end 
-- i = index 넘버 값, e=index에 해당하는 요소 값

local t ={22,33,'park',-1,'kim'}
for id, e in ipairs(t) do
    print(id,e,type(e))
end

local mathscore = {75,90,56,98,33,69}
local sum = 0
for _, score in ipairs(mathscore) do
    sum=sum+score
end
local average = sum/#mathscore
print(average)

--for k, v in pairs(table) do 실행문들 end

local t={11,x=22,y=33,44}
for k,v in pairs(t) do
    print(k,v)
end

--key-value는 먼저쓴게 밑으로 나중에 쓴게 위로 쌓이는듯