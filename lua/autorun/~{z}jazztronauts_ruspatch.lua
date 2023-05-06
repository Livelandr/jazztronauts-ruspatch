if SERVER then 
    resource.AddFile("resource/fonts/chixa.ttf")
    resource.AddFile("resource/fonts/toyz.ttf")
    resource.AddFile("resource/fonts/nickainley.ttf")
    resource.AddFile("resource/localization/ru/jazztonauts.properties")

    AddCSLuaFile()
    AddCSLuaFile("jazz_rus/fonts_overwrite.lua") -- Fonts overwriter
    AddCSLuaFile("jazz_rus/other.lua")

    -- Adding all dialog files
    local files = file.Find("gamemodes/jazztronauts/content/data/scripts_ru/*.txt", "GAME")
    for k, v in pairs(files) do
        resource.AddFile("gamemodes/jazztronauts/content/data/scripts_ru/" .. v)
    end

    return 
end

timer.Simple(2, function()
    assert(JazzLocalize ~= nil, "Patch loaded before gamemode!")
    include("jazz_rus/fonts_overwrite.lua") 
    include("jazz_rus/other.lua")
end)
  