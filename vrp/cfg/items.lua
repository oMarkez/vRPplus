-- define items, see the Inventory API on github

local cfg = {}
-- see the manual to understand how to create parametric items
-- idname = {name or genfunc, description or genfunc, genfunc choices or nil, weight or genfunc}
-- a good practice is to create your own item pack file instead of adding items here
cfg.items = {
  ["benzoilmetilecgonina"] = {"Benzoilmetilecgonina", "Some Benzoic acid ester.", nil, 0.01}, -- no choices
  ["seeds"] = {"Hash", "Noget hash.", nil, 0.01}, -- no choices
  ["harness"] = {"LSD pulver", "Noget LSD pulver.", nil, 0.01}, -- no choices
  ["AK47"] = {"AK47", "Et russisk våben.", nil, 0.01}, -- no choices
  ["M4A1"] = {"M4A1", "Et amerikansk våben.", nil, 0.01}, -- no choices
  ["credit"] = {"kreditkort", "Et stjålet kreditkort.", nil, 0.01}, -- no choices
  ["driver"] = {"Kørekort", "Kørekort.", nil, 0.01}, -- no choices
  ["bank_money"] = {"Penge i banken", "DKK.", nil, 0},
  ["trash"] = {"skrald", "Det stinker", nil, 0},  -- no choices
  ["fake_id"] = {"Falsk ID", "Det siger bare Lars.", nil, 0}, -- no choices
  ["police_report"] = {"Politi Report", "Aflevere det til Bank Managen.", nil, 0},  -- no choices
  ["ems_report"] = {"EMS Report", "Aflevere det til Hospitalet.", nil, 0}, -- no choices
  ["cargo"] = {"Fragt", "Bokse fuld af porno.", nil, 0},
  ["phone"] = {"iPhone X+", "Overpriced telefon.", nil, 0.5},
  ["phone2"] = {"OnePlus 6", "God telefon", nil, 0.5}
}

-- load more items function
local function load_item_pack(name)
  local items = module("cfg/item/"..name)
  if items then
    for k,v in pairs(items) do
      cfg.items[k] = v
    end
  else
    print("[vRP] item pack ["..name.."] not found")
  end
end

-- PACKS
load_item_pack("required")
load_item_pack("food")
load_item_pack("drugs")

return cfg
