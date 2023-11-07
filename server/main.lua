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
    if (string.find(v, "steam:")) then
      if (identifier['steam'] == nil) then
        identifier['steam'] = v
      end
    elseif (string.find(v, "license:")) then
      if (identifier['license'] == nil) then
        identifier['license'] = v
      end
    end
  end
end
