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

posts.find_or_create_by(title: "this is a unique post", body: "this is a unique post body")

posts.find_or_create_by(title: "this is a unique post") do |post|
  Comment.create!(
    post_id: post.id,
    body: "This is a unique body"
  )
end

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
