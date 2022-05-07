--repeat 실행문들 until 조건식
--실행문들이 반드시 한번은 실행된다.
--조건식이 거짓이면 다시 실행하고 실행문 참이면 반복문 탈출

local k=0
repeat
    k=k+1
    print('hi')
until k==3


local sum,k=0,0
repeat
    k=k+1
    sum=sum+k
until k==100
print(sum)

local n = tonumber(io.read())
print(n)

--io.read는 입력받은것을 문자열로 반환
--tonumber안에 들어오는값이 숫자가 아니라면 nil이 나옴

local n 
repeat
    io.write('Input a number:')
    n=tonumber(io.read())
until n
print(n)

--nil이 나오면 false라는 소리고 숫자를 입력할때 까지 repeat하는것
--until n~=nil은 until n과 같다

local n 
repeat
    io.write('Input a positive number:')
    n=tonumber(io.read())
until n and n>0
print(n)

