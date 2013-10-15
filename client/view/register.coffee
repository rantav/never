
Template.register.events
  'submit form': (e) ->
    e.preventDefault()
    email = $('#email').val()
    if email
      i = Interests.insert(email: email, createdAt: new Date())
      if i
        Meteor.call('sendNewUserEmail', email)
        console.log('thanks')