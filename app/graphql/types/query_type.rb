module Types
  class QueryType < Types::BaseObject

    field :owners, [Types::OwnerType], null: false,
          description: "A List of Owners"

    def owners
      # Do some service object shit
      Owner.all
    end
  end
end
