number = 1;

5.times do

@user = User.create(
{
  name: "User#{number}",
  password: "password"
})

@post = Post.create(
{
  title: "Title#{number}",
  body: "Body#{number}",
  url: "url#{number}",
  user: @user
})

@comment = Comment.create(
{
  body: "Body#{number}",
  post: @post,
  user: @user
})

number += 1

end

