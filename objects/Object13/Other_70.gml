var ev_type = ds_map_find_value(async_load, "event_type")
if (ev_type == "DiscordReady")
{
    global.discord_initialized = 1
    ready = 1
    show_debug_message(("date: " + string(date_current_datetime())))
    np_setpresence_timestamps(date_current_datetime(), 0, 0)
    np_setpresence("", "", "silly-copper", "")
}