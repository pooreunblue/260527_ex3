# Git Commit Convention Skill (English Category: Korean Message)

This skill helps you make small, frequent commits following the convention:
`(english category):(korean message)`

## How to Use

When you want to commit changes with this convention:

1. Stage your changes: `git add <files>` or `git add -p` for partial staging
2. Determine the appropriate english category (e.g., feat, fix, docs, style, refactor, test, chore)
3. Write a concise korean message describing the change
4. Commit with format: `git commit -m "(category):(korean message)"`
5. Push to remote: `git push`

## Example Workflow

```bash
# Stage changes
git add src/components/Button.js

# Commit with convention
git commit -m "feat:버튼 클릭 이벤트 핸들러 추가"

# Push
git push origin main
```

## Categories Guide

- **feat**: 새로운 기능 추가
- **fix**: 버그 수정
- **docs**: 문서 추가/수정
- **style**: 코드 스타일, 포맷팅 (세미콜론 missing, 공백 등)
- **refactor**: 코드 리팩토링 (기능 변경 없음)
- **test**: 테스트 추가/수정
- **chore**: 빌드 작업, 패키지 매니저 설정 등

## Tips for Small Commits

- Make commits as small as logically possible
- Each commit should represent a single, coherent change
- Use `git add -p` to stage parts of a file separately
- Commit early and often
- If a commit becomes too large, consider splitting it with `git reset` and re-staging

## Automation

You can create a simple script to help with this convention:

```bash
#!/bin/bash
# git-kcommit.sh
# Usage: ./git-kcommit.sh feat "버튼 색상 변경"

if [ $# -ne 2 ]; then
  echo "Usage: $0 <category> <korean message>"
  exit 1
fi

git commit -m "$1:$2"
```

Make it executable and use it for consistent commits.

## Integration with Opencode

When using this skill with opencode, you can:
1. Ask for help determining the appropriate category
2. Get suggestions for korean commit messages based on your changes
3. Have opencode help stage appropriate changes
4. Execute the commit and push commands

Remember to always review your staged changes before committing!