class Connection < ActiveRecord::Base
  validates :contact1_id, :contact2_id, presence: true, uniqueness: true

  def self.connect(contact1, contact2)
    contact1, contact2 = [contact1, contact2].sort_by(&:id)
    
    c = Connection.new
    c.contact1_id = contact1.id
    c.contact2_id = contact2.id
    c.save!
  end

  def self.connected?(contact1, contact2)
    contact1, contact2 = [contact1, contact2].sort_by(&:id)
    exists?(:contact1_id => contact1.id, :contact2_id => contact2.id)
  end
end
