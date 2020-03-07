-- select
--     concat(substring(title, 1, 10), '...') as partial_title
-- from
--     books;
-- select
--     substring(replace(title, 'e', '3'), 1, 10)
-- from
--     books;
-- select
--     concat(
--         author_lname,
--         ' is ',
--         char_length(author_lname),
--         ' characters long'
--     )
-- from
--     books;
-- select
--     replace(title, ' ', '->')
-- from
--     books;
-- select
--     author_fname as forwards,
--     reverse(author_fname) as backwards
-- from
--     books;
-- select
--     upper(concat(author_fname, ' ', author_lname)) as 'full name in caps'
-- from
--     books;
-- select
--     concat(title, ' was release in ', released_year) as blurb
-- from
--     books;
-- select
--     title,
--     char_length(title)
-- from
--     books;
select
    concat(substring(title, 1, 10), '...') as short_title,
    concat(author_fname, ',', author_lname) as author,
    concat(stock_quantity, ' in stock') as quantity
from
    books;