# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $modal = $('#newTestimonialModal')

  $('.testimonial-form').on("ajax:success", (e, status) ->
    $(@)[0].reset()
    $modal.modal 'hide'
    feedback = status.feedback
    user_name = status.user_name
    id = status.id
    prependNewTestimonial(feedback, user_name, id)
  ).on "ajax:error", (e, status) ->
    errors = status.responseJSON.errors
    for key of errors
      $("#testimonial_#{key}").closest('.form-group').addClass('has-error')

  $modal.on('hide.bs.modal', (e) ->
    $('.form-group').removeClass('has-error')
  )

  prependNewTestimonial = (feedback, user_name, id) ->
    $last_testimonial = $('.testimonial').first().clone().prependTo('.list-group')
    url = $last_testimonial.attr('href')
    last_testimonial_id = url.substring(url.lastIndexOf('/') + 1)
    new_url = url.replace(last_testimonial_id, id)
    $last_testimonial.attr('href', new_url)
    $last_testimonial.find('.testimonial-feedback').text(feedback)
    $last_testimonial.find('.testimonial-footer').text(user_name + ' Just now')