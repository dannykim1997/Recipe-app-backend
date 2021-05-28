Cookbook.destroy_all
Recipe.destroy_all
User.destroy_all

u1 = User.create(username: 'dannykim1997', first_name: "Daniel", last_name: "Kim", password: '12345678', password_confirmation: "12345678")

r1 = Recipe.create(name: 'Kimchi Fried Rice', category: 'Pork', origin: 'South Korea', instructions: 'Dice up all ingredients. Fry pork, then add kimchi and other veg. Then add rice and stir everything.', ingredient1: 'pork', ingredient2: 'kimchi', ingredient3: 'onion', ingredient4: '', ingredient5: '', ingredient6: '', ingredient7: '', ingredient8: '', ingredient9: '', ingredient10: '', ingredient11: '', ingredient12: '', ingredient13: '', ingredient14: '', ingredient15: '', ingredient16: '', ingredient17: '', ingredient18: '', ingredient19: '', ingredient20: '', measurement1: '100g', measurement2: 'half cup', measurement3: 'half cup', measurement4: '', measurement5: '', measurement6: '', measurement7: '', measurement8: '', measurement9: '', measurement10: '', measurement11: '', measurement12: '', measurement13: '', measurement14: '', measurement15: '', measurement16: '', measurement17: '', measurement18: '', measurement19: '', measurement20: '', image:'https://static01.nyt.com/images/2021/01/17/dining/kimchi-rice/merlin_181989396_094243fb-1b13-4117-aeaa-d413d5a1dd8c-articleLarge.jpg')

c1 = Cookbook.create(user_id: u1.id, recipe_id: r1.id)
