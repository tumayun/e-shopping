# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  productsPropertyHtml = (index) ->
    """
    <div index="#{index}" class="products_property">
      <div class="control-group required product_products_properties_attributes_name_#{index} ">
        <label class="string required control-label" for="product_products_properties_attributes_name_#{index}">
          <abbr title="必填">*</abbr> 属性名
        </label>
        <div class="controls">
          <input class="string required" id="product_products_properties_attributes_name_#{index}" name="product[products_properties_attributes][#{index}][name]" type="text" value="">
          <a class="remove_products_property" data-action="remove" href="#">删除</a>
        </div>
      </div>
      <div class="control-group required product_products_properties_attributes_value_#{index} ">
        <label class="string required control-label" for="product_products_properties_attributes_value_#{index}">
          <abbr title="必填">*</abbr>
          属性值
        </label>
        <div class="controls">
          <input class="string required" id="product_products_properties_attributes_value_#{index}" name="product[products_properties_attributes][#{index}][value]" type="text" value="">
        </div>
      </div>
      <input id="product_products_properties_attributes_property_id_#{index}" name="product[products_properties_attributes][#{index}][property_id]" type="hidden" value="#{index}">
      <input id="product_products_properties_attributes_id_#{index}" name="product[products_properties_attributes][#{index}][id]" type="hidden" value="">
    </div>
    """

  nextProductsPropertyIndex = () ->
    index = -1
    $('.products_property').each (i, e) ->
      _index = parseInt($(e).attr('index'))
      index = _index if index < _index
    index + 1

  $('.add_products_property').bind 'click', (event) =>
    $('#properties').append(productsPropertyHtml(nextProductsPropertyIndex()))
    false

  $('#product_category_id').on 'change', (event) =>
    $.get '/admin/categories/' + $('#product_category_id').val() + '/properties', (data) ->
      $('#properties').html(data)
      false
    false

  $('.remove_products_property').bind 'click', (event) =>
    $(event.currentTarget).parents('.products_property').remove()
    true
