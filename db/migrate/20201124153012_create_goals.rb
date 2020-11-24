class CreateGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :goals do |t|
      t.integer :user_id
      t.string :goal1_name
      t.integer :goal1
      t.string :goal2_name
      t.integer :goal2
      t.string :goal3_name
      t.integer :goal3
      t.string :goal4_name
      t.integer :goal4
      t.string :early_game_goal_name
      t.integer :early_game_goal
      t.string :mid_game_goal_name
      t.integer :mid_game_goal
      t.string :late_game_goal_name
      t.integer :late_game_goal

    end
  end
end
