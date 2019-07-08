Staff.destroy_all
Post.destroy_all
Solution.destroy_all
Category.destroy_all

c1 = Category.create(name: "Miscellaneous")
c2 = Category.create(name: "JavaScript")

c3 = Category.create(name: "Ruby")
c4 = Category.create(name: "Rails")
c5 = Category.create(name: "React")


s1 = Staff.create(name: "Sofia Fredriksson", title: "Software Engineering Coach", username: "FiaPia", password: "fia")
s2 = Staff.create(name: "Sarah Jacob", title: "Software Engineering Coach", username: "sJacod", password: "fia")
s3 = Staff.create(name: "Stuart Sewell", title: "Software Engineering Coach", username: "StewBrew", password: "fia")


p1 = Post.create(title: "Heckin Concern", content: "Doin me a heck!", category: c1, staff: s1)

Solution.create(content: "HECK!", staff: s1, post: p1)