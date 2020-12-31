class ActivitySerializer
  include JSONAPI::Serializer
  belongs_to :owner, serializer: :user

  attributes :id, :parameters

  attribute :owner_name do |obj|
    if obj.owner.nil?
      ''
    else
      obj.owner.name
    end
  end
end
