Staff.destroy_all
Post.destroy_all
Solution.destroy_all
Category.destroy_all

c1 = Category.create(name: "Miscellaneous")

s1 = Staff.create(name: "Sofia Fredriksson", title: "Software Engineering Coach", username: "FiaPia", password: "fia")

p1 = Post.create(title: "Heckin Concern", content: "Doin me a heck!", category: c1, staff: s1)

Solution.create(content: "HECK!", staff: s1, post: p1)