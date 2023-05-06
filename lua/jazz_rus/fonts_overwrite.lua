
local function CreateNewFont(fontName, fontSystem, size)
	surface.CreateFont( fontName, {
		font	=  fontSystem,
		extended = true,
		size	  = size,
		weight	= 500, 
		antialias = true
	})
end

-- Prop Feed
CreateNewFont("PropFeed_Name", "Toyz", ScreenScale(10))
CreateNewFont("PropFeed_Generic1", "Toyz", ScreenScale(8))
CreateNewFont("PropFeed_Numeric", "Toyz", ScreenScale(25))
-- Dialog Menu
CreateNewFont("JazzDialogAsk", "Toyz", 22)
CreateNewFont("JazzDialogOption", "Toyz", 40)
-- Tank
CreateNewFont("JazzShardTankFont", "Toyz", 30)
CreateNewFont("JazzShardTankSubtextFont", "Toyz", 25)
-- Facts
CreateNewFont("FactScreenFont", "Chixa", 35)
CreateNewFont("FactScreenTitle", "Chixa", 55)
CreateNewFont("FactScreenError", "Chixa", 25)
-- Comments
CreateNewFont("SteamCommentFont", "Toyz", 70)
CreateNewFont("SteamAuthorFont", "Nickainley Normal" , 65)
CreateNewFont("JazzDestinationFont", "Nickainley Normal" , 53)
-- Shop
CreateNewFont("JazzStoreName", "Toyz", ScreenScale(15))
CreateNewFont("JazzUpgradeName", "Toyz", ScreenScale(12))
CreateNewFont("JazzStoreDescription", "Toyz", ScreenScale(8))
CreateNewFont("JazzUpgradePrice", "Toyz", ScreenScale(9))
-- Leaderboard
CreateNewFont("JazzLeaderboardEntryFont", "Impact", 45)
CreateNewFont("JazzLeaderboardTitleFont", "Impact", 100)
-- Map chooser
CreateNewFont("SmallHeaderFont", "Toyz", 48)
CreateNewFont("SelectMapFont", "Toyz", 130)
-- Mouse hint
CreateNewFont("JazzMouseHint", "Toyz", ScreenScale(8))
-- Jazz note
CreateNewFont("JazzNote", "Toyz", ScreenScale(20))
CreateNewFont("JazzNoteFill", "Toyz", ScreenScale(12))
CreateNewFont("JazzNoteMultiplier", "Toyz", ScreenScale(12))
CreateNewFont("JazzBlackShard", "Palatino Linotype", ScreenScale(20))
-- RespawnHint
CreateNewFont("JazzRespawnHint", "Toyz", 30)
-- Load State
CreateNewFont("JazzLoadStateFont", "Chixa", ScreenScale(6))
-- The Wait
CreateNewFont("JazzWaitingCountdown", "Toyz", ScreenScale(32))
CreateNewFont("JazzWaitingCountdownPlayer", "Toyz", ScreenScale(20))
-- Dialog Loading
CreateNewFont("JazzDialogLoading", "Toyz", ScreenScale(9))
CreateNewFont("JazzDialogGimmickFont", "Palatino Linotype", ScreenScale(20))
-- Mission progress 
CreateNewFont("Mission_ProgressPercent", "Toyz", ScreenScale(10))
CreateNewFont("Mission_Description", "Verdana", ScreenScale(7))
-- Dialog 
CreateNewFont("JazzDialogNameFont", "Toyz", ScreenScale(15))
CreateNewFont("JazzDialogFont", "Arial", ScreenScale(12))
CreateNewFont("JazzDialogFontHint", "Arial", ScreenScale(10))

print("[JAZZTRONAUTS RUS] Fonts overwrited")
