/**
 * 
 */
 
 /*
 function popup_print(customerCustomer_name, 
 						memo, 
 						customerVisit_day, 
 						car_production_date, 
 						car_weight,customerCar_information_number, 
 						customerCar_characteristic, 
 						customerCar_number, 
 						index)
 						{
	
	            var url = 
            			'/popup.do?customerCar_information_number=' + customerCar_information_number +
            			'&customerCar_characteristic=' + customerCar_characteristic +
            			'&car_production_date=' + car_production_date +
            			'&car_weight=' + car_weight + 
            			'&customerCustomer_name='+ customerCustomer_name +
            			'&customerCar_number='+ customerCar_number +
            			'&memo='+ memo
            			;
            			
            		
            			var popupX = (window.screen.width / 2) - (800 / 2);
            			var popupY= (window.screen.height /2) - (350 / 2);
            			
            			
            			var options = ' left='+popupX+', top='+popupY+', width=800, height=350, status=no, menubar=no, toolbar=no, resizable=no ,fullscreen=no, location=no, scrollbars=yes';
               			window.open(url, "popup",  options);
}
*/

// 2022-11-08 tr 오픈팝업
$( ".table tbody" ).on( "click", ".OpenSelectPopup" , function() {

  
   var tdArr = new Array();
   
   var tr = $(this);
   var td = tr.children();
   
   console.log("클릭한 Row의 모든 데이터 : "+tr.text());
   
   
    td.each(function(i){
        tdArr.push(td.eq(i).text());
        console.log(i +"번쨰:"+td.eq(i).text());
    });
         
 console.log("OpenSelectPopup");
    	            var url = 
            			'/popup.do?customerCustomer_name='+ td.eq(0).text() +
            			'&customerCar_information_number='+ td.eq(1).text()+
            			'&customerCar_number='+ td.eq(2).text()+
            			'&customerCar_characteristic='+ td.eq(3).text()+
            			'&customerPhone_number='+ td.eq(4).text()+
            			'&car_production_date='+ td.eq(6).text()+
            			'&car_weight='+ td.eq(7).text()+
            			'&customer_index='+ td.eq(8).text()+
            			'&memo='+ td.eq(9).text()
            			;
            			console.log("customer_index = "+ td.eq(8).text());
            		
            			var popupX = (window.screen.width / 2) - (800 / 2);
            			var popupY= (window.screen.height /2) - (350 / 2);
            			
            			
            			var options = ' left='+popupX+', top='+popupY+', width=800, height=350, status=no, menubar=no, toolbar=no, resizable=no ,fullscreen=no, location=no, scrollbars=yes';
               			window.open(url, "popup",  options);
               			
               			
});

/*
// 2022-11-09 update tr 오픈팝업
$( ".table tbody" ).on( "click", ".OpenUpdateCustomerPopup" , function() {

  console.log("OpenUpdateCustomerPopup");
   var tdArr = new Array();
   
   var tr = $(this);
   var td = tr.children();
   
   console.log("클릭한 Row의 모든 데이터 : "+tr.text());
   
   
    td.each(function(i){
        tdArr.push(td.eq(i).text());
        console.log(i +"번쨰:"+td.eq(i).text());
    });
         
    //console.log("배열에 담긴 값 : "+tdArr);
    
   // var input_val = td.eq(5).text();
     //console.log("인풋값 찾기 : " + input_val);

    	            var url = 
            			'/UpdateCustomerPopup.do?customerCustomer_name='+ td.eq(0).text() +
            			'&customerCar_information_number='+ td.eq(1).text()+
            			'&customerCar_number='+ td.eq(2).text()+
            			'&customerCar_characteristic='+ td.eq(3).text()+
            			'&customerPhone_number='+ td.eq(4).text()+
            			'&car_production_date='+ td.eq(6).text()+
            			'&car_weight='+ td.eq(7).text()+
            			'&customer_index='+ td.eq(8).text()+
            			'&memo='+ td.eq(9).text()
            			;
            			
            		
            			var popupX = (window.screen.width / 2) - (800 / 2);
            			var popupY= (window.screen.height /2) - (350 / 2);
            			
            			
            			var options = ' left='+popupX+', top='+popupY+', width=800, height=350, status=no, menubar=no, toolbar=no, resizable=no ,fullscreen=no, location=no, scrollbars=yes';
               			window.open(url, "updatepopup",  options);
               			
               			
});
*/