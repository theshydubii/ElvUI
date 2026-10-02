local E, _, _, _, _ = unpack(ElvUI)

local function SetOrder(name, order)
	local option = E.Options.args[name]
	if option then
		option.order = order
	end
end

SetOrder("general", 10)
SetOrder("enhanced", 20)
SetOrder("general", 1)

-- Match the reference ordering: main settings sections share the next order and sort by name.
SetOrder("actionbar", 2)
SetOrder("auras", 2)
SetOrder("bags", 2)
SetOrder("chat", 2)
SetOrder("cooldown", 2)
SetOrder("databars", 2)
SetOrder("datatexts", 2)
SetOrder("enhanced", 2)
SetOrder("maps", 2)
SetOrder("nameplate", 2)
SetOrder("skins", 2)
SetOrder("tooltip", 2)
SetOrder("unitframe", 2)
SetOrder("addOnSkins", 2)

-- Dividers are disabled for now.
-- AddDivider("navigationDividerFrames", 3)
-- AddDivider("navigationDividerData", 3)
-- AddDivider("navigationDividerSkins", 3)
-- AddDivider("navigationDividerTools", 3)

SetOrder("tagGroup", 4)
SetOrder("modulecontrol", 5)
SetOrder("filters", 3)
SetOrder("profiles", 4)