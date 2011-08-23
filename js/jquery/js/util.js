// ロールオーバー
function swapimg(obj) {
  if(obj.src.match(/_f2.(jpg|gif|png)/)) {
    obj.src = obj.src.replace('_f2', '');
  } else {
    obj.src = obj.src.replace(/\.(jpg|gif|png)$/, "_f2.$1");
  }
}

/**
 * Lam NX update
 **/
// function open list review item for set to 5 review item input in add interface
function getReview(btnId, node, checkId, url) {
  var reviewCheck = $('#'+checkId).is(':checked');
  
  if(reviewCheck) {
    $('#review_item_id').val('hidden_review_' + node);
    $('#review_item_hidden_name').val('hidden_review_name_' + node);
    $('#review_item_name').val('review_name_' + node);
    $('#get_review_dialog').dialog({
      maxHeight: 640,
      minWidth: 550,
      maxWidth: 650,
      hide: 'clip',
      open: function(){
        $.ajax({
          type: "POST",
          url: url,
          data: "category2=" + $("#product_category2 option:selected").val(),
          success: function(returndata) {
            $("#get_review").html(returndata);
          }
        });
      }
    });
  }
}

function clearReviewItems(clrId) {
  $('#'+clrId).find('input:text,input:hidden').val('');
}

// Load review item on dialog list review item.
function ajaxLoad(url, currentPage) {
  $.ajax({
    type: 'POST',
    url: url,
    data: $('#add_review_item').serialize(),
    success: function(returnData) {
      $('#get_review_content').html(returnData);
    }
  });
}

// Set review item name and id for hidden input in add interface
function returnValue(reviewItem, reviewId) {
  var returnFieldId = $('#review_item_id').val();
  var returnHiddenFieldName = $('#review_item_hidden_name').val();
  var returnFieldName = $('#review_item_name').val();
  $('#'+returnFieldId).val(reviewId);
  $('#'+returnHiddenFieldName).val(reviewItem);
  $('#'+returnFieldName).val(reviewItem);
  $('#get_review_dialog').dialog("close");
}

// Check number of character when create new review item
function checkLength( o, n, min, max ) {
  var str = o.val();
  str = $.trim(str);
  if ( str.length > max || str.length < min ) {
    $('#error_msg').html("<p class='SPEr'>" + n + "は、" + max + '文字以内で入力してください。</p>');
    return false;
  } else {
    $('#error_msg').text('');
    return true;
  }
}

function getCategories(url) {
  var pc1Selected = $("#product_category1 option:selected").val();
  $.ajax({
    type: "POST",
    url: url,
    data: "category1=" + pc1Selected,
    success: function(returndata) {
      $("#product_category2").html(returndata);
    }
  });
}

/* =============== END =================*/

$(function () {
  // 全てチェックする/チェックを外す
  $('#checkall').click(function () {
    $(this.parentNode.parentNode.parentNode).find('input[type=\'checkbox\']').attr('checked', this.checked);
  });

  // カレンダーピッカー
  var dates = $( "#start_date, #end_date" ).datepicker({
//    defaultDate: "+1w",
    changeMonth: true,
    numberOfMonths: 1,
    dateFormat: 'yy-mm-dd',
    monthNames: ['1月','2月','3月','4月','5月','6月','7月','8月','9月','10月','11月','12月'],
    monthNamesShort: ['1月','2月','3月','4月','5月','6月','7月','8月','9月','10月','11月','12月'],
    dayNames: ['日','月','火','水','木','金','土'],
    dayNamesShort: ['日','月','火','水','木','金','土'],
    dayNamesMin: ['日','月','火','水','木','金','土'],
    onSelect: function( selectedDate ) {
      var option = this.id == "start_date" ? "minDate" : "maxDate",
      instance = $( this ).data( "datepicker" );
      date = $.datepicker.parseDate(
        instance.settings.dateFormat ||
        $.datepicker._defaults.dateFormat,
        selectedDate, instance.settings );
      dates.not( this ).datepicker( "option", option, date );
    }
  });
	
  var dates1 = $( "#announce_date, #txtPostLimitDate, #txtQuestionLimitDate" ).datepicker({
//    defaultDate: "+1w",
    changeMonth: true,
    numberOfMonths: 1,
    dateFormat: 'yy-mm-dd',
    monthNames: ['1月','2月','3月','4月','5月','6月','7月','8月','9月','10月','11月','12月'],
    monthNamesShort: ['1月','2月','3月','4月','5月','6月', '7月','8月','9月','10月','11月','12月'],
    dayNames: ['日','月','火','水','木','金','土'],
    dayNamesShort: ['日','月','火','水','木','金','土'],
    dayNamesMin: ['日','月','火','水','木','金','土'],
  });
  
  
	
  // ツールチップ1
  $(".ui-state-default a").hover(function() {
    $(this).next("span").animate({
      opacity:"show",
      top:"-25"
    }, 200);
  },
  function(){
    $(this).next("span").animate({
      opacity:"hide",
      top:"-25"
    }, 100);
  });

  // 文字数カウント
  $(':input[maxlength]').each(function(){
    var id = $(this).attr('id');
    /**
     * Fix error with id null
     * @author Tuanla6082
     */
    if (id == '' || id == 'underfine') {
      var id = $(this).attr('name');
    }
    //console.log($('#'+id).attr('maxlength'));
    var target = id+'_Tgt';
    $('#'+id).NobleCount('#'+id+'_Tgt',{
      max_chars: $('#'+id).attr('maxlength'),
      on_negative: 'AFC5 AFWBld',
      on_positive: 'AFC11',
      block_negative: true
    });
  });
});
