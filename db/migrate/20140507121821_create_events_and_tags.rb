class CreateEventsAndTags < ActiveRecord::Migration
  def change
    create_table :events do |t|
    	t.string :name
    	t.text :description
    	t.date :event_date
    end

    create_table :tags do |t|
    	t.string :name
    end
  end
end
