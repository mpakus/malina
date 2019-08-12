# frozen_string_literal: true

ActiveRecord::Schema.define do
  self.verbose = false

  create_table :malina_emails, force: true do |t|
    t.string :subject
    t.string :to, index: true
    t.string :from, index: true
    t.string :cc
    t.string :bcc
    t.text :body

    t.timestamps
  end
end
