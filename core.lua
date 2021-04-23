local frame = CreateFrame("FRAME", "PartyFrame")
frame:RegisterEvent("PLAYER_ENTERING_WORLD")
frame:RegisterEvent("ZONE_CHANGED_NEW_AREA")

local function eventHandler(self,event,...)
local partyMemberFrames = {
    PartyMemberFrame1, PartyMemberFrame2, PartyMemberFrame3, PartyMemberFrame4
}
local partyMemberFrameTextures = {
    PartyMemberFrame1Texture, PartyMemberFrame2Texture, PartyMemberFrame3Texture, PartyMemberFrame4Texture
}
    local members = GetNumGroupMembers()
    if members > 1 then
        ShowPartyFrame();
        CompactRaidFrameManager:Hide();
        for i=1,#partyMemberFrames do
            partyMemberFrames[i]:SetScale(1.3)
        end
        for i=1,#partyMemberFrameTextures do
            partyMemberFrameTextures[i]:SetVertexColor(0.1,0.1,0.1)
        end
    end
end
frame:SetScript("OnUpdate", eventHandler)