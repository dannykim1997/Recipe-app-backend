Cookbook.destroy_all
Recipe.destroy_all
User.destroy_all

u1 = User.create(username: 'Goku', password: '1234', avatar: 'https://pbs.twimg.com/profile_images/1366466342354751491/JyhZpbtu_400x400.jpg')
u2 = User.create(username: 'Naruto', password: 'abc', avatar: 'https://static.wikia.nocookie.net/naruto/images/0/09/Naruto_newshot.png/revision/latest?cb=20210223094656')

Recipe.create(name: 'Kimchi Fried Rice', category: 'Pork', origin: 'South Korea', instructions: 'Dice up all ingredients. Fry pork, then add kimchi and other veg. Then add rice and stir everything.', ingredients: 'pork| kimchi| onion', measurements: '300g| 1cup| half', image:'https://static01.nyt.com/images/2021/01/17/dining/kimchi-rice/merlin_181989396_094243fb-1b13-4117-aeaa-d413d5a1dd8c-articleLarge.jpg')
Recipe.create(name: 'Instant Ramen', category: 'Soup', origin: 'Japan', instructions: 'add powder and veg to noodles, then add hot water, wait for 3 minutes, and done.', ingredients: 'noodles| powder| veg| water', measurements: '1 pack| 1 pack| 1 pack| half a cup', image: 'https://upload.wikimedia.org/wikipedia/commons/7/73/Mama_instant_noodle_block.jpg')

Cookbook.create(user_id: u1.id, recipe_id: Recipe.all.sample.id)
Cookbook.create(user_id: u2.id, recipe_id: Recipe.all.sample.id)