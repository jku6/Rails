Ninja.delete_all





names = ['knife', 'gun', 'boomerang', 'magic', 'mace']

500.times do |x|
    n = Ninja.create(:name => names.sample)
end


# ('A'..'Z').each do |letter|
#     c = Creature.create(:creature_type => creature_types.sample, :name => letter, :weapon => weapons.sample, :password => 'a', :password_confirmation => 'a')
# end
