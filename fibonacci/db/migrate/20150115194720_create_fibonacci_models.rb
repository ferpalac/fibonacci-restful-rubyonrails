class CreateFibonacciModels < ActiveRecord::Migration
  def change
    create_table :fibonacci_models do |t|
      t.string :input
      t.string :fib

      t.timestamps null: false
    end
  end
end
