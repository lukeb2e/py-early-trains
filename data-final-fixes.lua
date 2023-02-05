-- update recipe
-- :add_ingredient({type = "item", name = "pipe", amount = 20})
-- :remove_ingredient("duralumin")
-- :replace_ingredient("iron-stick", {type = "item", name = "bolts", amount = 4})
RECIPE("storage-tank"):replace_ingredient("duralumin", {type = "item", name = "iron-plate", amount = 20}):remove_ingredient("lead-plate")

RECIPE("locomotive"):remove_ingredient("duralumin"):remove_ingredient("electronic-circuit")
RECIPE("cargo-wagon"):remove_ingredient("titanium-plate")
RECIPE("fluid-wagon"):remove_ingredient("titanium-plate")
RECIPE("rail"):replace_ingredient("bolts", {type = "item", name = "iron-stick", amount = 4}):replace_ingredient("treated-wood", {type = "item", name = "wood", amount = 4}):remove_ingredient("solder")

-- update technology
-- :add_prereq("wood-processing")
-- :remove_prereq("steel-processing")
-- :remove_pack("utility-science-pack")
TECHNOLOGY("railway-mk01")
TECHNOLOGY("fluid-wagon"):add_prereq("engine")

-- hard override
data.raw.technology["railway-mk01"].unit.ingredients = {
    {"automation-science-pack", 100}
}

data.raw.technology["fluid-wagon"].unit.ingredients = {
    {"automation-science-pack", 100}
}

data.raw.technology["automated-rail-transportation"].unit.ingredients = {
    {"automation-science-pack", 100}
}

data.raw.technology["rail-signals"].unit.ingredients = {
    {"automation-science-pack", 100}
}