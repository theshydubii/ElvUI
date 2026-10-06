local E, L, V, P, G = unpack(ElvUI)
local NP = E:GetModule("NamePlates")

--Lua functions
--WoW API / Variables

function NP:Update_RaidIcon(frame)
	local db = self.db.units[frame.UnitType].raidTargetIndicator
	local icon = frame.RaidIcon

	icon:SetSize(db.size, db.size)

	icon:ClearAllPoints()
	local anchor = frame.Health:IsShown() and frame.Health or frame
	icon:SetPoint(E.InversePoints[db.position], anchor, db.position, db.xOffset, db.yOffset)
end