/obj/item/modular_computer/pda/preset/Initialize()
    . = ..()
    install_hardware()
    install_programs()

/obj/item/modular_computer/pda/preset/proc/install_hardware()
    install_component(new /obj/item/computer_hardware/processor_unit/small)
    install_component(new /obj/item/computer_hardware/battery(src, /obj/item/stock_parts/cell/computer/nano))
    install_component(new /obj/item/computer_hardware/hard_drive/small)
    install_component(new /obj/item/computer_hardware/network_card)
    install_component(new /obj/item/computer_hardware/card_slot)
    install_component(new /obj/item/computer_hardware/recharger/APC)

/obj/item/modular_computer/pda/preset/proc/install_programs()
    var/obj/item/computer_hardware/hard_drive/hard_drive = all_components[MC_HDD]
    hard_drive.store_file(new/datum/computer_file/program/chatclient())
    //hard_drive.store_file(new/datum/computer_file/program/nttransfer())

/obj/item/modular_computer/pda/preset/ai/install_hardware()
    install_component(new /obj/item/computer_hardware/processor_unit/photonic/small)
    install_component(new /obj/item/computer_hardware/battery(src, /obj/item/stock_parts/cell/computer/micro))
    install_component(new /obj/item/computer_hardware/hard_drive/small)
    install_component(new /obj/item/computer_hardware/network_card/advanced)
    install_component(new /obj/item/computer_hardware/printer/mini)
    install_component(new /obj/item/computer_hardware/recharger/APC)

/obj/item/modular_computer/pda/preset/ai/install_programs()
    ..()
    var/obj/item/computer_hardware/hard_drive/hard_drive = all_components[MC_HDD]
    hard_drive.store_file(new/datum/computer_file/program/alarm_monitor)
    hard_drive.store_file(new/datum/computer_file/program/supermatter_monitor)

/obj/item/modular_computer/pda/preset/ai/pai

/obj/item/modular_computer/pda/preset/heads
    desc = "A small, portable microcomputer designed to make your life easier. This appears to be a deluxe model."

/obj/item/modular_computer/pda/preset/heads/install_hardware()
    install_component(new /obj/item/computer_hardware/processor_unit/photonic/small)
    install_component(new /obj/item/computer_hardware/battery(src, /obj/item/stock_parts/cell/computer/micro))
    install_component(new /obj/item/computer_hardware/hard_drive/small)
    install_component(new /obj/item/computer_hardware/network_card/advanced)
    install_component(new /obj/item/computer_hardware/card_slot)
    install_component(new /obj/item/computer_hardware/printer/mini)
    install_component(new /obj/item/computer_hardware/recharger/APC)

/obj/item/modular_computer/pda/preset/heads/install_programs()
    ..()
    var/obj/item/computer_hardware/hard_drive/hard_drive = all_components[MC_HDD]
    hard_drive.store_file(new/datum/computer_file/program/card_mod)
    hard_drive.store_file(new/datum/computer_file/program/alarm_monitor)
    hard_drive.store_file(new/datum/computer_file/program/supermatter_monitor)

/obj/item/modular_computer/pda/preset/heads/captain
    name = "captain's PDA"
    icon_state = "pda-captain"
    icon_state_unpowered = "pda-captain"
    icon_state_powered = "pda-captain"

/obj/item/modular_computer/pda/preset/heads/hop
    name = "head of personnel's PDA"
    icon_state = "pda-hop"
    icon_state_unpowered = "pda-hop"
    icon_state_powered = "pda-hop"

/obj/item/modular_computer/pda/preset/heads/cmo
    name = "chief medical officer's PDA"
    icon_state = "pda-cmo"
    icon_state_unpowered = "pda-cmo"
    icon_state_powered = "pda-cmo"

/obj/item/modular_computer/pda/preset/heads/ce
    name = "chief engineer's PDA"
    icon_state = "pda-ce"
    icon_state_unpowered = "pda-ce"
    icon_state_powered = "pda-ce"

/obj/item/modular_computer/pda/preset/heads/hos
    name = "head of security's PDA"
    icon_state = "pda-hos"
    icon_state_unpowered = "pda-hos"
    icon_state_powered = "pda-hos"

