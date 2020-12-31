class Item < ApplicationRecord
  include PublicActivity::Model
  tracked
end
