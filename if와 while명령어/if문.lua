-- if 조건문 then 실행문 end
-- if 조건문 then 실행문1 else 실행문2 end
io.write('any number:') --print는 강제로 줄넘김이 있는데 io.write는 print와 다르게 강제로 줄넘김이 없음
local n = tonumber(io.read())

if n%2 == 0 then
    print('even')
else
    print('odd')
end

-- 조건문1 then 실행문1 elseif 조건문2 then 실행문2 ... else 실행문n end

io.write('type a number:')
local n = tonumber(io.read())

if n<0 then
    print('negative')
elseif n>0 then
    print('positive')
else
    print('zero')
end

io.write('혈중알콜농도(측정거부시 -1을 입력):')
local d = tonumber(io.read())
if d == -1 then
    print('1년~5년 이하 징역')
elseif d<0.03 then
    print('처벌 없음')
elseif d<=0.08 then
    print('1년 이하 징역')
elseif d<=0.2 then
    print('1년~2년이하 징역')
else
    print('2년~5년 이하 징역')
end
