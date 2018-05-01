require 'random_data'

#create posts
50.times do
  post.create!(
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph
  )
end
posts = Posts.all

#Create comments
100.times do
  Comment.create!(
    post: post.sample,
    body: RandomData.random_paragraph
  )
end

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
