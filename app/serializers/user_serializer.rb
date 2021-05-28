class UserSerializer
    include FastJsonapi::ObjectSerializer
    attributes :id, :username, :cookbooks, :recipes
end