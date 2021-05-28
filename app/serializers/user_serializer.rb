class UserSerializer
    include FastJsonapi::ObjectSerializer
    attributes :id, :username, :first_name, :last_name, :cookbooks, :recipes
end