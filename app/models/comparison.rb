class Comparison < ActiveRecord::Base
  belongs_to :plan , :class_name => "Plan", :foreign_key => "plan_id"
  belongs_to :user
end
