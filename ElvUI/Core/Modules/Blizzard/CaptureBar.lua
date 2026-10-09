local E, L, V, P, G = unpack(ElvUI)
local BL = E:GetModule('Blizzard')

local _G = _G
local hooksecurefunc = hooksecurefunc

local numAlwaysUpFrames = 0
local pvpHolder = CreateFrame('Frame', 'ElvUI_PvPHolder', E.UIParent)

local function styleAlwaysUpFrame(id)
	local frame = _G['AlwaysUpFrame'..id]
	local text = _G['AlwaysUpFrame'..id..'Text']
	local icon = _G['AlwaysUpFrame'..id..'Icon']
	local dynamic = _G['AlwaysUpFrame'..id..'DynamicIconButton']

	text:ClearAllPoints()
	text:SetPoint('CENTER', frame, 'CENTER', 0, 0)

	icon:ClearAllPoints()
	icon:Point('CENTER', text, 'LEFT', -10, -9)

	dynamic:ClearAllPoints()
	dynamic:Point('LEFT', text, 'RIGHT', 5, 0)

	if id == 1 then
		frame:ClearAllPoints()
		frame:Point('CENTER', pvpHolder, 'CENTER', 0, 5)
		frame.SetPoint = E.noop
	end
end

local function repositionCaptureBar(id)
	local bar = _G['WorldStateCaptureBar'..id]
	bar:ClearAllPoints()
	bar:Point('TOP', pvpHolder, 'BOTTOM', 0, -75)
	bar.SetPoint = E.noop
end

function BL:WorldStateAlwaysUpFrame_Update()
	if numAlwaysUpFrames < _G.NUM_ALWAYS_UP_UI_FRAMES then
		for id = numAlwaysUpFrames + 1, _G.NUM_ALWAYS_UP_UI_FRAMES do
			styleAlwaysUpFrame(id)
			numAlwaysUpFrames = id
		end
	end
end

function BL:PositionCaptureBar()
	pvpHolder:Size(30, 70)
	pvpHolder:Point('TOP', 0, -4)

	hooksecurefunc('WorldStateAlwaysUpFrame_Update', BL.WorldStateAlwaysUpFrame_Update)
	hooksecurefunc(ExtendedUI['CAPTUREPOINT'], 'create', repositionCaptureBar)

	if _G.NUM_EXTENDED_UI_FRAMES and _G.NUM_EXTENDED_UI_FRAMES > 0 then
		for id = 1, _G.NUM_EXTENDED_UI_FRAMES do
			repositionCaptureBar(id)
		end
	end

	E:CreateMover(pvpHolder, 'PvPMover', L["PvP"], nil, nil, nil, 'ALL')
end