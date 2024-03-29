// Generated by CoffeeScript 1.3.3

$(function() {
  var $b, $submit, $t;
  $b = $('body');
  $submit = $b.find('.btn-submit');
  $submit.hover(function() {
    return $(this).addClass('btn-submit-hover');
  }, function() {
    return $(this).removeClass('btn-submit-hover');
  });
  $(":checkbox, :radio").css('opacity', 0);
  $t = $("table");
  $t.find('tbody tr:even').addClass('even');
  $('label').hover(function() {
    return $(this).addClass('hover');
  }, function() {
    return $(this).removeClass('hover');
  });
  $b.on('click.radio', '.q-radio li', function() {
    return $(this).addClass('checked').siblings().removeClass('checked');
  });
  $b.on('click.radio-ms', '.q-matrix-s label', function() {
    return $(this).closest('td').addClass('checked').siblings().removeClass('checked');
  });
  $b.on('click.radio-ms-col', '.q-matrix-s-col label', function() {
    var $td, $trs, i;
    $td = $(this).closest('td');
    $trs = $td.closest('tr').siblings();
    i = $td.index();
    $td.addClass('checked').siblings().removeClass('checked');
    return $trs.each(function() {
      return $(this).find('td').eq(i).removeClass('checked').find(':radio').attr('checked', false);
    });
  });
  $b.on('click.check', '.q-check li', function(e) {
    var check, o;
    o = $(this);
    check = o.find(':checkbox');
    $t = $(e.target);
    if ($t.is('input:text')) {
      if ($.browser.msie) {
        check.attr('checked', 'checked');
        return o.addClass('checked');
      } else {
        check.removeAttr('checked');
        return o.removeClass('checked');
      }
    } else {
      if (check.attr('checked')) {
        return o.addClass('checked');
      } else {
        return o.removeClass('checked');
      }
    }
  });
  return $b.on('change.radio', '.r-select select', function() {
    var o;
    o = $(this);
    if (o.val() === "other") {
      return o.next().show();
    } else {
      return o.next().hide();
    }
  });
});
