class SearchSerializer < ActiveModel::Serializer
  attributes :id, :query, :filters, :result_count, :user_id
end
