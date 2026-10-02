local E, _, _, _, _ = unpack(ElvUI)

local function SetOrder(name, order)
	local option = E.Options.args[name]
	if option then
		option.order = order
	end
end

SetOrder("general", 1)
SetOrder("enhanced", 2)
SetOrder("addOnSkins", 3)

-- Keep the main settings sections together after General, Enhanced, and AddOn Skins.
SetOrder("actionbar", 4)
SetOrder("auras", 4)
SetOrder("bags", 4)
SetOrder("chat", 4)
SetOrder("cooldown", 4)
SetOrder("databars", 4)
SetOrder("datatexts", 4)
SetOrder("maps", 4)
SetOrder("nameplate", 4)
SetOrder("skins", 4)
SetOrder("tooltip", 4)
SetOrder("unitframe", 4)

-- Dividers are disabled for now.
-- AddDivider("navigationDividerFrames", 3)
-- AddDivider("navigationDividerData", 3)
-- AddDivider("navigationDividerSkins", 3)
-- AddDivider("navigationDividerTools", 3)

SetOrder("tagGroup", 4)
SetOrder("modulecontrol", 5)
SetOrder("filters", 5)
SetOrder("profiles", 4)