<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<body>
	  <!-- 버튼 -->
   	  <button type="button" class="btn btn-success" data-grid-control="excel-export">액셀 내보내기</button>
   	  <button type="button" class="btn btn-primary" data-grid-control="row-update">수정</button>
   	  <button type="button" class="btn btn-primary" data-grid-control="row-remove">삭제</button>
   	  <button type="button" class="btn btn-primary" onclick="showPopup()">등록</button>
   	
	  <!-- 그리드 -->   	
      <div style="position:relative; height:200px; width:100%; margin-top:20px;" id="grid-parent">
         <div data-ax5grid="first-grid" 
             data-ax5grid-config="{
               showLineNumber: true,
               showRowSelector: false,
               sortable: true,
               multipleSelect: false
             }"
             style="position:relative; height:100%; width:100%;">
         </div>
      </div>
      
      <script type="text/javascript">
          $(document.body).ready(function () {
        	  var selectedArray;
             // 그리드 설정 및 칼럼 생성..st
              var firstGrid = new ax5.ui.grid({
                 target: $('[data-ax5grid="first-grid"]'),
                 header: { columnHeight: 24 },
                 body: { columnHeight: 24, onClick: function(){
                	 	 console.log("셀 클릭 이벤트!!");
                	 	 console.log(this); console.log(this.item);
	                	 $('#exampleFormControlInput1').val(this.item.col01);
	                	 $('#exampleFormControlInput2').val(this.item.col02);
	                	 $('#exampleFormControlSelect1').val(this.item.col03);
	                	 $('#exampleFormControlInput3').val(this.item.col04);
	                	 $('#exampleFormControlTextarea1').val(this.item.col05);
                	 } },
                 columns: [
                    { key: "col01", label: "품목번호", width: 150, align: "center", editor: {type:"text"}, edableFilter: true},
                    { key: "col02", label: "품목명", width: 190, align: "center", editor: {type:"text"}},
                    { key: "col03", label: "거래처", width: 100, align: "center", editor: {type:"text"}},
                    { key: "col04", label: "입고가", width: 100, align: "center", formatter: "money"},
                    { key: "col05", label: "정상가", width: 100, align: "center", formatter: "money"},
                    { key: "col06", label: "판매가", width: 200, align: "left", formatter: "money"},
                    { key: "col07", label: "마진", width: 200, align: "left", editor: {type:"text"}},
                    { key: "col08", label: "사용", width: 200, align: "left", editor: {type:"text"}},
                    { key: "col09", label: "승인", width: 200, align: "left", editor: {type:"text"}}
                 ],
                footSum: [[
                	{label:"합계", colspan:3, align:"center"},
                	{key:"col04", collector:"sum", formatter:"money", align:"center"},
                	{key:"col05", collector:"sum", formatter:"money", align:"center"},
                	{key:"col06", collector:"sum", formatter:"money", align:"center"}
                ]]
              });
              // 그리드 설정 및 칼럼 생성..end
              
              // 그리드 데이터 생성..st
              var list = [];
              for(var startCount=0, lastCount=35; startCount<lastCount; startCount++){
                 list.push({
                    col01 : "00000" + startCount,
                    col02 : "품목" + + startCount,
                    col03 : "열림정보시스템",
                    col04 : "2000",
                    col05 : "2000",
                    col06 : "20000",
                    col07 : "100%",
                    col08 : "Y",
                    col09 : "Y"
                 });
              }
              firstGrid.setData(list);
              firstGrid.setHeight(650);
           	  // 그리드 데이터 생성..end
           	  
              // 액셀 내보내기..st
              $('[data-grid-control]').click(function () {
                  switch (this.getAttribute("data-grid-control")) {
                      case "excel-export":
                          firstGrid.exportExcel("grid-to-excel.xls");
                          break;
                      case "excel-string":
                          console.log(firstGrid.exportExcel());
                          break;
                      /* case "row-add":
                          firstGrid.addRow($.extend({}, firstGrid.list[Math.floor(Math.random() * firstGrid.list.length)], {__index: undefined}));
                          break; */
                      case "row-remove":
                          firstGrid.removeRow("selected");
                          break;
                      case "row-update":
                          var updateIndex = Math.floor(Math.random() * firstGrid.list.length);
                          firstGrid.updateRow($.extend({}, firstGrid.list[updateIndex]), updateIndex);
                          break;
                  }
              });
           // 액셀 내보내기..end
          });
          
/*           $('#registerBtn').click(function(){
        	console.log(fistGrid.List().item);
          }); */
          
          // 팝업 창 표시
          function showPopup(){
        	  var browserW = document.body.clientWidth;
        	  var browserH = document.body.clientHeight;
        	  var browserX = window.srceenLeft;
        	  var browserY = window.screenTop;
        	  var popW = 600;
        	  var popH = 300;
        	  var popX = browserX+(browserW-popW)/2;
        	  var popY = browserY+(browserH-popH)/2;
        	  window.open("logisticsInfo1_popup.html","코드등록","width="+popW+", height="+popH+", left="+popX+",top="+popY);
          }
      </script>
	</body>
</html>