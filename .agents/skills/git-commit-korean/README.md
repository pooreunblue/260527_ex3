# Git Commit Convention Skill (Korean Messages)

This skill provides tools and guidelines for making small, frequent commits following the convention:
`(english category):(korean message)`

## Files

- `SKILL.md` - Detailed documentation on how to use this skill
- `git-kcommit.sh` - Helper script for making commits with the convention

## Installation

This skill is already installed in your opencode environment at `.agents/skills/git-commit-korean/`.

## Usage

### Manual Commit Process

1. Stage your changes: `git add <files>` or `git add -p` for partial staging
2. Determine the appropriate english category (feat, fix, docs, style, refactor, test, chore)
3. Write a concise korean message describing the change
4. Commit with format: `git commit -m "(category):(korean message)"`
5. Push to remote: `git push`

### Using the Helper Script

```bash
# Make a commit with convention
./git-kcommit.sh feat "버튼 클릭 이벤트 핸들러 추가"

# The script will:
# 1. Validate the category
# 2. Show staged changes
# 3. Ask for confirmation before committing
# 4. Optionally push after committing
```

## Commit Categories

- **feat**: 새로운 기능 추가
- **fix**: 버그 수정
- **docs**: 문서 추가/수정
- **style**: 코드 스타일, 포맷팅 (세미콜론 missing, 공백 등)
- **refactor**: 코드 리팩토링 (기능 변경 없음)
- **test**: 테스트 추가/수정
- **chore**: 빌드 작업, 패키지 매니저 설정 등

## Best Practices

- Make commits as small as logically possible
- Each commit should represent a single, coherent change
- Use `git add -p` to stage parts of a file separately
- Commit early and often
- Write clear, concise korean messages that describe what was changed and why

## Example Commits

```
feat:사용자 로그인 폼 validation 추가
fix:모바일 메뉴 토글 버튼 동작 오류 수정
docs:API 엔드포인트 사용법 문서 추가
style:eslint 규칙에 맞춰 코드 포맷팅
refactor:사용자 서비스 클래스 구조 개선
test:결제 모듈 단위 테스트 추가
chore:의존성 패키지 버전 업데이트
```

## Integration with Opencode

When working with opencode, you can:
1. Ask for help determining the appropriate category for your changes
2. Get suggestions for korean commit messages based on your modifications
3. Have opencode help you stage appropriate changes using `git add -p`
4. Execute the commit and push commands through the helper script

Remember to always review your staged changes before committing to ensure they match your intended commit message.