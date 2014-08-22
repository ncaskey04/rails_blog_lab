post1 = Post.create({title: "Soylent Green is People", description: "We're all cannibals!", author: "Richard Fleischer"})

post1.comments.create({title: "hmmm", body: "I'm hungry"});
post1.comments.create({title: "Oh wow", body: "jedis taste good"})


post1.comments << comment