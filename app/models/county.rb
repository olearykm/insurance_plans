class County < ActiveRecord::Base
  validates :county, :presence => true, :uniqueness => { :scope => :county }

  has_many :plans , :class_name => "Plan", :foreign_key => "county_id"

  has_many :insurers , :through => :plans
  has_many :states , :through => :plans

end
