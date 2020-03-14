-- select
--     title,
--     released_year,
--     case
--         when released_year >= 2000 then 'Modern List'
--         else '20th century lit'
--     end as GENRE
-- from
--     books;
-- select
--     title,
--     stock_quantity,
--     case
--         when stock_quantity between 0
--         and 50 then '*'
--         when stock_quantity between 51
--         and 100 then '**'
--         else '***'
--     end as stock
-- from
--     books;
-- select
--     title,
--     author_lname,
--     case
--         when title like '%stories%' then 'Short Stories'
--         when title like 'Just kids'
--         or title like 'a heartbreaking work of staggering genius' then 'Memoir'
--         else 'Novel'
--     end as 'Type'
-- from
--     books;
select
    title,
    author_lname,
    author_fname,
    case
        when count(*) = 1 then '1 Book'
        when count(*) = 2 then '2 Books'
        else '3 Books'
    end as 'Count'
from
    books
group by
    author_lname,
    author_fname
limit
    10;