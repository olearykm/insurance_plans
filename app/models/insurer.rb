class Insurer < ActiveRecord::Base
  validates :insurer, :presence => true, :uniqueness => true

  has_many :plans ,  :class_name => "Plan", :foreign_key => "insurer_id"

  has_many :states , :through => :plans
  has_many :counties , :through => :plans

end
