--[[
Created by IntelliJ IDEA.
User: WareBare
Date: 10/12/2017
Time: 8:32 PM

Package: 
]]--

wanez = {}
wanez.gd = {}

local entityToDestroy = false
local coordsChester = false
function wanez.gd.setChesterCoords(argObjectId)
    local entity_ = Entity.Get(argObjectId)
    coordsChester = entity_:GetCoords()
    
    entityToDestroy = entity_;
end

function wanez.gd.onAddToWorldCrafterGear(argObjectId)
    local dbr;
	dbr = "mod_wanez/_lc/blacksmith_jailor.dbr"
    
    local crafter_ = Entity.Create( dbr )
    crafter_:SetCoords(coordsChester)
    
    entityToDestroy:Destroy()
    entityToDestroy = crafter_;
end

--- Salvage Common Items
local aSalvageCommon = {
    {'records/items/gearweapons/axe1h/','axe',1,0.25},
    {'records/items/gearweapons/swords1h/','sword',1,0.25},
    {'records/items/gearweapons/blunt1h/','blunt',1,0.25},
    {'records/items/gearweapons/melee2h/','axe2h',1,0.5},
    {'records/items/gearweapons/melee2h/','sword2h',1,0.5},
    {'records/items/gearweapons/melee2h/','blunt2h',1,0.5},
    {'records/items/gearweapons/guns1h/','gun1h',1,0.25},
    {'records/items/gearweapons/guns2h/','gun2h',1,0.5},
    {'records/items/gearweapons/caster/','scepter',1,0.25},
    {'records/items/gearweapons/caster/','dagger',1,0.25},
    {'records/items/gearweapons/shields/','shield',2,0.25},
    {'records/items/gearweapons/focus/','focus',2,0.25},
    
    {'records/items/geartorso/','torso',1,0.5},
    --{'records/items/gearweapons/geartorso/','torso','{1}a{2}_{3}0{4}b.dbr'},
    {'records/items/gearshoulders/','shoulder',2,0.25},
    {'records/items/gearlegs/','legs',2,0.5},
    {'records/items/gearhead/','head',1,0.25},
    {'records/items/gearhands/','hands',2,0.25},
    {'records/items/gearfeet/','feet',2,0.25},
    
    {'records/items/gearaccessories/medals/','medal',3,0.1},
    {'records/items/gearaccessories/necklaces/','necklace',2,0.1},
    {'records/items/gearaccessories/rings/','ring',3,0.1},
    {'records/items/gearaccessories/waist/','waist',1,0.1}

}
local aSalvageMI = {
    -- Common 1H Axe
    {'records/items/gearweapons/axe1h/b001_axe.dbr',1},
    {'records/items/gearweapons/axe1h/b001b_axe.dbr',2},
    {'records/items/gearweapons/axe1h/b001c_axe.dbr',3},
    {'records/items/gearweapons/axe1h/b001d_axe.dbr',4},
    {'records/items/gearweapons/axe1h/b004a_axe.dbr',1},
    {'records/items/gearweapons/axe1h/b004b_axe.dbr',2},
    {'records/items/gearweapons/axe1h/b004c_axe.dbr',3},
    {'records/items/gearweapons/axe1h/b004d_axe.dbr',4},
    
    -- Common 1H Blunt
    {'records/items/gearweapons/blunt1h/b004_blunt.dbr',1},
    {'records/items/gearweapons/blunt1h/b004b_blunt.dbr',2},
    {'records/items/gearweapons/blunt1h/b004c_blunt.dbr',3},
    {'records/items/gearweapons/blunt1h/b004d_blunt.dbr',4},
    {'records/items/gearweapons/blunt1h/b012a_blunt.dbr',1},
    {'records/items/gearweapons/blunt1h/b012b_blunt.dbr',2},
    {'records/items/gearweapons/blunt1h/b012c_blunt.dbr',3},
    {'records/items/gearweapons/blunt1h/b012d_blunt.dbr',4},
    
    -- Common Caster
    {'records/items/gearweapons/caster/b008a_dagger.dbr',1},
    {'records/items/gearweapons/caster/b008b_dagger.dbr',2},
    {'records/items/gearweapons/caster/b008c_dagger.dbr',3},
    {'records/items/gearweapons/caster/b008d_dagger.dbr',4},
    {'records/items/gearweapons/caster/b010a_dagger.dbr',1},
    {'records/items/gearweapons/caster/b010b_dagger.dbr',2},
    {'records/items/gearweapons/caster/b010c_dagger.dbr',3},
    {'records/items/gearweapons/caster/b010d_dagger.dbr',4},
    {'records/items/gearweapons/caster/b010e_dagger.dbr',5},
    {'records/items/gearweapons/caster/b012a_scepter.dbr',1},
    {'records/items/gearweapons/caster/b012b_scepter.dbr',2},
    {'records/items/gearweapons/caster/b012c_scepter.dbr',3},
    {'records/items/gearweapons/caster/b012d_scepter.dbr',4},
    {'records/items/gearweapons/caster/b012e_scepter.dbr',5},
    
    -- Common 1H Gun
    {'records/items/gearweapons/guns1h/b004a_gun1h.dbr',1},
    {'records/items/gearweapons/guns1h/b004b_gun1h.dbr',2},
    {'records/items/gearweapons/guns1h/b004c_gun1h.dbr',3},
    
    -- Common 2H Gun
    {'records/items/gearweapons/guns2h/b001_gun2h.dbr',1},
    {'records/items/gearweapons/guns2h/b001b_gun2h.dbr',2},
    {'records/items/gearweapons/guns2h/b001c_gun2h.dbr',3},
    {'records/items/gearweapons/guns2h/b001d_gun2h.dbr',4},
    {'records/items/gearweapons/guns2h/b006a_gun2h.dbr',1},
    {'records/items/gearweapons/guns2h/b006b_gun2h.dbr',2},
    {'records/items/gearweapons/guns2h/b006c_gun2h.dbr',3},
    {'records/items/gearweapons/guns2h/b006d_gun2h.dbr',4},
    {'records/items/gearweapons/guns2h/b009a_gun2h.dbr',1},
    {'records/items/gearweapons/guns2h/b009b_gun2h.dbr',2},
    {'records/items/gearweapons/guns2h/b009c_gun2h.dbr',3},
    {'records/items/gearweapons/guns2h/b009d_gun2h.dbr',4},
    
    -- Common 2H Melee
    {'records/items/gearweapons/melee2h/b001a_blunt2h.dbr',1},
    {'records/items/gearweapons/melee2h/b001b_blunt2h.dbr',2},
    {'records/items/gearweapons/melee2h/b001c_blunt2h.dbr',3},
    {'records/items/gearweapons/melee2h/b001d_blunt2h.dbr',4},
    {'records/items/gearweapons/melee2h/b007a_axe2h.dbr',1},
    {'records/items/gearweapons/melee2h/b007b_axe2h.dbr',2},
    {'records/items/gearweapons/melee2h/b007c_axe2h.dbr',3},
    {'records/items/gearweapons/melee2h/b007d_axe2h.dbr',4},
    
    -- Common Shield
    {'records/items/gearweapons/shields/b002_shield.dbr',1},
    {'records/items/gearweapons/shields/b002b_shield.dbr',2},
    {'records/items/gearweapons/shields/b002c_shield.dbr',3},
    {'records/items/gearweapons/shields/b002d_shield.dbr',4},
    {'records/items/gearweapons/shields/b007a_shield.dbr',1},
    {'records/items/gearweapons/shields/b007b_shield.dbr',2},
    {'records/items/gearweapons/shields/b007c_shield.dbr',3},
    {'records/items/gearweapons/shields/b007d_shield.dbr',4},
    {'records/items/gearweapons/shields/b009a_shield.dbr',1},
    {'records/items/gearweapons/shields/b009b_shield.dbr',2},
    {'records/items/gearweapons/shields/b009c_shield.dbr',3},
    {'records/items/gearweapons/shields/b009d_shield.dbr',4},
    {'records/items/gearweapons/shields/b011a_shield.dbr',1},
    {'records/items/gearweapons/shields/b011b_shield.dbr',2},
    {'records/items/gearweapons/shields/b011c_shield.dbr',3},
    {'records/items/gearweapons/shields/b011d_shield.dbr',4},
    
    -- Common 1H Sword
    {'records/items/gearweapons/swords1h/b002_sword.dbr',1},
    {'records/items/gearweapons/swords1h/b002b_sword.dbr',2},
    {'records/items/gearweapons/swords1h/b002c_sword.dbr',3},
    {'records/items/gearweapons/swords1h/b002d_sword.dbr',4},
    {'records/items/gearweapons/swords1h/b009a_sword.dbr',1},
    {'records/items/gearweapons/swords1h/b009b_sword.dbr',2},
    {'records/items/gearweapons/swords1h/b009c_sword.dbr',3},
    {'records/items/gearweapons/swords1h/b009d_sword.dbr',4},
    {'records/items/gearweapons/swords1h/b011a_sword.dbr',1},
    {'records/items/gearweapons/swords1h/b011b_sword.dbr',2},
    {'records/items/gearweapons/swords1h/b011c_sword.dbr',3},
    {'records/items/gearweapons/swords1h/b011d_sword.dbr',4},
    
    -- Common FOCUS
    {'records/items/gearweapons/focus/b008a_focus.dbr',1},
    {'records/items/gearweapons/focus/b008b_focus.dbr',2},
    {'records/items/gearweapons/focus/b008c_focus.dbr',3},
    {'records/items/gearweapons/focus/b008d_focus.dbr',4},
    {'records/items/gearweapons/focus/b010a_focus.dbr',1},
    {'records/items/gearweapons/focus/b010b_focus.dbr',2},
    {'records/items/gearweapons/focus/b010c_focus.dbr',3},
    {'records/items/gearweapons/focus/b010d_focus.dbr',4},
    {'records/items/gearweapons/focus/b010e_focus.dbr',5},
    {'records/items/gearweapons/focus/b012a_focus.dbr',1},
    {'records/items/gearweapons/focus/b012b_focus.dbr',2},
    {'records/items/gearweapons/focus/b012c_focus.dbr',3},
    {'records/items/gearweapons/focus/b012d_focus.dbr',4},
    {'records/items/gearweapons/focus/b014a_focus.dbr',1},
    {'records/items/gearweapons/focus/b014b_focus.dbr',2},
    {'records/items/gearweapons/focus/b014c_focus.dbr',3},
    {'records/items/gearweapons/focus/b014d_focus.dbr',4},
    {'records/items/gearweapons/focus/b014e_focus.dbr',5},
    {'records/items/gearweapons/focus/b016a_focus.dbr',1},
    {'records/items/gearweapons/focus/b016b_focus.dbr',2},
    {'records/items/gearweapons/focus/b016c_focus.dbr',3},
    {'records/items/gearweapons/focus/b016d_focus.dbr',4},
    {'records/items/gearweapons/focus/b016e_focus.dbr',5},
    {'records/items/gearweapons/focus/b018a_focus.dbr',1},
    {'records/items/gearweapons/focus/b018b_focus.dbr',2},
    {'records/items/gearweapons/focus/b018c_focus.dbr',3},
    {'records/items/gearweapons/focus/b018d_focus.dbr',4},
    {'records/items/gearweapons/focus/b018e_focus.dbr',5},
    {'records/items/gearweapons/focus/b020a_focus.dbr',1},
    {'records/items/gearweapons/focus/b020b_focus.dbr',2},
    {'records/items/gearweapons/focus/b020c_focus.dbr',3},
    {'records/items/gearweapons/focus/b020d_focus.dbr',4},
    {'records/items/gearweapons/focus/b020e_focus.dbr',5},
    {'records/items/gearweapons/focus/b022a_focus.dbr',1},
    {'records/items/gearweapons/focus/b022b_focus.dbr',2},
    {'records/items/gearweapons/focus/b022c_focus.dbr',3},
    {'records/items/gearweapons/focus/b022d_focus.dbr',4},
    {'records/items/gearweapons/focus/b022e_focus.dbr',5},
    
    -- Common Head
    {'records/items/gearhead/b001_head.dbr',1},
    {'records/items/gearhead/b001b_head.dbr',2},
    {'records/items/gearhead/b001c_head.dbr',3},
    {'records/items/gearhead/b001d_head.dbr',4},
    {'records/items/gearhead/b003_head.dbr',1},
    {'records/items/gearhead/b003b_head.dbr',2},
    {'records/items/gearhead/b003c_head.dbr',3},
    {'records/items/gearhead/b003d_head.dbr',4},
    {'records/items/gearhead/b005_head.dbr',1},
    {'records/items/gearhead/b005b_head.dbr',2},
    {'records/items/gearhead/b005c_head.dbr',3},
    {'records/items/gearhead/b005d_head.dbr',4},
    {'records/items/gearhead/b011a_head.dbr',1},
    {'records/items/gearhead/b011b_head.dbr',2},
    {'records/items/gearhead/b011c_head.dbr',3},
    {'records/items/gearhead/b013a_head.dbr',1},
    {'records/items/gearhead/b013b_head.dbr',2},
    {'records/items/gearhead/b013c_head.dbr',3},
    {'records/items/gearhead/b013d_head.dbr',4},
    
    -- Common Shoulders
    {'records/items/gearshoulders/b001_shoulder.dbr',1},
    {'records/items/gearshoulders/b001b_shoulder.dbr',2},
    {'records/items/gearshoulders/b001c_shoulder.dbr',3},
    {'records/items/gearshoulders/b001d_shoulder.dbr',4},
    {'records/items/gearshoulders/b003_shoulder.dbr',1},
    {'records/items/gearshoulders/b003b_shoulder.dbr',2},
    {'records/items/gearshoulders/b003c_shoulder.dbr',3},
    {'records/items/gearshoulders/b003d_shoulder.dbr',4},
    {'records/items/gearshoulders/b005_shoulder.dbr',1},
    {'records/items/gearshoulders/b005b_shoulder.dbr',2},
    {'records/items/gearshoulders/b005c_shoulder.dbr',3},
    {'records/items/gearshoulders/b005d_shoulder.dbr',4},
    {'records/items/gearshoulders/b008a_shoulder.dbr',1},
    {'records/items/gearshoulders/b008b_shoulder.dbr',2},
    {'records/items/gearshoulders/b008c_shoulder.dbr',3},
    {'records/items/gearshoulders/b010a_shoulder.dbr',1},
    {'records/items/gearshoulders/b010b_shoulder.dbr',2},
    {'records/items/gearshoulders/b010c_shoulder.dbr',3},
    {'records/items/gearshoulders/b012a_shoulder.dbr',1},
    {'records/items/gearshoulders/b012b_shoulder.dbr',2},
    {'records/items/gearshoulders/b012c_shoulder.dbr',3},
    {'records/items/gearshoulders/b012d_shoulder.dbr',4},
    
    -- Common Toros
    {'records/items/geartorso/b001_torso.dbr',1},
    {'records/items/geartorso/b001b_torso.dbr',2},
    {'records/items/geartorso/b001c_torso.dbr',3},
    {'records/items/geartorso/b001d_torso.dbr',4},
    {'records/items/geartorso/b006a_torso.dbr',1},
    {'records/items/geartorso/b006b_torso.dbr',2},
    {'records/items/geartorso/b006c_torso.dbr',3},
    {'records/items/geartorso/b008a_torso.dbr',1},
    {'records/items/geartorso/b008b_torso.dbr',2},
    {'records/items/geartorso/b008c_torso.dbr',3},
    {'records/items/geartorso/b010a_torso.dbr',1},
    {'records/items/geartorso/b010b_torso.dbr',2},
    {'records/items/geartorso/b010c_torso.dbr',3},
    {'records/items/geartorso/b010d_torso.dbr',4},
}

