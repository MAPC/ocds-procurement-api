FactoryBot.define do
  factory :user do
    auth_token { "token123" }
    email { "frank@abc.com" }
    first_name { "Frank" }
    last_name { "Sinatra" }
    neighborhood_id  { 12 }
    phone_number { "321-423-1322" }
  end
end
