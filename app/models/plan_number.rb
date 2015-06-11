class PlanNumber < ActiveRecord::Base
  validates :plan_number, :presence => true, :uniqueness => { :scope => :plan_number }

  has_many :plans , :class_name => "Plan", :foreign_key => "plan_number_id"
end
