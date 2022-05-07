--break : 반복문 안에서 즉시 빠져나오는 명령

local t = {11,22,100,-3,-56,0,121,-300}
local sum =0
for _,e in ipairs(t) do
    if e==0 then
        break
    end
    sum = sum+e
end
print(sum)

print()

local t = {11,22,100,-3,-56,0,121,-300}
local sum =0
for k,v in ipairs(t) do
    if v==0 then
        break
    end
    print(k,v)
    sum = sum+v
end
print(sum)

print()

local n=1001
local isprime = true
for k=n-1, 2, -1 do
    if n%k ==0 then
        isprime=false
        break
    end
end

if isprime then
    print('prime')
else
    print('notprime')
end
