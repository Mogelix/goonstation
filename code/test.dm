/obj/table/test
    name = "test"
    desc = "A wooden podium. Looks official."
    icon = 'icons/obj/furniture/single_tables.dmi'
    icon_state = "podiumwood"

/obj/table/test/ui_interact(mob/user, datum/tgui/ui)
  ui = tgui_process.try_update_ui(user, src, ui)
  if(!ui)
    ui = new(user, src, "Test")
    ui.open()

/obj/table/test/attack_hand(mob/user)
    ui_interact(user)
