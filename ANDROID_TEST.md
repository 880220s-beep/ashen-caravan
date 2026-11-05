# Android debug wrapper (test only)

이 브랜치(`android-test`)는 《잿빛 성전차》 HTML 게임을 Capacitor로 감싸 **디버그 APK**를 시험 빌드하기 위한 것입니다.

- 게임 원본(`test_v137_m2.html`, `assets/`)은 **수정하지 않습니다**. 빌드 시 `www/`로 복사만 합니다.
- `main` 브랜치와 GitHub Pages 플레이 링크는 변경하지 않습니다.
- 스토어 등록·유료 서비스·서명 키 없음. 디버그 APK만 생성합니다.

## 빌드

푸시 또는 Actions에서 `Android Debug APK` 워크플로를 실행하면 Artifacts에 `ashen-caravan-debug-apk`가 올라갑니다.
