class User < ActiveRecord::Base
  include Clearance::User
  has_one :skillset
  has_one :work_culture
end
