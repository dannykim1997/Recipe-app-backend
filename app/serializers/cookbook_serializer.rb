class CookbookSerializer
    include FastJsonapi::ObjectSerializer
    attributes :id, :recipes
end