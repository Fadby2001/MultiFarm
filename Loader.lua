local GamePlaceIDs = {
    [128769457534191] = "https://api.luarmor.net/files/v4/loaders/712aba83143370280017f4293f763042.lua"; -- sb vc
    [0] = "https://api.luarmor.net/files/v4/loaders/712aba83143370280017f4293f763042.lua"; -- sb main
}

if not GamePlaceIDs[game.PlaceId] then
    game.Players.LocalPlayer:Kick("KagiHub | This game is not supported.")
    return
end
loadstring(game:HttpGet(GamePlaceIDs[game.PlaceId]))()
