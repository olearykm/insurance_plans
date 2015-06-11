class Plan < ActiveRecord::Base
  validates :ind_40_prem, :presence => true
  validates :plan_name, :presence => true

  has_many :comparisons , :class_name => "Comparison", :foreign_key => "plan_id"
  belongs_to :plan_number , :class_name => "PlanNumber", :foreign_key => "plan_number_id"
  belongs_to :county , :class_name => "County", :foreign_key => "county_id"
  belongs_to :metal_level , :class_name => "MetalLevel", :foreign_key => "metal_level_id"
  belongs_to :plan_type , :class_name => "PlanType", :foreign_key => "plan_type_id"
  belongs_to :year , :class_name => "Year", :foreign_key => "year_id"
  belongs_to :state , :class_name => "State", :foreign_key => "state_id"
  belongs_to :insurer , :class_name => "Insurer", :foreign_key => "insurer_id"

end
