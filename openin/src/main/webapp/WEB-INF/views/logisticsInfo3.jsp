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
                    { key: "col01", label: "상품코드", width: 150, align: "center", editor: {type:"text"}, edableFilter: true},
                    { key: "col02", label: "대분류", width: 190, align: "center", editor: {type:"text"}},
                    { key: "col03", label: "소분류", width: 100, align: "center", editor: {type:"text"}},
                    { key: "col04", label: "품명", width: 100, align: "center", editor: {type:"text"}},
                    { key: "col05", label: "규격", width: 100, align: "center", editor: {type:"text"}},
                    { key: "col06", label: "모델", width: 200, align: "left", editor: {type:"text"}},
                    { key: "col07", label: "브랜드", width: 200, align: "left", editor: {type:"text"}}
                 ]
              });
              // 그리드 설정 및 칼럼 생성..end
              
              // 그리드 데이터 생성..st
              var list = [];
              for(var startCount=0, lastCount=35; startCount<lastCount; startCount++){
                 list.push({
                    col01 : "$N" + startCount,
                    col02 : "샘플",
                    col03 : "소분류" + startCount,
                    col04 : "AT00-" + startCount,
                    col05 : startCount + "0 x 20mm",
                    col06 : "AT00",
                    col07 : "브랜드" + startCount
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