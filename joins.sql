SELECT * FROM users;

SELECT * from posts WHERE id=100;

SELECT posts.*, users.first_name, users.last_name FROM posts
inner join users on posts.users_id = users.id
WHERE users.id = 200;

SELECT posts.*, users.username FROM posts
inner join users on posts.users_id = users.id
WHERE users.first_name = 'Norene' and users.last_name = 'Schmitt';

SELECT username from users
INNER JOIN posts on users.id = posts.users_id
WHERE posts.created_at > 'January 1, 2015';

SELECT posts.title, posts.content, users.username from posts
INNER JOIN users on users.id = posts.users_id
WHERE users.created_at < 'January 1, 2015';

SELECT comments.*, posts.title as "Post Title" from comments
INNER JOIN posts on comments.posts_id = posts.id;

SELECT comments.*, posts.title as "post_title", posts.url as "post_url", comments.body as "comment_body" from comments
INNER JOIN posts on comments.posts_id = posts.id
WHERE posts.created_at < 'January 1, 2015';

SELECT comments.*, posts.title as "post_title", posts.url as "post_url", comments.body as "comment_body" from comments
INNER JOIN posts on comments.posts_id = posts.id
WHERE posts.created_at > 'January 1, 2015';

SELECT comments.*, posts.title as "post_title", posts.url as "post_url", comments.body as "comment_body" from comments
INNER JOIN posts on comments.posts_id = posts.id
WHERE comments.body LIKE '%USB%';

SELECT comments.*, posts.title as "post_title", users.first_name, users.last_name, comments.body as "comment_body" from comments
INNER JOIN posts on comments.posts_id = posts.id
INNER JOIN users on users.id = comments.users_id
WHERE comments.body LIKE '%matrix%';

SELECT posts.id, comments.id , users.first_name, users.last_name, posts.title, comments.body from comments
INNER JOIN users on users.id = comments.users_id
INNER JOIN posts on comments.posts_id = posts.id
inner join users post_users on posts.users_id = post_users.id
WHERE posts.content like '%nemo%'
and (comments.body like '%SSL%' or comments.body like '%firewall%');



select posts.id as posts_id, posts.title, users.id as users_id from posts
INNER JOIN users ON posts.users_id = users.id
WHERE (select )




select post_users.first_name as post_author_first_name, post_users.last_name
as post_author_last_name, posts.title as post_title, comment_users.username
as comment_author_username, comments.body as comment_body from users post_users
  inner join posts on posts.users_id = post_users.id
  inner join comments on comments.posts_id = posts.id
  inner join users comment_users on comment_users.id = comments.id
  where (comments.body like '%SSL%' or comments.body like '%firewall%')
  and posts.content like '%nemo%';


select comments.id, comments.posts_id, posts.created_at, posts.id from comments
inner join posts on comments.posts_id = posts.id
where posts.created_at > 'july 14, 2015';