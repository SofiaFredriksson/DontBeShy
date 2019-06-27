Staff.destroy_all
Post.destroy_all
Solution.destroy_all

s1 = Staff.create(name: "Sofia Fredriksson", title: "Software Engineering Coach")

p1 = Post.create(title: "Heckin Concern", content: "Doin me a heck!", category: "Miscellaneous", staff: s1)

Solution.create(content: "HECK!", staff: s1, post: p1)