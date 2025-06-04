# . 은 모든것을 의미. 또는, 특정 파일만 add 시키는 것도 가능 (staging area로 이동하는 것을 의미)
git add .

# commit은 변경사항을 확정 짓고 변경 이력 (commit id) 발생
# commit 시에 staging area 는 비워지고 local repository에 변경이력 발생
git commit -m "메시지"

git checkout -b "브랜치명"

#origin은 원격을 의미
git push origin "브랜치명"


#github 인증 방법 2가지
#1. 직접 토큰 발급 (내가 권한 통제 가능)


#2. 웹을 통해 인증 받아서 (vscode, inellij 등을 통해)



#git project 생성 방법 2가지
#1. 원격에서부터 생성 후 클론
    #.git 폴더 존재
#2. 로컬에서부터 프로젝트 생성 후 깃헙에 업로드
    git init
    #.git 폴더 없음 (비어있음)
    git remote add origin 레포지토리 url
    
# 다른 레포에서 클론을 받아 나의 github으로 올리기
# 1. 커밋 이력과 함께 복제
    git clone 타인 repo 주소
    git remote set -url origin 본인repo주소
    git push origin main
# 2. 커밋 이력 없이 복제
    git clone 타인 repo 주소
    #이후 .git 폴더 삭제
    git init
    git remote add origin 본인레포url
    git checkout -b main #메인을 만들면서 메인 브랜치로 스위치하라는 명령어
    git add, 
    git commit -m "메시지"
    git push origin main

# 사용자 지정
# 전역적 사용자 지정 (이름, 이메일)
git config --global user.name "유저명"
git config --global user.email "이메일명"

# git 설정정보 조회
git config --list
# 나갈때는 q

# -gitignore (.gitignore) 파일은 git 추적 목록에서 제외
# 경로 : root 경로에서부터 모든 경로가 시작. ex) testfolder/important_config.yml
# 만약 이미 git 에서 추적되고 있었다면 (commit이 한번이라도 되었더라면) 캐시 삭제 필요
git rm -r --cached . # .은 모든 캐시를 삭제