#!/usr/bin/perl
use strict;
use warnings;


print <<ENDSTRING;
similar with grep command in unix??
. : 점. 개행문자 제외 한 나머지 문자. 실제 점문자는 \\.
* : 바로 앞 문자의 0 이상 개수. .* 는 잡동사니 any old junk
+ : 바로 앞 문자의 한개 또는 그 이상. ' +' 공백 한개 이상
? : 바로 앞 문자의 있거나 없거나. '-?' 빼기기호 붙거나 없거나
^ : 제일 앞
$ : 제일 뒤
(): 패턴 묶기
'\\1': 역참조
'\\g{1}': 명확한 역참조
[a-zA-Z] : 문자 집합. [\\000-\\177] 모든 7비티 아스키문자와 일치
[^n\-z] : 문자 부정. 'n', '-', 'z' 제외
'\\d' : 모든 숫자
'\\w' : 숫자 포함 모든 문자
'\\s' : 공백문자 [\\f\\t\\n\\r ]. '\\s+' 한개 이상의 공백문자
'\\h' : 가로방향 공백 [\\t ].
'\\v' : 세로방향 공백 문자
'\\R' : 모든 종류의 줄바꿈
'\\D' : 숫자가 아닌 문자
'\\W' : 단어가 아닌 문자
'\\S' : 공백이 아닌 문자
'/[\\dA-Fa-f]+/' : 16진수 숫자 패턴
'/[\\d\\D]' : .와 달리 개행문자 포함한 숫자가 아닌 문자
\\g{N} : 상대적 역참조
?:blah : 무효패턴 (?:give|get)
(?<LABEL>blah) : 라벨부여 $+{LABEL} 로 사용
(\\g{LABEL} : 이전 라벨 재사용. \\k{LABEL} 동일
\\U$1 : 이후 전체 강제 대문자
\\L$1 : 이후 전체 강제 소문자
\\E : 강제변화 U,L 끄기
\\u : 바로 뒤 한번만 대문자
\\l : 바로 뒤 한번만 소문자
ENDSTRING

if( !($ARGV[0]) )
{
	print 'no args';
	sleep(1);
	exit;
}

print "from file: $ARGV[0]\n";
print "match str: $ARGV[1]\n";
my $str = $ARGV[1];

while(<>)
{
	if(/($str)/)
	{
		print "!:$_";
	}
}