/obj/item/modular_computer/pda/preset/heads/rd
    name = "research director's PDA"
    icon_state = "pda-rd"
    icon_state_unpowered = "pda-rd"
    icon_state_powered = "pda-rd"

/obj/item/modular_computer/pda/preset/heads/qm
    name = "quartermaster's PDA"
    icon_state = "pda-qm"
    icon_state_unpowered = "pda-qm"
    icon_state_powered = "pda-qm"

/obj/item/modular_computer/pda/preset/heads/lieutenant
    name = "lieutenant's PDA"
    icon_state = "pda-lieutenant"
    icon_state_unpowered = "pda-lieutenant"
    icon_state_powered = "pda-lieutenant"

/obj/item/modular_computer/pda/preset/engi
    name = "engineer's PDA"
    icon_state = "pda-engineer"
    icon_state_unpowered = "pda-engineer"
    icon_state_powered = "pda-engineer"

/obj/item/modular_computer/pda/preset/engi/install_hardware()
    install_component(new /obj/item/computer_hardware/processor_unit/small)
    install_component(new /obj/item/computer_hardware/battery(src, /obj/item/stock_parts/cell/computer/micro))
    install_component(new /obj/item/computer_hardware/hard_drive/small)
    install_component(new /obj/item/computer_hardware/network_card/advanced)
    install_component(new /obj/item/computer_hardware/card_slot)
    install_component(new /obj/item/computer_hardware/recharger/APC)

/obj/item/modular_computer/pda/preset/engi/install_programs()
    ..()
    var/obj/item/computer_hardware/hard_drive/hard_drive = all_components[MC_HDD]
    hard_drive.store_file(new/datum/computer_file/program/alarm_monitor)
    hard_drive.store_file(new/datum/computer_file/program/supermatter_monitor)

/obj/item/modular_computer/pda/preset/atmos
    name = "atmospherics PDA"
    icon_state = "pda-atmos"
    icon_state_unpowered = "pda-atmos"
    icon_state_powered = "pda-atmos"

/obj/item/modular_computer/pda/preset/atmos/install_hardware()
    install_component(new /obj/item/computer_hardware/processor_unit/small)
    install_component(new /obj/item/computer_hardware/battery(src, /obj/item/stock_parts/cell/computer/micro))
    install_component(new /obj/item/computer_hardware/hard_drive/small)
    install_component(new /obj/item/computer_hardware/network_card/advanced)
    install_component(new /obj/item/computer_hardware/card_slot)
    install_component(new /obj/item/computer_hardware/recharger/APC)

/obj/item/modular_computer/pda/preset/atmos/install_programs()
    ..()
    var/obj/item/computer_hardware/hard_drive/hard_drive = all_components[MC_HDD]
    hard_drive.store_file(new/datum/computer_file/program/alarm_monitor)
    hard_drive.store_file(new/datum/computer_file/program/supermatter_monitor)


/obj/item/modular_computer/pda/preset/bartender
    name = "bartender's PDA"
    icon_state = "pda-bartender"
    icon_state_unpowered = "pda-bartender"
    icon_state_powered = "pda-bartender"

/obj/item/modular_computer/pda/preset/cargo
    name = "cargo technician's PDA"
    icon_state = "pda-cargo"
    icon_state_unpowered = "pda-cargo"
    icon_state_powered = "pda-cargo"

/obj/item/modular_computer/pda/preset/cargo/install_hardware()
    install_component(new /obj/item/computer_hardware/processor_unit/small)
    install_component(new /obj/item/computer_hardware/battery(src, /obj/item/stock_parts/cell/computer/nano))
    install_component(new /obj/item/computer_hardware/hard_drive/small)
    install_component(new /obj/item/computer_hardware/network_card)
    install_component(new /obj/item/computer_hardware/card_slot)
    install_component(new /obj/item/computer_hardware/printer/mini)
    install_component(new /obj/item/computer_hardware/recharger/APC)

/obj/item/modular_computer/pda/preset/cook
    name = "cook's PDA"
    icon_state = "pda-cook"
    icon_state_unpowered = "pda-cook"
    icon_state_powered = "pda-cook"

/obj/item/modular_computer/pda/preset/chemistry
    name = "chemist's PDA"
    icon_state = "pda-chemistry"
    icon_state_unpowered = "pda-chemistry"
    icon_state_powered = "pda-chemistry"

