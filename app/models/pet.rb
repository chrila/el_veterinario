class Pet < ApplicationRecord
  belongs_to :client
  has_many :pet_histories, dependent: :destroy

  def to_s
    name
  end

  def weight_avg
    pet_histories.nil? ? 0 : pet_histories.map(&:weight).sum / pet_histories.length
  end

  def height_avg
    pet_histories.nil? ? 0 : pet_histories.map(&:height).sum / pet_histories.length
  end

  def weight_max
    pet_histories.nil? ? 0 : pet_histories.map(&:weight).max
  end

  def height_max
    pet_histories.nil? ? 0 : pet_histories.map(&:height).max
  end
end
