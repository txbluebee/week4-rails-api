FactoryGirl.define do
  factory :user do
    
  end
  factory(:quote) do
    author('Bob')
    content('Life is sleepy))')
  end
end
