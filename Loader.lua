local GamePlaceIDs = {
    [128769457534191] = "https://api.luarmor.net/files/v4/loaders/712aba83143370280017f4293f763042.lua"; -- sb vc
    [0] = "https://api.luarmor.net/files/v4/loaders/712aba83143370280017f4293f763042.lua"; -- sb main
}

if not GamePlaceIDs[game.PlaceId] then
    game.Players.LocalPlayer:Kick("KagiHub | This game is not supported.")
    return
end
if not getfenv().script_key then
    game.Players.LocalPlayer:Kick("KagiHub | Key not found, make sure to include the script_key part in the first line.")
    return
end
writefile("KagiHubScriptKey", getfenv().script_key)

loadstring(game:HttpGet(GamePlaceIDs[game.PlaceId]))()
