class RecipeSerializer
    include FastJsonapi::ObjectSerializer
    attributes :id, :name, :cookbook
end