# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#posts

Post.create(
  title: "GitHub",
  content: "GitHub Inc. is a web-based hosting service for version control using Git. It is mostly used for computer code. It offers all of the distributed version control and source code management functionality of Git as well as adding its own features."
)
Post.create(
  title: "London",
  content: "London, the capital of England and the United Kingdom, is a 21st-century city with history stretching back to Roman times. At its centre stand the imposing Houses of Parliament, the iconic ‘Big Ben’ clock tower and Westminster Abbey, site of British monarch coronations. Across the Thames River, the London Eye observation wheel provides panoramic views of the South Bank cultural complex, and the entire city."
)
Post.create(
  title: "How to  c",
  content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dapibus, nulla vel condimentum ornare, arcu lorem hendrerit purus, ac sagittis ipsum nisl nec erat. Morbi porta sollicitudin leo, eu cursus libero posuere ac. Sed ac ultricies ante. Donec nec nulla ipsum. Nunc eleifend, ligula ut volutpat."
)


#Users

User.create(
  username:"Gina Lovelace",
  email: "gina@the-history-of-programming.com"
)
User.create(
    username:"Ada Nickidonian",
    email: "nickidonian@the-saga-of-programming.com"
)


#comments

Comment.create(
[{
  content: "Sed dapibus, nulla vel condimentum ornare.",
  user: User.find_by(username: "Gina Lovelace"),
  post: Post.find_by(title: "GitHub" )
}]
)
Comment.create(
[{
  content: "London - Donec nec nulla ipsum. Nunc eleifend, ligula ut volutpat.",
  user: User.find_by(username: "Ada Nickidonian"),
  post: Post.find_by(title: "London" )
}]
)
Comment.create(
[{
  content: "Computer Science donec nec nulla ipsum. Nunc eleifend, ligula ut volutpat.Sed dapibus, nulla vel condimentum ornare.",
  user: User.find_by(username: "Gina Lovelace"),
  post: Post.find_by(title: "How to  c" )
}]
)
Comment.create(
[{
  content: "GitHub sed dapibus, nulla vel condimentum ornare.",
  user: User.find_by(username: "Gina Lovelace"),
  post: Post.find_by(title: "GitHub" )
}]
)
Comment.create(
[{
  content: "Computer Science -  dapibus, nulla vel condimentum ornare.",
  user: User.find_by(username: "Ada Nickidonian"),
  post: Post.find_by(title: "How to  c" )
}]
)
