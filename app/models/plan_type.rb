class PlanType < ActiveRecord::Base
  #validates :plan_type, :presence => true

  has_many :plans , :class_name => "Plan", :foreign_key => "plan_type_id"
end
