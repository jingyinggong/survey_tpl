$ ->
  bd = $('body')
  page_edit = $ '#question-edit'

  page_template = $('#page_template').html()
  page_btn = '.add-page .btn'

  recaculate_page_index = ->
    pc = page_edit.find('.page-content')
    pc.each (i)->
      $o = $ @
      $o.find('h3 span').text(i+1)

  bd.on 'click', page_btn, ->
    o = $ @
    $(page_template).insertAfter(o.parent())
    recaculate_page_index()


