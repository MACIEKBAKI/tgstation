/datum/computer_file/program/email
    filename = "ntmail_client"
    filedesc = "Email Client"
    program_icon_state = "command"
    extended_desc = "This program allows one to communicate via emails."
    size = 1
    requires_ntnet = 1
    requires_ntnet_feature = NTNET_COMMUNICATION
    network_destination = "NTNRC server"
    ui_header = "ntnrc_idle.gif"
    available_on_ntnet = 1
    tgui_id = "NtosEmailClient"
    ui_x = 450
    ui_y = 580

    var/error

    var/stored_login = "sexmaster62"
    var/stored_password = "1234"
    var/datum/computer_file/data/email_account/account
    var/current_message

/datum/computer_file/program/email/New()
    generate_email(stored_login, stored_password)

/datum/computer_file/program/email/ui_act(action, params)
    if (..())
        return 1

    switch(action)
        if ("PRG_logout")
            stored_login = account.login
            stored_password = account.password
            account.login = null
            account.password = null
            return TRUE
        if ("PRG_login")
            if (check_valid_email_login(stored_login, stored_password))
                account.login = stored_login
                account.password = stored_password
                return TRUE
        if ("PRG_inputlogin")
            stored_login = params["new_login"]
            return TRUE
        if("PRG_inputpassword")
            stored_password = params["new_password"]
            return TRUE
    return FALSE

/proc/generate_email(login = "DefaultUser[rand(1000,9999)]", password = "[rand(1000,9999)]")
    var/datum/computer_file/data/email_account/acc = new
    acc.login = login
    acc.password = password
    for (var/datum/computer_file/data/email_account/email in GLOB.valid_emails)
        if (email.login == acc.login)
            return FALSE
    GLOB.valid_emails += acc
    return TRUE

/proc/check_valid_email_login(login, password)
    for (var/datum/computer_file/data/email_account/acc in GLOB.valid_emails)
        if (acc.login == login && acc.password == password)
            return TRUE
    return FALSE

/datum/computer_file/program/email/ui_data(mob/user)
    var/list/data = get_header_data()

    if(error)
        data["error"] = error
        return

    data["login"] = account.login
    data["password"] = account.password
    data["current_message"] = current_message
    data["stored_login"] = stored_login
    data["stored_password"] = stored_password
    return data