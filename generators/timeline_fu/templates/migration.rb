class CreateTimelineEvents < ActiveRecord::Migration
  def self.up
    create_table :timeline_events do |t|
      t.string   :event_type, :subject_type,  :actor_type,  :secondary_subject_type, :url
      t.text     :message, :default => ""
      t.integer               :subject_id,    :actor_id,    :secondary_subject_id
      t.timestamps
    end
  end
 
  def self.down
    drop_table :timeline_events
  end
end
 

