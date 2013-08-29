# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$ ->
  # 預設顯示第一個 Tab
  # _showTab = 0
  # $centerDefaultLi = $(".title_tabs ul.tabs li").eq(_showTab)
  # hideSiblings($centerDefaultLi)
  # 當 li 頁籤被點擊時...
  # 若要改成滑鼠移到 li 頁籤就切換時, 把 click 改成 mouseover
  
  # 找出 li 中的超連結 href(#id)
  
  # 把目前點擊到的 li 頁籤加上 .active
  # 並把兄弟元素中有 .active 的都移除 class
  
  # 淡入相對應的內容並隱藏兄弟元素
  $('div.left_column div a').click(->
    $this = $(this)
    hideSiblings($this)
    ).find("a").focus ->
    @blur()

hideSiblings = (focusTab) ->
    parent = focusTab.parent();
    parent.addClass("active").siblings(".active").removeClass("active")
    focusTab.find('a').attr('href').stop(false, true)
    false
