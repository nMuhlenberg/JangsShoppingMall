class CreateSeeds < ActiveRecord::Migration[6.0]
  def change
    create_table :seed do |t|
      t.string :username # a t for each component
      t.integer :age
      t.string :gender
      t.string :homeaddress
      t.number :phonenumber
      t.email :email
      t.timestamps
    end # table
  end # creating the change
end # class is instated

class Seed < ApplicationRecord
  GENDERS = %w[male female other] # three choices of gender

  validates :gender, inclusion: { in: GENDERS }
end # splitting gender into three categories
