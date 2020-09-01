class Pet < ApplicationRecord
    SPECIES = ["crocodile", "shark", "wombat", "magpie"]
    validates :name, presence: true
    validates :found_on, presence: true
    validates :species, inclusion: { in: Pet::SPECIES }

    def found_days_ago
        (Date.today - found_on).to_i
    end
end
