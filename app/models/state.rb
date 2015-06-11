class State < ActiveRecord::Base
  validates :state, :presence => true, :uniqueness => { :scope => :state }

  has_many :plans , :class_name => "Plan", :foreign_key => "state_id"

  has_many :insurers , :through => :plans
  has_many :counties , :through => :plans

end
