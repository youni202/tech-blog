#!/bin/bash

# 블로그 포스트 배포 스크립트
# 사용법: ./deploy.sh "커밋 메시지"

# 기본 커밋 메시지 설정
COMMIT_MSG="블로그 포스트 업데이트: $(date +"%Y-%m-%d %H:%M:%S")"

# 사용자가 커밋 메시지를 제공한 경우 사용
if [ "$1" != "" ]; then
    COMMIT_MSG="$1"
fi

# GitHub Pages 레포지토리 경로 설정 (필요에 따라 수정)
REPO_PATH="."

echo "=== 블로그 포스트 배포 시작 ==="

# 콘텐츠 디렉토리로 이동
cd "$REPO_PATH" || {
    echo "ERROR: $REPO_PATH 디렉토리가 존재하지 않습니다."
    exit 1
}

# Git 레포지토리 업데이트
echo "1. Git 레포지토리 업데이트 중..."
git pull origin main

# 변경사항 추가
echo "2. 변경사항 추가 중..."
git add .

# 변경사항 커밋
echo "3. 변경사항 커밋 중..."
git commit -m "$COMMIT_MSG"

# GitHub에 푸시
echo "4. GitHub에 푸시 중..."
git push origin main

echo "=== 블로그 포스트 배포 완료 ==="
echo "메시지: $COMMIT_MSG"