define hide_cursor ()
{
    tt_send ("\e[?25l");
}

define show_cursor ()
{
    tt_send ("\e[?25h");
}

register_hook ("group_mode_hook", "hide_cursor");
register_hook ("read_article_hook", "hide_cursor");
register_hook ("resize_screen_hook", "hide_cursor");
register_hook ("quit_hook", "show_cursor");
