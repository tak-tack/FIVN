/* 2022-11-22 메모 업데이트를 위한 주석
 function updatecustomer(customerCustomer_name, customerCar_information_number, customerCar_number, customerCar_characteristic, customerVisit_day, customerPhone_number, car_production_date, car_weight, memo, customer_index ,status_index){

	
	
	var answer=confirm(document.getElementById("customerCustomer_name").value +" 님의 정보를 수정하시겠습니까?");
    
        if(answer){       	
        	// 수정페이지 유지를 위한 변수 저장
        	var keyword = document.getElementById("keyword").value;
        	var selecttype = document.getElementById("selecttype").value;
          	 
           	// 수정할 데이터를 mapper로 옮기기 위한 변수 생성 .. input value를 가져옴
        	
       	 var Input_get_customerCustomer_name = document.getElementsByName("customerCustomer_name")[status_index];
       	 var Input_get_customerCar_information_number = document.getElementsByName("customerCar_information_number")[status_index];
       	 var Input_get_customerCar_number = document.getElementsByName("customerCar_number")[status_index];
       	 var Input_get_customerCar_characteristic = document.getElementsByName("customerCar_characteristic")[status_index];
       	 var Input_get_customerVisit_day = document.getElementsByName("customerVisit_day")[status_index];
       	 var Input_get_customer_customerPhone_number = document.getElementsByName("customerPhone_number")[status_index];
       	 var Input_get_car_production_date = document.getElementsByName("car_production_date")[status_index];
       	 var Input_get_car_weight = document.getElementsByName("car_weight")[status_index];
       	 var Input_memo = document.getElementsByName("memo")[status_index];
       	 var Input_get_customer_index = document.getElementsByName("customer_index")[status_index];
    	 
       	 // hidden 타입의 매개변수를 input value인 수정할 데이터로 수정
       	 
       	 customerCustomer_name = Input_get_customerCustomer_name;
       	 customerCar_information_number = Input_get_customerCar_information_number;
       	 customerCar_number = Input_get_customerCar_number;
       	 customerCar_characteristic = Input_get_customerCar_characteristic;
       	 customerVisit_day = Input_get_customerVisit_day;
       	 customerPhone_number = Input_get_customer_customerPhone_number;
       	 car_production_date = Input_get_car_production_date;
       	 car_weight = Input_get_car_weight;
       	 memo = Input_memo;
       	 customer_index = Input_get_customer_index;
        	 
        	 
            var url = 
            	'/updateCustomer.do?customerCustomer_name='+ customerCustomer_name.value + 
            			'&customerCar_information_number=' + customerCar_information_number.value +
            			'&customerCar_number=' + customerCar_number.value +
            			'&customerCar_characteristic=' + customerCar_characteristic.value +
            			'&customerVisit_day=' + customerVisit_day.value +
            			'&customerPhone_number=' + customerPhone_number.value +
            			'&car_production_date=' + car_production_date.value +
            			'&car_weight=' + car_weight.value +
            			'&memo=' + memo.value+
            			'&customer_index=' + customer_index.value +
            			'&keyword=' + keyword +
            			'&selecttype=' + selecttype
            			;
                window.open(url, "_self",  '');
                
        }  
        
    }
    */
    
   
 
    // 고객 정보 삭제 기능
    function deletecustomer(	
		customer_index ,
		status_index){

    var answer=confirm(document.getElementById("customerCustomer_name").value +" 님의 정보를 삭제하시겠습니까?");
        if(answer){
        	
        	// 삭제이지 유지를 위한 변수 저장
        	var keyword = document.getElementById("keyword").value;
        	var selecttype = document.getElementById("selecttype").value;

          	// 삭제할 데이터를 mapper로 옮기기 위한 변수 생성 .. input value를 가져옴
       	 var Input_get_customer_index = document.getElementsByName("customer_index")[status_index];
    	 
       	 // hidden 타입의 매개변수를 input value인 삭제할 데이터로 수정
       	 customer_index = Input_get_customer_index;
       	
     	 
            var url = 
            			'/deleteCustomer.do?&customer_index=' + customer_index.value +
            			'&keyword=' + keyword +
            			'&selecttype=' + selecttype
            			;
                window.open(url, "_self",  '');
        }  
    }
  // insert
  //고객정보를 삽입하기 위한 고객의 열 을 추가하는 기능
 var cnt=1;
