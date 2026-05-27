#!/bin/bash

# Simple script to help with git commits using the convention: (english category):(korean message)

# Check if we're in a git repository
if ! git rev-parse --git-dir > /dev/null 2>&1; then
    echo "Error: Not a git repository"
    exit 1
fi

# Check arguments
if [ $# -ne 2 ]; then
    echo "Usage: $0 <category> <korean message>"
    echo ""
    echo "Categories:"
    echo "  feat      - 새로운 기능 추가"
    echo "  fix       - 버그 수정"
    echo "  docs      - 문서 추가/수정"
    echo "  style     - 코드 스타일, 포맷팅"
    echo "  refactor  - 코드 리팩토링 (기능 변경 없음)"
    echo "  test      - 테스트 추가/수정"
    echo "  chore     - 빌드 작업, 패키지 매니저 설정 등"
    echo ""
    echo "Example: $0 feat '버튼 클릭 이벤트 핸들러 추가'"
    exit 1
fi

CATEGORY="$1"
MESSAGE="$2"

# Validate category (basic validation)
VALID_CATEGORIES="feat|fix|docs|style|refactor|test|chore"
if ! echo "$CATEGORY" | grep -qE "^($VALID_CATEGORIES)$"; then
    echo "Warning: '$CATEGORY' is not a standard category. Consider using one of: feat, fix, docs, style, refactor, test, chore"
    read -p "Continue anyway? (y/N) " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        exit 1
    fi
fi

# Show what will be committed
echo "About to commit with message: $CATEGORY:$MESSAGE"
echo ""
echo "Staged changes:"
git diff --cached --stat
echo ""

# Ask for confirmation
read -p "Proceed with commit? (y/N) " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo "Commit cancelled."
    exit 0
fi

# Commit
if git commit -m "$CATEGORY:$MESSAGE"; then
    echo "Commit successful!"
    
    # Ask about push
    read -p "Push to remote? (y/N) " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        # Get current branch
        BRANCH=$(git rev-parse --abbrev-ref HEAD)
        if git push origin "$BRANCH"; then
            echo "Push successful!"
        else
            echo "Push failed. You may need to set upstream or check your permissions."
        fi
    else
        echo "Commit created. Remember to push when ready."
    fi
else
    echo "Commit failed."
    exit 1
fi