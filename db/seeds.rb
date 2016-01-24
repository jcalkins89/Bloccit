# Create Posts
50.times do
# #1
  Post.create!(
# #2
    title:  RandomData.random_sentence,
    body:   RandomData.random_paragraph
  )
end
posts = Post.all

Post.find_or_create_by(title: "A unique title", body: "A unique body")

# Create Comments
# #3
100.times do
  Comment.create!(
# #4
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

Comment.find_or_create_by(body: "A unique body")

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
