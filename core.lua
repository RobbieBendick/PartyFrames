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
local hide = {
    PartyMemberFrame1PVPIcon, PartyMemberFrame2PVPIcon,
    PartyMemberFrame3PVPIcon, PartyMemberFrame4PVPIcon,
    PlayerPVPIcon, CompactRaidFrameManager,
    PlayerFrameGroupIndicator, --[[PartyMemberFrame1Name,
    PartyMemberFrame2Name, PartyMemberFrame3Name,
    PartyMemberFrame4Name,]]--
}

    local members = GetNumGroupMembers()
    --ShowPartyFrame function only runs when you're in a group
    if members > 1 then
        ShowPartyFrame();
        --increase size of party frames
        for i=1,#partyMemberFrames do
            partyMemberFrames[i]:SetScale(1.3)
        end
        --darken party frame borders
        for i=1,#partyMemberFrameTextures do
            partyMemberFrameTextures[i]:SetVertexColor(0.1,0.1,0.1)
        end
        --hide everything in the hide table
        for i=1,#hide do
            hide[i]:Hide()
        end
    end
end
frame:SetScript("OnUpdate", eventHandler)
