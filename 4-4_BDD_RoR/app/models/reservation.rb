class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :listing
  validates_presence_of :start_date, :end_date

  validate :end_date_is_after_start_date
  
  #######
  private
  #######
  
  def end_date_is_after_start_date
    return if end_date.blank? || start_date.blank?
  
    if end_date < start_date
      errors.add(:end_date, "cannot be before the start time") 
    end 
  end
end
