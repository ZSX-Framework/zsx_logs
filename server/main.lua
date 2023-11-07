local function onPlayerConnecting(name, setKickReason, deferrals)
  local player, identifiers = source, GetPlayerIdentifiers(player)
  local identifier = {
    ['steam'] = nil,
    ['license'] = nil
  }
  deferrals.defer()
  Wait(0)
  deferrals.update(string.format(Translations['firstDeferralsObject'], name))
  for _, v in pairs(identifiers) do
    if (string.find(v, "steam:") and identifier['steam'] == nil) then
      identifier['steam'] = v
    elseif (string.find(v, "license:") and identifier['license'] == nil) then
      identifier['license'] = v
    end
  end
end
