# Android debug wrapper (test only)

이 브랜치(`android-test`)는 《잿빛 성전차》 HTML 게임을 Capacitor로 감싸 **디버그 APK**를 시험하기 위한 것입니다.

- 게임 원본(`test_v137_m2.html`, `assets/`)은 **수정하지 않습니다**. 빌드 시 `www/`로 복사만 합니다.
- `main` 브랜치와 GitHub Pages 플레이 링크는 변경하지 않습니다.
- 스토어 등록·유료 서비스·서명 키 없음.

## APK 받기 (지금)

릴리스: https://github.com/880220s-beep/ashen-caravan/releases/tag/android-debug-v1  
직접 다운로드: https://github.com/880220s-beep/ashen-caravan/releases/download/android-debug-v1/ashen-caravan-debug.apk

## GitHub Actions (추가 권한 필요)

워크플로 초안: `ci/android-debug.yml`

현재 봇 OAuth 토큰에 `workflow` 스코프가 없어 `.github/workflows/`에 파일을 올릴 수 없습니다.
한 번만 아래 중 하나를 하면 Actions 빌드가 가능합니다.

1. GitHub 웹에서 `android-test` 브랜치에 새 파일 `.github/workflows/android-debug.yml`을 만들고 `ci/android-debug.yml` 내용을 붙여넣기
2. 또는 `gh auth refresh -h github.com -s workflow` 후 이 파일을 `.github/workflows/`로 커밋·푸시

트리거: `android-test` 푸시 또는 Actions에서 `Android Debug APK` 수동 실행  
아티팩트 이름: `ashen-caravan-debug-apk`
