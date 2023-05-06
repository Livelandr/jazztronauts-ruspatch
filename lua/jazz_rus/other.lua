  
if jstore then
    jstore.Register("spawnmenu", 100000, { -- Spawn menu re-register 
        cat = "tools",
        name = "GMod Меню спавна",
        desc = "Выкупить обратно своё старое доброе гмодовское спавн меню, спавньте всё.. за некоторую плату",
        thirdparty = true
    })
end

-- Bus text change
scripted_ents.Get("jazz_bus_explore").UpdateDestinationMaterial = function()
    JazzRenderDestinationMaterial(self, "Бар Самсара")
end 
PrintTable2(scripted_ents.Get("jazz_bus_explore"))


-- Death menu
local function GetSpectateName(ent)
    if ent == LocalPlayer() then return "Точка возрождения карты" end
    if ent:IsPlayer() then return ent:GetName() end

    local class = ent:GetClass()
    if class == "jazz_bus_explore" then return "Троллейбус" end
    return class
end

hook.Add("HUDPaint", "JazzDrawSpectate", function()
    if LocalPlayer():GetObserverMode() == OBS_MODE_NONE then return end
    local obstarget = LocalPlayer():GetObserverTarget()
    if not IsValid(obstarget) then return end
    local name = GetSpectateName(obstarget)
    local hintText = "ПКМ для смены"

    surface.SetFont("DermaDefault")
    local wn, hn = surface.GetTextSize(name)
    local wh, hh = surface.GetTextSize(hintText)
    local w, h = math.max(wn, wh) * 1.3, math.max(hn, hh) * 1.3

    local x, y = ScrW()/2, ScrH()/2 + ScreenScale(55)
    surface.SetTextColor(255, 255, 255, 255)
    draw.RoundedBox(5, x - w/2, y - h/2, w, h * 2, Color(0, 0, 0, 150))

    surface.SetTextPos(x - wn/2, y - hn / 2)
    surface.DrawText(name)

    surface.SetTextPos(x - wh / 2, y + h - hh / 2)
    surface.DrawText(hintText)
end)