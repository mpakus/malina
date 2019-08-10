# frozen_string_literal: true

class CreateMalinaEmails < ActiveRecord::Migration[5.0]
  def change
    create_table :malina_emails do |t|
      t.string :subject
      t.string :to, index: true
      t.string :from, index: true
      t.string :cc
      t.string :bcc
      t.text :body

      t.timestamps
    end
  end
end
