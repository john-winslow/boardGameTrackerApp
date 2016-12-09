$(document).ready(function() {
 $('#login').on('click', function(event) {
    event.preventDefault();
    $('.large.modal.login')
    .modal('show')
  }) 
 $('#register').on('click', function(event) {
    event.preventDefault();
    $('.large.modal.register')
    .modal('show')
  }) 
})
  