#USERS
frank = User.create( email: 'frank@ex.com', password: 'abcd1234', password_confirmation: 'abcd1234' )
alice = User.create( email: 'alice@ex.com', password: 'abcd1234', password_confirmation: 'abcd1234' )
anton = User.create( email: 'anton@ex.com', password: 'abcd1234', password_confirmation: 'abcd1234' )


# tutor_subjects = {}
#
# tutor_subjects["Jgreen"] = ["Math"]
#
#
# tutor_subjects.each do | user_name, subjects |
#   user = User.find_by( name: user_name )
#
#   subjects.each do |subject|
#     Subject.create( name:subject, user_id: user.id)
#   end
# end
