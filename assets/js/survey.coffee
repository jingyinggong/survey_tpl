$ ->
  $b = $ 'body'

  $submit = $b.find('.btn-submit')

  $submit.hover ->
      $(@).addClass('btn-submit-hover')
    , ->
      $(@).removeClass('btn-submit-hover')


  $(":checkbox, :radio").css('opacity', 0)

  $t = $("table")

  $t.find('tbody tr:even').addClass('even')

  $('label').hover ->
      $(@).addClass('hover')
    , ->
      $(@).removeClass('hover')

  $b.on 'click.radio', '.q-radio li', ->
    $(@).addClass('checked').siblings().removeClass('checked')

  $b.on 'click.radio-ms', '.q-matrix-s label', ->
    $(@).closest('td').addClass('checked').siblings().removeClass('checked')

  $b.on 'click.radio-ms-col', '.q-matrix-s-col label', ->
    $td = $(@).closest('td')
    $trs = $td.closest('tr').siblings()
    i = $td.index()
    $td.addClass('checked').siblings().removeClass('checked')
    $trs.each ->
      $(@).find('td').eq(i).removeClass('checked').find(':radio').attr('checked', false)

  $b.on 'click.check', '.q-check li', (e)->
    o = $(@)
    check = o.find(':checkbox')
    $t = $ e.target
    if($t.is('input:text'))
      if $.browser.msie
        check.attr('checked', 'checked')
        o.addClass('checked')
      else
        check.removeAttr('checked')
        o.removeClass('checked')
    else
      if check.attr('checked')
        o.addClass('checked')
      else
        o.removeClass('checked')


  $b.on 'change.radio', '.r-select select', ->
    o = $(@)
    if o.val() is "other"
      o.next().show()
    else
      o.next().hide()
