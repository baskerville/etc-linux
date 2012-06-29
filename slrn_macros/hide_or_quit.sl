define hide_or_quit ()
{
    if (is_article_visible ())
        call ("hide_article");
    else
        call ("quit");
}
