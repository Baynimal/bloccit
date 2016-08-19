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

30.times do
  Question.create!(
  title: RandomData.random_sentence,
  body: RandomData.random_sentence,
  resolved: true
  )
end


puts "Seeds finished"
puts "#{post.count} posts created"
puts "#{Comment.count} comments created"
puts "#{Question.count} questions created"
