class User < ApplicationRecord
  validates :password, :email, confirmation: true
  validates :first_name, :last_name, :password, :email, presence: true, absence: true
  validates :email, uniqueness: true

  before_validation :downcase_email, :first_last_name_to_upper, :is_names_present

  public

  def full_name
    first_name + ' ' + last_name
  end

  private

  def downcase_email
    email = email.downcase
  end

  def first_last_name_to_upper
    first_name = titleize(first_name)
    last_name = titleize(last_name)
  end

  def titleize(word)
    word.gsub(/\b('?[a-z])/) { $1.capitalize }
  end

  def is_names_present
    @generator = Namey::Generator.new
    @full_name = @generator.name

    if (first_name.empty? && last_name.empty?)
      first_name = @full_name.split[0]
      last_name = @full_name.split[1]
    end

    if (!first_name.empty? && last_name.empty?)
      last_name = @full_name.split[1]
    end

    if (first_name.empty? && !last_name.empty?)
      first_name = @full_name.split[0]
    end
  end
end
