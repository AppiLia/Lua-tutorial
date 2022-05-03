-- 테이블은 보면 배열과 비슷해보임
--local t = {11,22,33,44.5,-291}

local t = {11, 22, 33, 40.5, -100}
--중괄호 포함해서 안에 있는 내용을 테이블이라고 함
--{1번 index,2번 index.....}
--1번 부터 시작
--첫번째 요소는 1번 index

local a = t[1]
print(a)

a = t[3]
print(a)

print('-----------------')

print(t[2])
t[2] = -101
print(t[2])

print('-----------------')

local names = {'john', 'Peter', 'salesio', 'Kim'}
local personal = {23, 'David', true}

--table의 element는 lua의 어떤 data라도 올수 있다


print(names[2])
print(personal[2])


personal[2] = names[3]
print(personal[2])


local x = {true, {11,22},'table'}
local y = x[2][2]

print(x[2])
print(y)

local a = 22.3
local b = 'Park'
local t = {a,b,personal}

--table의 요소로 변수와 table도 들어올수도 있다
print(t[1], t[2], t[3])
local m =t[3][2]
print(m)
print(t[3][2])


print('----------------------------')

--테이블앞에 #을 붙이면 테이블의 요소의 갯수를 반환
--문자 앞에 붙이면 문자들의 갯수를 반환
print(#'s  222   d')
print(#names)
print(#personal)
print(#x)
print(#x[2])
print(#t)

print('-----------------')

local t = {x=11, y=22}
--key value pair
--x를 key라고 하고 11은 value라고 함
--value에 접근하려면 key에 접근을 하면 된다.
local a = t.x

--t라는 테이블의 x가 가진 value
local b = t.y
--t,y는 t table의 y라는 key가 가지는것의 value

t.x = 'Park'
--테이블이름.key
--읽을수도 있고 쓸수도 있음

print(t.x, t.y)
local a = t['x'] --t.x
local b = t['y'] --t.y

print(a,b)



print('----------------------')

local person1 = {name='Park', age=23, height=175}

print(person1[1])
--이렇게 쓰면 key-value pair는 index값이 붙지 않기 때문에 접근이 안됨

print(person1['name'])
--키 네임은 문자열로 주어야 된다 ''를 빼면 안됨
--key는 식별자 규칙에 따른다

local a = person1.name --person1['name']

print(a)

person1.age = 24 --person['age']=24

print(person1.age)

--lua에서 table의 ket-value pair를 접근하는 방식
--t.key : 주로 많이 쓰인다
--t['key'] : 특수한 경우에 사용됨 (key가 문자열로 주어지는 경우)

local key = 'height'
print(person1[key])
--키 자체가 문자열 변수로 주어지는 경우에는 t['key']로 접근해야됨

print('----------------------------------')

--테이블에는 key-value pair이나 index가붙은 요소들만 오는게 아니라 이 2게가 혼용이 될수 있음

local tt = {name='Kim', 11, 'GilDong', age =20, 22}

-- name='Kim'이 1번 index가 아니라 index가 붙은 요소인 11, 'GilDong', 22가 각각 1,2,3번 index가 된다

print(tt[1],tt[3])
print(tt.name)
print(tt.age)

print(tt['name'])