const plus = document.querySelector('#sbc-plus');
plus.addEventListener('click', addInput);

/* ================ +버튼 누르면 content 열 추가 ================== */
function addInput(){
    var $clonedTemplate = $("#a-template").clone();
    var $templateContent = $($clonedTemplate.html());

    $('.sbc-ul-content').append($clonedTemplate.html());
}


// 다크모드 & 라이트모드 
$('.dark-light-btn').click(function(){
    $('.dark-light-btn-icon').toggleClass('active');
})

// alert-box-btn (중요사항 알림 상단바)
$('.alert-box-btn').click(function(){
    $('.alert-box-btn-icon').toggleClass('active');
    $('.alert-box-content').toggleClass('box-content-active');
    $('.alert-box-btn').toggleClass('border-active');
    $('.alert-box').toggleClass('box-active');
})

// sbc-import (클릭하면 하트 채워짐 - 중요 표시)
$(document).on("click",".sbc-import", function(){
    $(this).toggleClass('import-active');
})


/*========================== Category ==========================*/

// Category-pick 나타나기, 사라지기
$(document).on("click",".sbc-category-name", function(){
    // $(document).on('이벤트','선택자',함수(){});
    // append로 동적으로 추가된 요소에 이벤트를 걸었을 때 js가 적용되도록
    // 즉 이벤트 선택자가 아니라, document(DOM 트리 구조의 상위요소)에 바인딩하는 것.
    $('.Category-pick').stop().fadeOut();
    $(this).siblings('.Category-pick').stop().slideDown();
})

function CategoryClear(){
    $(document).on("click",".clear-btn", function(){
        $(this).closest('.Category-pick').stop().fadeOut();
   })
}






var color;


const a = document.querySelector('#sb-calender');
a.addEventListener('click',showConsole);
function showConsole(){
    alert('111');
}


var b = document.querySelector('#h');
b.addEventListener('click',colorRemove);

/* for(let i=0; i < b.length; i++){
    b[i].addEventListener('click',colorRemove);
} */

function colorRemove(){
    $('.cpick').removeClass('cpick-active');
    alert('removecolor');

}



// obj부분 this로 받아오기. (클릭했을 때)
/* function sbcClick(obj){
    alert('열림');
    var i=10; */

    /* ================== category ============= */
    // category-Cpick span (컬러 선택) 
/*     $(obj).on("click","#category-Cpick div span", function(){
        alert(i);
        i += 1;

        // 컬러 선택한 것, category-Cpick 체크 변경
        $(this).closest('#category-Cpick').find('span').removeClass('cpick-active');
        $(this).addClass('cpick-active');
    
        // sbc-category-name 색깔 = color 변수에 담기
         color = document.defaultView.getComputedStyle(this).getPropertyValue("background-color");
    
        

        });
 */

        // background-color css 속성 변경
/*         $(obj).find('.sbc-category-name').css({
            "backgroundColor" : color
        });
 */
/* }  */




















/*     $(obj).click(function(){
        const checkbox = $(obj).find("#chk1");
        const is_checked = checkbox.is(':checked')
    
        if(is_checked){
            $(obj).find("#chk1").addClass('chkactive');
            }
            else{
                $(obj).find("#chk1").removeClass('chkactive');
            } 
    })

       */





  /* ================= sbc-chk ================= */
    // sbc-chk를 클릭했을 때
   /*   $(obj).on("click",".sbc-chk", function(){
        const checkbox = $(obj).find('#chk1');
        const is_checked = checkbox.checked;
    });  */



/* function chkClick(obj){

        const checkbox = $(obj).find("#chk1");
        const is_checked = checkbox.is(':checked')
    

       if(is_checked){
            checkbox.addClass('chkactive');
        }
        else{
            checkbox.removeClass('chkactive');
        } 
    

};   */