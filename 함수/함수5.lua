--require() : 외부파일을 실행하는 기능 (다른사람이 작성한 라이브러리를 읽어들이고자 할때 사용)

local t = require 'lib1' --문자열 하나면 ()생략 가능

print(t[1](1,2))

print(t[2](1,2))