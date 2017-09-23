$('#totop').on('click', function(e){
  e.preventDefault();
  $('#totop').addClass("animated bounceOut");
  $('html, body').stop().animate({ scrollTop: '0px'}, 1000);
});

$(window).scroll(function(){
  if ($(window).scrollTop()==0){
    $('#totop').removeClass("animated bounceOut");
    $('#totop').hide();
  }else
    $('#totop').show();
});
