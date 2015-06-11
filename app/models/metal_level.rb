class MetalLevel < ActiveRecord::Base
  #validates :metal_level, :presence => true, :uniqueness => { :scope => :metal_level }

  has_many :plans , :class_name => "Plan", :foreign_key => "metal_level_id"
end
