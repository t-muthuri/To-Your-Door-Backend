namespace :meals do
  desc "Seeds categories"
  task seed_categories: :environment do
    Category.create!([{
      name: "Snacks"
    },
    {
      name: "Salad"
    },
    {
      name: "Meat "
    },
    {
      name: "Soups"
    },
    {
      name: "Baked"
    }
  ])
  end

end
