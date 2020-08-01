class CreateDogs < ActiveRecord::Migration[5.2]
  def up
    create_table :dogs do |t|
      t.string :name
      t.string :breed
    end
  end

  def down
    drop_table :dogs
  end
end

# the #change is actually a shorter way of writing up and down methods. We can refactor this migration with #change. The rollback(down) method is not included, it's implicit in the change method. db:rollback works the same as the #down
