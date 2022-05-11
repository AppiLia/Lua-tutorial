--테이블(table)

local a = {11,22,33,44}
local b = a
local c = b

a[1]=-10

--실행하면 b도 바뀐것을 볼수있다.
-- 테이블은 참조형(reference) 데이터이다.
--메모리의 주소값에 저장된 값을 바꾼것이라서 해당 a와 똑같은 주소값을 불러온 b는 당연히 바뀐값일수 밖에 없다.
--a,b,c전부 같은 메모리를 참조하고 있으므로 어느것이라도 바꿔도 호출하면 같은곳을 참조하고 있어 호출하면 전부 바뀐다.
for k,v in ipairs(b) do
    print(k,v)
end

b[2] = 0
for k,v in ipairs(a) do
    print(k,v)
end
