define show_xface ()
{
    variable xface, tmp_out;
    xface = extract_displayed_article_header ("X-Face");
    if (strlen (xface)) {
        tmp_out = fopen ("/tmp/slrn_xface", "w");
        () = fputs (xface, tmp_out);
        () = fclose (tmp_out);
        () = system ("slrn_show_xface");
    }
}

% register_hook ("read_article_hook", "show_xface");
