-- cmd-english: 터미널에서 ⌘ 를 누르는 동안 입력 소스를 영어로, 떼면 원래대로 복원.
-- 한글 입력 중에도 ⌘ 단축키가 영어 키코드로 발동하도록 만든다.

require("hs.ipc") -- `hs -c "..."` CLI 로 상태 점검·리로드 가능하게

-- 영어 타겟. 영어 레이아웃으로 ABC 대신 U.S. 를 쓰면 "com.apple.keylayout.US" 로 바꾼다.
local ENGLISH = "com.apple.keylayout.ABC"

-- 동작 대상 앱(터미널 계열). bundle id 로 추가/제거한다.
-- 모든 앱에서 전역으로 쓰려면 아래 isTargetApp() 이 항상 true 를 반환하게 한다.
local TARGET_APPS = {
  ["net.kovidgoyal.kitty"]   = true, -- kitty
  ["com.googlecode.iterm2"]  = true, -- iTerm2
  ["com.apple.Terminal"]     = true, -- Apple Terminal
  ["com.github.wez.wezterm"] = true, -- WezTerm
  ["org.alacritty"]          = true, -- Alacritty
  ["dev.warp.Warp-Stable"]   = true, -- Warp
}

-- ⌘ 를 눌러 영어로 바꾸기 직전의 소스. 떼면 이 값으로 되돌린다.
local saved = nil

local function isTargetApp()
  local app = hs.application.frontmostApplication()
  return app ~= nil and TARGET_APPS[app:bundleID()] == true
end

cmdEnglishWatcher = hs.eventtap.new({ hs.eventtap.event.types.flagsChanged }, function(e)
  if not isTargetApp() then return false end

  if e:getFlags().cmd then
    -- 이미 영어면 굳이 바꾸지 않는다(복원 대상도 없음).
    if saved == nil then
      local cur = hs.keycodes.currentSourceID()
      if cur ~= ENGLISH then
        saved = cur
        hs.keycodes.currentSourceID(ENGLISH)
      end
    end
  elseif saved ~= nil then
    hs.keycodes.currentSourceID(saved)
    saved = nil
  end

  return false -- 키 이벤트 자체는 변형 없이 통과시킨다.
end)

cmdEnglishWatcher:start()

hs.alert.show("cmd-english 활성화")
