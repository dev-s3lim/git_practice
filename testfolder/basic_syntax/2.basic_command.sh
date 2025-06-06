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

# fetch 내 소스 코드에 반영은 안됨 (d까지 헤드 안 옮김)
# pull 내 소스 코드에 반영됨 (d까지 헤드 옮겨버림)
# fetch는 merge 없이 origin main을 로컬 레포까지 가지고 오는것
# pull = fetch 후 merge
# 습관적 fetch

# pull은 원격의 변경사항을 로컬로 내려받는것 (fetch + merge)
git pull origin main

# fetch 변경사항을 로컬로 가지고오되, 병합은 하지 않는것
git fech origin main

# 만약 모든 브랜치의 변경사항을 가져오려면
git fetch --all

# 커밋간의 차이점 확인
git diff ID_A ID_B
git diff Branch_1 Branch_2 # 브랜치간의 비교도 가능


# 코드 수정 후 저장 > 취소 (ui discard changes)
# Add 후 취소 > add 및 작업 취소 (ui discard changes)
# 커밋 취소하는법

# 가장 최신의 커밋 취소
git reset HEAD~1
git reset HEAD^

# 이미 push된 커밋 사항 되돌리기 (완전한 취소 X) -> 새로운 Commit_ID 생성
git revert Commit_ID

# 수정 임시 저장
git stash

# 꺼내쓰기
git stash pop

# 저장한 작업 목록 조회
git stash list

# 저장 목록 전체 삭제
git stash clear

# 태그 관련 명령어
# 가장 최근의 커밋이 태그에 명시됨
git tag 태그버전명

# 태그 release : **코드의 커밋 푸쉬와 별개로 작업을 진행해야 함**
git push origin 태그버전명

# 태그 목록 조회
git tag

# branch 생성
# ***반드시 main 브랜치로 체크아웃해야함 (현재 checkout 된 브랜치를 기준으로 브랜치 생성됨!!!)
git branch 브랜치명

# 새로운 작업 시작시에 main을 최신화 한 후에 main을 기준으로 branch 생성
git pull origin main