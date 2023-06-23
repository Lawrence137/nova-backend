users = [
    {
      :first_name => 'John',
      :last_name => 'Doe',
      :phone_number => 1234567890,
      :email => 'john.doe@example.com',
      :password_digest => BCrypt::Password.create('password')
    },
    {
      :first_name => 'Jane',
      :last_name => 'Doe',
      :phone_number => 9876543210,
      :email => 'jane.doe@example.com',
      :password_digest => BCrypt::Password.create('password')
    }
  ]
  
  users.each do |user|
    User.create(user)
  end