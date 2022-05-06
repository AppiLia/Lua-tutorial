-- while 조건식 do 실행문 end

local k = 1
while k<=5 do
    print('hi')
    k=k+1
end
print(k)


print('')



local t = {'hi','Nice','to','meet','you'}
local k = 1
while k<=#t do
    print(t[k])
    k=k+1
end
print('Me too.')


print('')


local sum,k = 0,1
while k<=100 do
    sum=sum+k
    k=k+1
end
print('sum from 1 to 100: '..sum)