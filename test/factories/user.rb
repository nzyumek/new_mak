# If your model is called User, then use :user instead of :account below:

FactoryBot.define do
  factory :user, class: User do
    email { "aaa@aaa" }
    password { "password"} 
    password_confirmation { "password" }
    confirmed_at { Date.today }
    username { "aaa" }
    bachelor  { "bachelor" }
    major  { "major" }
    lastn  { "lastn" }
    firstn { "firstn" }
    h_firstn { "h_firstn" }
    h_lastn { "h_lastn" }
    gen { "50" }
    studno { "11111111" }
    role { "admin" }
  end
end