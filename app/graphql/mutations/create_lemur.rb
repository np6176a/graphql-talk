class Mutations::CreateLemur < GraphQL::Schema::Mutation
  argument :name, GraphQL::Types::String, required: true
  argument :age, GraphQL::Types::Int, required: false
  argument :owner_id, GraphQL::Types::ID, required: true

  field :lemur, Types::LemurType, null: false
  field :errors, [String], null: false

  def resolve(name:, age:, owner_id:)
    owner = Owner.find(owner_id)
    lemur = owner.lemurs.build(name: name, age: age)
    if lemur.save
      # Successful creation, return the created object with no errors
      {
        lemur: lemur,
        errors: [],
      }
    else
      # Failed save, return the errors to the client
      {
        lemur: nil,
        errors: lemur.errors.full_messages
      }
    end
  end
end
