$(document).ready(function() {
 $('#login').on('click', function(event) {
    console.log("hello")
    event.preventDefault();
    $('.large.modal')
    .modal('show')
  }) 
})
  