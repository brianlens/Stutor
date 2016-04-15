#USERS
Subject.destroy_all
User.destroy_all


User.create!( {firs_name:"Willem-Alexander", last_name:"van Buuren", username:"prinspils", password:"bierislekker", email:"renee.v.leijen@gmail.com", phone:"0617612365", city:"Amsterdam"} )
User.create!( {firs_name:"Mark", last_name:"Rutte", username:"minpres1", password:"ikplasterk", email:"markrutte@primeminister.nl", phone:"0612345789", city:"The Hague"} )
User.create!( {firs_name:"Bas", last_name:"Joosten", username:"bas_joosten", password:"bigmonnie14", email:"bas.joosten@bcg.nl", phone:"+31 6 57878241", city:"Amsterdam"} )
User.create!( {firs_name:"Robert", last_name:"Boemke", username:"english_wiz", password:"abc123456", email:"r.boemke@gmail.com", phone:"043 388 52 82", city:"Amsterdam"} )
User.create!( {firs_name:"Edward", last_name:"Sharpe", username:"e_sharpe", password:"hawtdawg", email:"e.sharpe@gmail.com", phone:"043 366 52 87", city:"Amsterdam"} )
User.create!( {firs_name:"Pim", last_name:"Muns", username:"Pimmetje71", password:"dikkepim", email:"p.b.muns@gmail.com", phone:"+31 6 11738527", city:"Den Haag"} )
User.create!( {firs_name:"Adri", last_name:"Rietjens", username:"Adriaan", password:"bassie123", email:"a3@gmail.com", phone:"+31 6 57889301", city:"Leiden"} )
User.create!( {firs_name:"Brian", last_name:"Lens", username:"Brian_the_lion", password:"flinkevis", email:"brian@stutor.com", phone:"+31 6 46396642", city:"Amsterdam"} )
User.create!( {firs_name:"Jeff",last_name: "Green", username:"Jgreen", password:"Jeff1123",  email:"Jeff_Green@veryhotmail.com", phone: "0620984649",city:"Amsterdam"} )
User.create!( {firs_name:"Barack ",last_name:"Obama", username:"PresidentUSA", password:"Barack1123",  email: "Baraka_Waka_Flame@dopehood.com ", phone:"0620984649",city:"Amsterdam"})
User.create!( {firs_name:" Wouter",last_name:"de Vos", username:"foxycoder", password:"wdevos1123",  email: " foxy_coder@bootcamp.com ", phone: "0691129112",city:"Amsterdam" })


tutor_subjects = {}

tutor_subjects["Jgreen"] = ["Math"]
tutor_subjects["Jgreen"] = ["Physics"]
tutor_subjects["e_sharpe"] = ["Math"]
tutor_subjects["Brian_the_lion"] = ["Programming"]
tutor_subjects["PresidentUSA"] = ["Economics"]
tutor_subjects["foxycoder"] = ["Physics"]
tutor_subjects["foxycoder"] = ["Programming"]
tutor_subjects["english_wiz"] = ["English"]
tutor_subjects["e_sharpe"] = ["Computer Science"]


tutor_subjects.each do | user_name, subjects |
  user = User.find_by( username: user_name )
  subjects.each do |subject|
    Subject.create!( name:subject, user_id: user.id)
  end
end

profiles = {}

profiles["Jgreen"] = ["I've been working as a teacher for almost 15 years. I'm specialized in history but also for math problems I can most likely help you with a lot. I am mostly available in the evening.",
   30, "https://pbs.twimg.com/profile_images/559752051819692032/aSogDYZe.jpeg"]


profiles.each do |user_name, info|
  tutor = User.find_by(username: user_name)


  info.each do |description, price, image|
    Profile.create(name: tutor.firs_name, city: tutor.city, description: description, price: price, image: image, user_id: tutor.id)
  end
end
