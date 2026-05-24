## 맥 필수 앱 - 성빈 에디션

- [ChatGPT](https://openai.com/chatgpt/download/)
- [Chrome](https://www.google.co.kr/chrome)
- [Claude](https://claude.ai/download)
- [Claude Code](https://code.claude.com/docs/en/quickstart)
- [Clipy](https://clipy-app.com)
- [ColorSlurp](https://apps.apple.com/kr/app/colorslurp/id1287239339)
- [Discord](https://discord.com/download)
- [Figma](https://www.figma.com/downloads/)
- [Firefox](https://www.mozilla.org/ko/firefox/new/)
- [Fork](https://git-fork.com/)
- [Git](https://git-scm.com/downloads/mac)
- [Hot](https://github.com/macmade/Hot)
- [Itsycal](https://www.mowglii.com/itsycal/)
- [JetBrains Toolbox](https://www.jetbrains.com/ko-kr/toolbox-app/)
- [Jukebox](https://github.com/jisungbin/JukeboxKt)
- [KakaoTalk](https://apps.apple.com/kr/app/kakaotalk/id869223134)
- [Notion](https://www.notion.com/download)
- [Plain Text Editor](https://apps.apple.com/kr/app/plain-text-editor/id1572202501)
- [Rectangle](https://rectangleapp.com/)
- [Switcher](https://github.com/tkgka/Switcher)
- [TinyStopwatch](https://apps.apple.com/kr/app/tinystopwatch/id1447754003) (발표 연습할 때 도움 많이 됨)
- [Typora](https://typora.io)
- [Wrap](https://www.warp.dev/)
- [XCode](https://apps.apple.com/kr/app/xcode/id497799835)

---

### 기타

- [D2Coding](https://github.com/naver/d2codingfont)
- [Pretendard](https://github.com/orioncactus/pretendard)
- [Homebrew](https://brew.sh/ko/)
- [Mole](https://github.com/tw93/mole)
- [fastfetch](https://github.com/fastfetch-cli/fastfetch)
- [ADB 환경 변수 등록](https://linitial.tistory.com/22)
- [터미널 @호스트명 숨기기](https://chatgpt.com/share/6895929c-ba60-800f-aeae-4e82099a93e5)

```
defaults write com.apple.Finder AppleShowAllFiles YES
killall Finder

git config --global user.name "jisungbin"
git config --global user.email ji@sungb.in
git config --global init.defaultBranch main

touch .hushlogin

echo "alias c='claude --dangerously-skip-permissions'" >> ~/.zshrc

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
nvm install node
```

---

### 메모

위 앱들 중 다수는 [Homebrew](https://brew.sh)로 한 번에 설치 가능.

```
# GUI 앱
brew install --cask chatgpt claude clipy firefox hot itsycal jetbrains-toolbox notion typora warp fork figma

# CLI 도구 / 폰트
brew install git fastfetch
brew install --cask font-d2coding font-pretendard

# Mac App Store (mas 7.x는 sudo 필요)
brew install mas
sudo mas install 1572202501  # Plain Text Editor
sudo mas install 1287239339  # ColorSlurp
sudo mas install 869223134   # KakaoTalk
sudo mas install 497799835   # Xcode
sudo mas install 1447754003  # TinyStopwatch
```
