/**
 * 
 */
 
var target = document.querySelectorAll('.btn_open');
var btnPopClose = document.querySelectorAll('.pop_inner .btn_close');
var targetID;  // 버튼 클릭시 버튼에 해당하는 팝업의 id값 담는 변수
var memo = document.getElementsByName("memo");
var customerVisit_day = document.getElementsByName("customerVisit_day");
var car_production_date = document.getElementsByName("car_production_date");
var car_weight = document.getElementsByName("car_weight");
var popup_customerCar_information_number;
var temp = "temp";



// 팝업 닫기 3시15분이당
function popup_close()
{
	        var url = 
            			'/popup.do'
            			;
            			
            			var options = 'top=10, left=10, width=500, height=600, status=no, menubar=no, toolbar=no, resizable=no fullscreen=no';
              
	var popup = window.open(url, "popup",  options);
	popup.close();
}

/*
2022-11-15
function update_popup_close()
{
	        var url = 
            			'/UpdateCustomerPopup.do'
            			;
            			
            			var options = 'top=10, left=10, width=500, height=600, status=no, menubar=no, toolbar=no, resizable=no fullscreen=no';
              
	var popup = window.open(url, "updatepopup",  options);
	popup.close();
}
*/


/* 탭 기능 */
$(function(){
  $('.tabcontent > table').hide();
  $('.tabnav a').click(function () {
    $('.tabcontent > table').hide().filter(this.hash).show();
    $('.tabnav a').removeClass('active');
    $(this).addClass('active');
    return false;
  }).filter(':eq(0)').click();
  });



	
	$('.tabnav .tab1').click(function () {
	  
	   console.log('tab1');
	   
		 	    var insert_button = 			
				'<button type="button" class="button button--winona button--border-thin button--round-s popup_button"  onclick="popup_close()">'+
					'<span>닫기</span>'+
		 		'</button>';
		$('.popup_button').html(insert_button);
	    
	 });  
	 
	 	 	$('.tabnav .tab2').click(function () {
	  
	   console.log('tab2');
	   
	   	   		 var insert_button = 			
	   	   		'<button type="button" class="button button--winona button--border-thin button--round-s popup_button">'+
				'	 <span>저장</span>'+
		 		'</button>'+
		 
				'<button type="button" class="button button--winona button--border-thin button--round-s popup_button"  onclick="popup_close()">'+
					'<span>닫기</span>'+
				'</button>	';
		$('.popup_button').html(insert_button);
	    
	 });   
	 
	 	$('.tabnav .tab3').click(function () {
	  
	   console.log('tab3');
	   
	   		 var insert_button = 			
				'<button type="button" class="button button--winona button--border-thin button--round-s popup_button"  onclick="popup_close()">'+
					'<span>닫기</span>'+
		 		'</button>';
		$('.popup_button').html(insert_button);
	    
	 });   
	 

	 
	 	$('.tabnav .tab4').click(function () {
	  
	   console.log('tab4');
	   
	   	   		 var insert_button = 			
	   	   		'<button type="button" name="update_to_form" class="button button--winona button--border-thin button--round-s popup_button">'+
				'	 <span>저장</span>'+
		 		'</button>'+
		 
				'<button type="button" class="button button--winona button--border-thin button--round-s popup_button"  onclick="popup_close()">'+
					'<span>닫기</span>'+
				'</button>	';
		$('.popup_button').html(insert_button);
	    
	 });    
	 

   

	
 $(document).on("click","button[name=update_to_form]",function() {

   console.log("update_to_form");
   
 
});


var isDisabled = false;
	var crruent_idx = 5;
	var test;


//  팝업 - 내용 클릭 시 업데이트
$(document).on("click","div[name=update_memo]",function(){

var idx = $(".substance").index(this);
console.log("crruent_idx:"+crruent_idx);
console.log("idx:"+idx);
   if (crruent_idx == idx) {  //수행가능여부 검사
      alert("이미 작업이 수행중입니다.");
      return false;
    } else {

  		//console.log("index : " +idx);

		 var sub_text = $('.substance').eq(idx).text();
		 console.log("sub_text:"+sub_text);
		 var update_input = 
		 '<div class="substance">'+
		 '<textarea cols="50" rows="10"> '+
		 sub_text +
		 '</textarea>'+
		 '</div>'
 			;
		$('.substance').eq(idx).parent().html(update_input);
			crruent_idx = idx;
			//console.log("현재 idx : " + crruent_idx);
			

    	}
    
});


