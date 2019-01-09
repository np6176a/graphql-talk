class Types::LemurType < Types::BaseObject
  field :age, GraphQL::Types::Int,
        description: "Age of Lemur",
        null: true
  field :name, GraphQL::Types::String,
        description: "Name",
        null: false
end
