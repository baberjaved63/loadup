FactoryBot.define do
  factory :booking do
    animal_type { %w[dog cat].sample }
    hours { (2..8).to_a.sample }
  end
end
