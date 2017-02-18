admin = Admin.create(email: 'bootstrap@app.com', password: 'bootstrap')

15.times do |n|
  admin.posts.create(title: "Post ##{n + 1}")
end
