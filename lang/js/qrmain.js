$(document).ready( function(){
    $("input:button").click(function(){
    var imag = $("img#qr");
      imag.hide();
      imag.attr("src", "qrcode.php?text=" + $("textarea").attr('value'));
      imag.show();
      });
});
