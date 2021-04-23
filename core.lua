local frame = CreateFrame("FRAME", "PartyFrame")
frame:RegisterEvent("PLAYER_ENTERING_WORLD")
frame:RegisterEvent("ZONE_CHANGED_NEW_AREA")


local function eventHandler(self,event,...)
local partyMemberFrames = {
    PartyMemberFrame1, PartyMemberFrame2, PartyMemberFrame3, PartyMemberFrame4
}
    local members = GetNumGroupMembers()
    if members > 1 then
        ShowPartyFrame();
        for i=1,#partyMemberFrames do
            partyMemberFrames[i]:SetScale(1.3)
        end
    end
end
frame:SetScript("OnUpdate", eventHandler)