#!/usr/bin/perl
use strict;
use warnings;

use 5.010;
use utf8;

use Data::Dumper;

use Web::Scraper;
use LWP::UserAgent;

use Encode;
use Digest::MD5 qw(md5 md5_hex md5_base64);
use Time::HiRes qw(sleep);

require 'gp_time.pl';
require 'gp_system.pl';
require 'gp_html.pl';
require 'gp_notify.pl';

$| = 1;

my $targetName = 'clien_sold';
my $targetURL = 'http://www.clien.net/cs2/bbs/board.php?bo_table=sold';
my $baseUrl = 'http://www.clien.net/cs2/';

#my @keyWords = qw(아이패드 n40l ibm inkpad 갤럭시
##[ㄱ-힣]
#);
#
#say "@keyWords";

#open FH, '>', 'aaa123.txt';
#foreach (@keyWords) {
#	say FH $_;
#}
#close FH;

## 저장소 지정.
my $baseDir = 'D:/Dropbox/_mySearch/';
chdir $baseDir or die "failed chdir : $!\n";
print "curDir:", $baseDir, "\n";

my @keyWords = _gp_listFileCP949("market_keyword_cp949.txt");
say "@keyWords";

#my $md5NameLast = 0;
#my $switch = 0;
##useless md5 when data contain index..
my $lastIndex = 0;
my ($fileNameDate, $fileNameTime);

my $ua = LWP::UserAgent->new();

while(1)
{
	if( _chkDay() )
	{
		$fileNameDate = $targetName.'_'._fm_date();
		_makeHtml("$fileNameDate.html");
		open FH, '>>', "$fileNameDate.html";
		print FH _makeSpan("생성 시각: "._fm_date().'-'._fm_time()),"<hr>";
		close FH;
	}

	print scalar localtime, " ... ";
	my $res = $ua->get($targetURL);

	if( $res->is_success )
	{
		my $utf8data = $res->content;

		my $decUtf8 = decode('utf-8', $utf8data);

		my $scrp_list = scraper{
			process ".mytr > td", key => 'TEXT';
			process ".post_subject > a", link => '@href', name => 'TEXT';
			result 'key', 'link', 'name';
		};

		my $scrp = scraper{
			process ".mytr", "list[]" => $scrp_list;
			result 'list';		##!! result 생략하면 $scr->list 식으로 호출해야함.
		};

		my $scr = $scrp->scrape($decUtf8);
	#	print Dumper($scr);

		print "list#: ", scalar @{$scr}, "  lastIndex: $lastIndex\n";	##!! undefined value as an ARRAY reference
		
		my $maxIndex = 0;	#루프 내 최신 인덱스 #최신 게시글이 보통 앞에 온다.
		foreach my $data (@{$scr}) {
	#		my $enc949 = encode('cp949', $data->{name});
			_gp_printConsoleEnd("$data->{key}: $data->{name}", "\r");

			my $curIndex = $data->{key};

			## 최신 인덱스 갱신			
			if( $curIndex > $maxIndex )
			{
				$maxIndex = $curIndex;
			}
			## 최신 인덱스가 아닌 것은 패스.
			if(!($curIndex > $lastIndex))
			{
				print ' 'x79, "\r";
				last;
			}

			foreach my $keyWord (@keyWords) {
				if( $data->{name} =~ m/$keyWord/i )
				{
					_gp_printConsoleEnd ("[$keyWord]#$data->{key}: $data->{name}", "\n");

					my $name = $data->{name};
					my $link = substr($data->{link}, 3);
					$link = $baseUrl.$link;
					#_gp_printConsoleEnd($link), "\n";

					open FH, '>>', "$fileNameDate.txt";
					print FH scalar localtime, ":\n";
					print FH $name, "\n", $link, "\n\n";
					close FH;

					open FH, '>>', "$fileNameDate.html";
					print FH _makeSpan((scalar localtime)."  [$keyWord]"), "<br>";
					print FH _makeAHref("#$curIndex: ".$name, $link), "<br><br>";
					close FH;

					_gp_notify("clien[$keyWord]", $name);
				}
			}
			sleep(0.5);
			print ' 'x79, "\r";
		}
		$lastIndex = $maxIndex;
	}
	
	my $sleepSec = 59;
	while( $sleepSec )
	{
		print scalar localtime, " ... ";
		printf "%04dsec\r", $sleepSec;
		--$sleepSec;
		sleep 1;
	}
}