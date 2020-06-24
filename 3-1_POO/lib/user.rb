class User
  attr_accessor :email
  attr_accessor :age
  @@user_count = 0
  @@all_users = []

  def initialize(user_email_to_save, user_age_to_save)
    @email = user_email_to_save
    @age = user_age_to_save.to_i
    @@all_users << @email
    puts "On enregistre le nom du participant"
  end

  def self.all
    return @@all_users
  end

  def self.find_by_email(email)
    @@all_users.include?(email) ? @@all_users[email] : false
  end
end