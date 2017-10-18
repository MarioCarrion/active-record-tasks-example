# frozen_string_literal: true

ActiveRecord::Base.transaction do
  [{ name: 'Garfield',  nickname: 'Fat',   age: 39 },
   { name: 'Sylvester', nickname: 'Daddy', age: 76 },
   { name: 'Top Cat',   nickname:  'Boss',  age: 56 }].each do |cat|
     Animals::Cat.create(cat)
  end
end
