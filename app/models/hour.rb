class Hour < ActiveRecord::Base
  
  validates_presence_of :amount
  validates_presence_of :project_id
  validates_presence_of :user_id
  validates_presence_of :date
  validates_presence_of :description
  
  validate :project_locked
  
  validates_numericality_of :amount, :greater_than => 0, :less_than => 24, :message => 'amount must be between 0.25 and 24 :) - use dot not comma'
  validates_format_of :amount, :with => /^\d+??(?:\.\d{0,2})?$/
  
  
  belongs_to :user
  belongs_to :project
  belongs_to :task
  belongs_to :work_category
  
  scope :day, lambda {|day| where(:date => day) }
  scope :holiday, where(:holiday => true)
  scope :ill, where(:ill => true) # ill
  scope :comp_time, where(:comp_time => true) # ill
  scope :normal, where(:comp_time => false) # normal hours
  scope :not_future,  where('date <= ?', Date.today)
  scope :by_month, lambda { |d| { :conditions => { :date => d.beginning_of_month..d.end_of_month } } }
  
  def project_name
    project.try(:name)
  end
  
  def project_name=(name)
    self.project = Project.find_by_name(name) if name.present?
  end
  
  def percent_day
    daily_hours = 12
    percentage = self.amount * 100 / daily_hours
    percentage  
  end 
    
  def self.total_percent_day(user, date=Date.today)
    day_hours = Hour.where(:date => date, :user_id => user.id)
    day_hours.to_a.sum { |day_hour| day_hour.percent_day }
  end
  
  def self.number_of_entries(user, date=Date.today)
    Hour.where(:date => date, :user_id => user.id).count
  end
  
  private
  
  def project_locked
    if project.locked?
      errors.add :base, 'can not book hours because this project is locked - please contact project manager.'
    end
  end
  
  
  
end
