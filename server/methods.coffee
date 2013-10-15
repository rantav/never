Meteor.methods
  sendNewUserEmail: (email) ->
    check(email, String)

    @unblock()

    Email.send
      to: ['rantav+neverbeenused@gmail.com', 'nir@dremer.net'],
      from: 'rantav+neverbeenused@gmail.com',
      subject: "Never Been Used new interest: #{email}",
      text: "hooray"
