FactoryBot.define do
  factory :user do
    name { "Michael#{rand(0..99)}" }
    email { "someone#{rand(0..99)}@mail.com" }
    password { "password" }
  end
end
