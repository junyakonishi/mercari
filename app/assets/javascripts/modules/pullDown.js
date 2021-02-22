$(function(){
  
  function buildForm(categories) {
    let options='';
    categories.forEach(function (category) {
      options += `
                  <option value="${category.id}">${category.name}</options>
                 `;
    });

    const html=`
      <select class="bases__main__third__top__text" name="item[category_id]">
        <option value="">---</option>
        ${options}
      </select>
    `
    return html
  }

  $('.bases__main__third__top').on('change','.bases__main__third__top__text',function(){
    $(this).nextAll().remove()
    const category_id=$(this).val()

    $.ajax({
      type: "GET",
      url: "/api/items/category",
      data: {category_id: category_id},
      dataType: 'jason'
    })
    .done(function(categories) {
      if(categories.length==0){
        return false
      }

      const select_form=buildForm(categories)
      const target=$('bases__main__third__top')
      target.append(select_form)

    })
  })
});