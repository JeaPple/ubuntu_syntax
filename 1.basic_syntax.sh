# 현재 위치 경로를 출력
pwd

# 현재 위치에서 파일 및 폴더 조회
ls

# 목록조회 자세히
ls -l

# 목록조회 자세히, 숨김파일까지
ls -al

# 목록조회 자세히, 숨김파일, 오래된 순으로 정렬(최신은 alt)
ls -alrt # a=all, l=list, r=reverse, t=time

# 디렉토리 생성
mkdir hyungjin_dir

# 특정 디렉토리로 이동
cd hyungjin_dir

# 상위 디렉토리로 이동
cd ..
# 또는 cd ../

# 루트디렉토리(최상위디렉토리)로 이동
cd /

# 직전폴더로 이동
cd -

# 홈경로(/root)로 이동
cd  

# 상대경로와 절대경로
# 상대경로 : cd ../../ (내현재 위치에서 2번 상위로 이동)
# 절대경로 : cd /root/hyungjin_dir

# 비어있는 파일 만들기
touch first_file.txt

# 파일내용 터미널창에 출력하기
cat first_file.txt

# 파일내용 상위 10줄 출력하기
head first_file.txt

# 파일내용 하위 10줄 출력하기
tail first_file.txt

# 파일내용 상/하위 n개 조회
tail -n 파일명

# 파일내용 실시간 조회 - 보통 로그데이터 실시간 조회할 때 많이 사용됨.
tail -f 파일명

# 파일내용 편집기 : nano, vi
# 도스키 위/아래를 통해 이전 명령어 조회
# 이전에 실행했던 명령어 모두 조회
history
# 현재 내 터미널창에 보이는 명령어 내역 정리
clear
# ^c를 통해 입력 명령어 취소

# 파일삭제 명령어. -f 옵션을 통해 묻지않고 삭제.
rm 파일명
# 디렉토리째 삭제
rm -r 디렉토리명

# 터미널창에 문자열을 출력
echo "hello world"
# echo를 통해 파일에 내용 입력
# > : 덮어쓰기, >> : 추가모드 - 보통 로그찍는 용도이기 때문에 추가모드를 많이 사용한다.
echo "hello world" >> first_file.txt

# cp는 복사명령어
# cp 복사대상 복사될파일명
# 폴더 복사시에는 -r 옵션 ex) cp -r 1_dir 2_dir
cp 1_file.txt 2_file.txt 
cp 1_file.txt ../2_file.txt

# grep : 파일 내에서 문자열 찾기 
# r:모든 디렉토리내, n:라인수 출력, i:대소문자 구분없이
grep -rni "hello" .

# find : 이름으로 파일 또는 디렉토리 찾기
find . -name "*.java"
find . -type f

# find와 grep의 혼용
find . -name "*.txt" | xargs grep -rni "hello"
find . -name "*.txt" -exec grep -rni "hello" {} \;

# 타입은 file인 파일중에 이름은 first로 시작하고
# 그 파일들 안에 hello라는 키워드가 들어가 있는 문장 찾기
find . -name "first*" -type f | xargs grep -rni "hello"