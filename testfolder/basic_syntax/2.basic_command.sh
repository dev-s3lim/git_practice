#현재 workspace(working directory), staging area 상태 확인
git status

# . 은 모든 수정 추가 사항 add (commit이 될 것만 하는 경우는 . 찍으면 안될 수도 있음)
git add .

# 특정 파일만 add 할 경우에는.. (경로까지 포함해야함)
git add testfolder/test1.txt

# commit을 통해 메시지 타이틀과 메시지 내용을 커밋이력으로 생성
git commit -m "메시지제목" -m "메시지내용"

# add 함과 동시에 commit
git commit -am "메시지"

# git commit 만 하고 엔터 시, vi모드 진입 -> 첫줄 : 타이틀, 두번째 줄부터 내용
git commit

# commit 이력 확인
git log
git log --oneline

# push
git push origin 브랜치명
# 충돌 발생시 충돌 무시하고 로컬 기준으로 원격에 강제 덮어쓰기
git push origin 브랜치명 --force

git log -all
git checkout 특정commitID
git checkout 브랜치

#HEAD는 현재 체크아웃된 브랜치의 커밋을 의미
#다시 원래의 commit으로 돌아오기
git checkout 브랜치(main등)