/obj/item/modular_computer/pda/preset/detective
    name = "detective's PDA"
    icon_state = "pda-detective"
    icon_state_unpowered = "pda-detective"
    icon_state_powered = "pda-detective"

/obj/item/modular_computer/pda/preset/chaplain
    name = "chaplain's PDA"
    icon_state = "pda-chaplain"
    icon_state_unpowered = "pda-chaplain"
    icon_state_powered = "pda-chaplain"

/obj/item/modular_computer/pda/preset/hydro
    name = "botanist's PDA"
    icon_state = "pda-hydro"
    icon_state_unpowered = "pda-hydro"
    icon_state_powered = "pda-hydro"

/obj/item/modular_computer/pda/preset/janitor
    name = "janitor's PDA"
    icon_state = "pda-janitor"
    icon_state_unpowered = "pda-janitor"
    icon_state_powered = "pda-janitor"

/obj/item/modular_computer/pda/preset/lawyer
    name = "lawyer's PDA"
    icon_state = "pda-lawyer"
    icon_state_unpowered = "pda-lawyer"
    icon_state_powered = "pda-lawyer"

/obj/item/modular_computer/pda/preset/curator
    name = "curator's PDA"
    icon_state = "pda-library"
    icon_state_unpowered = "pda-library"
    icon_state_powered = "pda-library"

/obj/item/modular_computer/pda/preset/medical
    name = "medical doctor's PDA"
    icon_state = "pda-medical"
    icon_state_unpowered = "pda-medical"
    icon_state_powered = "pda-medical"

/obj/item/modular_computer/pda/preset/virology
    name = "virologist's PDA"
    icon_state = "pda-virology"
    icon_state_unpowered = "pda-virology"
    icon_state_powered = "pda-virology"

/obj/item/modular_computer/pda/preset/miner
    name = "shaft miner's PDA"
    icon_state = "pda-miner"
    icon_state_unpowered = "pda-miner"
    icon_state_powered = "pda-miner"

/obj/item/modular_computer/pda/preset/genetics
    name = "geneticist's PDA"
    icon_state = "pda-genetics"
    icon_state_unpowered = "pda-genetics"
    icon_state_powered = "pda-genetics"

/obj/item/modular_computer/pda/preset/roboticist
    name = "roboticist's PDA"
    icon_state = "pda-roboticist"
    icon_state_unpowered = "pda-roboticist"
    icon_state_powered = "pda-roboticist"

/obj/item/modular_computer/pda/preset/science
    name = "scientist's PDA"
    icon_state = "pda-science"
    icon_state_unpowered = "pda-science"
    icon_state_powered = "pda-science"

/obj/item/modular_computer/pda/preset/security
    name = "security officer's PDA"
    icon_state = "pda-security"
    icon_state_unpowered = "pda-security"
    icon_state_powered = "pda-security"

/obj/item/modular_computer/pda/preset/warden
    name = "warden's PDA"
    icon_state = "pda-warden"
    icon_state_unpowered = "pda-warden"
    icon_state_powered = "pda-warden"

/obj/item/modular_computer/pda/preset/mime
    name = "mime's PDA"
    icon_state = "pda-mime"
    icon_state_unpowered = "pda-mime"
    icon_state_powered = "pda-mime"

/obj/item/modular_computer/pda/preset/clown
    name = "clown's PDA"
    desc = "A small, portable microcomputer designed to make your life easier. The surface is coated with polytetrafluoroethylene and banana drippings."
    icon_state = "pda-clown"
    icon_state_unpowered = "pda-clown"
    icon_state_powered = "pda-clown"

/obj/item/modular_computer/pda/preset/clown/Initialize()
    . = ..()
    AddComponent(/datum/component/slippery, 120, NO_SLIP_WHEN_WALKING)

/obj/item/modular_computer/pda/preset/clear
    name = "clear PDA"
    icon_state = "pda-clear"
    icon_state_unpowered = "pda-clear"
    icon_state_powered = "pda-clear"

/obj/item/modular_computer/pda/preset/syndicate
    name = "military PDA"
    icon_state = "pda-syndi"
    icon_state_unpowered = "pda-syndi"
    icon_state_powered = "pda-syndi"