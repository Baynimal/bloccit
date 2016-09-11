FactoryGirl.define do
  factory :label do
    sequence(:name){|name| "lables#{name}"}
  end
end 
