# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0)
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  funds                  :float
#  user_name              :string(255)
#

require 'spec_helper'

describe User do
  @user = User.create(user_name: 'foo', email: 'foo2@example.com', password: 'qwerty', funds: 250)
  describe 'validations' do
    it {should validate_presence_of(:user_name) }
  end

  describe 'change funds' do
    it 'increases funds' do
      pending 'had a hard time testing??  tested in console.  need to write test??'
    end
    it 'decreases funds' do
      pending 'had a hard time testing??  tested in console.  need to write test??'
    end
  end
end
