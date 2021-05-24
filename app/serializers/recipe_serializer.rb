class RecipeSerializer
    include FastJsonapi::ObjectSerializer
    attributes :id, :name, :category, :origin, :instructions, :ingredients, :measurements, :image, :cookbooks
end