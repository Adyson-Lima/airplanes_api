class Airplane < ApplicationRecord
  validates :name, :description, :manufacturer, presence: true
end