$(document).on("click","button[name=InsertLine]",function(){
	
 var cnt_before_1 = cnt-1;
	console.log("mytable:"+ $('#mytable'+cnt_before_1+'').parents().attr('id'));
	
	var str = $('#mytable'+cnt_before_1+'').parents().attr('id');
	if(str == "myform3")
	{
		console.log("test");
	}
         //console.log("cut : " +cut);
        var addStaffText =   
        	'<form name="testForm'+cnt+'" id="myform'+cnt+'">' +
        	'	<table name="tableStaff'+cnt+'" id="mytable'+cnt+'" class = "table table-striped" style="margin-bottom:0rem;">'+  
        	'		<tr>'+
            '   		 <td><input type="text" name="customerCustomer_name" size="10" placeholder="고객 이름..."  style = "width:100px; height: 25px;" required></td>'+
            '   		 <td><input type="text" name="customerCar_information_number" size="10" placeholder="차대 번호..."  style = "width:200px; height: 25px;" required></td>'+
            '      		 <td><input type="text" name="customerCar_number" size="10" placeholder="차량 번호..."  style = "width:100px; height: 25px;" required></td>'+
            '      		 <td><input type="text" name="customerCar_characteristic" size="10" placeholder="차종..."  style = "width:200px; height: 25px;" required></td>'+
            '      		 <td><input type="text" name="customerPhone_number" size="10" placeholder="전화 번호..."  style = "width:200px; height: 25px;" required></td>'+
            '      		 <td><input type="text" name="car_production_date" size="10" placeholder="생산일..."  style = "width:200px; height: 25px;" required></td>'+
            '      		 <td><input type="text" name="car_weight" size="10" placeholder="바디형식..."  style = "width:200px; height: 25px;" required></td>'+
            '      		 <td><input type="text" name="memo" size="10" placeholder="메모..."  style = "width:200px; height: 25px;" required></td>' + 
            '			<td><button class="button button--winona button--border-thin button--round-s" style = "min-width: 40px; height: 30px" name="delLine">삭제</button></td>'+
            '		</tr>'+
            '	</table>' +
            '</form>'
            ;
            
            var cnt_before_2 = cnt-1;
        var trHtml = $( "form[name=testForm"+cnt_before_2+"]:last" ); //last를 사용하여 trStaff라는 명을 가진 마지막 태그 호출
        	

        
        trHtml.after(addStaffText); //마지막 trStaff명 뒤에 붙인다.
        
            cnt++;
    console.log("cnt : " +cnt);
});


  // insert
  //고객정보를 삽입하기 위한 고객의 열 을 삭제하는 기능
    $(document).on("click","button[name=delLine]",function(){
        
        var trHtml = $(this).parent().parent().parent().parent();
        
        trHtml.remove(); //tr 테그 삭제
        
    });
    
    
    
    
 $(document).on("click","button[name=insert]",function() {
	console.log("cnt:" + cnt);
	
	for(var i=1; i<=cnt; i++)
	{
		    $('form[name=testForm'+i+']').serialize();
    $('form[name=testForm'+i+']').attr('method', 'POST');
    $('form[name=testForm'+i+']').attr('action', '/insertCustomer.do?allowMultiQueries=true');
        
    $('form[name=testForm'+i+']').submit();
	}
	


});


/*
$( ".table" ).on( "click", "tr" , function() {
     console.log( $( this ).text() );
   
   var str = "";
   var tdArr = new Array();
   
   var tr = $(this);
   var td = tr.children();
   
   console.log("클릭한 Row의 모든 데이터 : "+tr.text());
   
   
    td.each(function(i){
        tdArr.push(td.eq(i).text());
    });
            
    console.log("배열에 담긴 값 : "+tdArr);
});


$(document).delegate("click","tr[class=UpdatePopup]", function() {
    $('form[name="testForm"]').serialize();
    $('form[name="testForm"]').attr('method', 'POST');
    $('form[name="testForm"]').attr('action', updateCustomerPopup());
    console.log("${val.customerCustomer_name}");
    console.log("${customerCustomer_name}");
    
    console.log('${val.customerCustomer_name}');
   //$('form[name="testForm"]').submit(); 
});


function updateCustomerPopup() {
	
	     	 console.log("updateCustomerPopup");


            var url = 
            			'/updateCustomerPopup.do'
            			;
           	 			 var popupX = (window.screen.width / 2) - (800 / 2);
            			var popupY= (window.screen.height /2) - (350 / 2);
            			var options = ' left='+popupX+', top='+popupY+', width=800, height=350, status=no, menubar=no, toolbar=no, resizable=no ,fullscreen=no, location=no, scrollbars=yes';
                         
               
                window.open(url, "popup",  options);
        }  
*/