function wanez.gd.salvageCommon()
    local _player = Game.GetLocalPlayer()
    local tracker = 0
    -- 1: PATH; 2: PREFIX; 3: TYPE; 4: SUFFIX
    local aTmpFiles = { '{1}a{2}_{3}0{4}.dbr', '{1}a{2}_{3}{4}.dbr', '{1}a0{2}_{3}{4}.dbr' }
    local tmpFile = ''
    local matMul = 1
    local aReplace = { '', '00', '', '000' }
    local itemFile = ''
    --local aItems = wanez.Runes._Data.Items[1]
    local aItems = aSalvageCommon
    
    for i=1,table.getn(aItems) do
        aReplace[1] = aItems[i][1]
        aReplace[3] = aItems[i][2]
        tmpFile = aTmpFiles[aItems[i][3]]
        matMul = aItems[i][4]
        
        for j=0,12 do
            aReplace[2] = (j <= 9) and '0'..j or tostring(j)
            
            for k=0,9 do
                aReplace[4] = '0'..k
                
                local whileTrue = true
                while(whileTrue)do
                    if(_player:HasItem(_cBase:str_replace(tmpFile,aReplace),1,true))then
                        tracker = tracker + j * matMul + 1 -- * (random(1,20) / 10 + 1)
                        _player:TakeItem(_cBase:str_replace(tmpFile,aReplace),1,true)
                    else
                        whileTrue = false
                    end
                end
            end;
        end;
    end;
    
    --- MI
    local aItems = aSalvageMI
    for i=1,table.getn(aItems) do
        local whileTrue = true
        while(whileTrue)do
            if(_player:HasItem(aItems[i][1],1,true))then
                tracker = tracker + aItems[i][2] -- * (random(1,20) / 10 + 1)
                _player:TakeItem(aItems[i][1],1,true)
            else
                whileTrue = false
            end
        end
    end;
    
    _player:GiveItem('records/items/questitems/scrapmetal.dbr',tracker,true)
end

