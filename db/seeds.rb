require 'random_data'

50.times do
  Post.create!(
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph
  )
end

post = Post.all

100.times do
  Comment.create!(
    post: post.sample,
    body: RandomData.random_paragraph
  )
end

unique_post = Post.find_or_create_by(title: "My unique post", body: "My unique body")
unique_comment = Comment.find_or_create_by(post: unique_post, body: "My unique comment")

puts "Seeds finished"
puts "#{post.count} posts created"
puts "#{Comment.count} comments created"
