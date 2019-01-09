module Types
  class MutationType < Types::BaseObject
    field :create_lemur, mutation: Mutations::CreateLemur
  end
end
