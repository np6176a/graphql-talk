class Types::OwnerType < Types::BaseObject
  field :first_name, String,
        description: "First Name",
        null: false
  field :last_name, String,
        description: "Last Name",
        null: false
  field :lemurs, [Types::LemurType],
        description: "The Lemurs!",
        null: false
end
