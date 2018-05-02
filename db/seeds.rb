require 'random_data'

#create posts
50.times do
  Post.create!(
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph
  )
end
posts = Post.all

#Create comments
100.times do
  Comment.create!(
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end
comments = Comment.all

posts.find_or_create_by(title: "this is a unique post", body: "this is a unique post body")

comments.find_or_create_by(post_id: "101", body: "this is a unique body")

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
