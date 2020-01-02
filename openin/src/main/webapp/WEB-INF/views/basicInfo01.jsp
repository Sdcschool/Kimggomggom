<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
   <body>
   	  <!-- 버튼 -->
   	  <button type="button" class="btn btn-success" data-grid-control="excel-export">액셀 내보내기</button>
   	  <button type="button" class="btn btn-primary" data-grid-control="row-update">수정</button>
   	  <button type="button" class="btn btn-primary" data-grid-control="row-remove">삭제</button>
   	
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
      
      
      <!-- 상세 폼 -->
      <form style="margin-top:20px;">
		  <div class="form-group">
		    <label for="exampleFormControlInput1">회사명</label>
		    <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="회사명을 입력하세요..">
		  </div>
		  
		  <div class="form-group">
		    <label for="exampleFormControlInput2">사업/주민번호</label>
		    <input type="text" class="form-control" id="exampleFormControlInput2" placeholder="사업자 등록번호를 입력하세요..">
		  </div>
		  
		  <div class="form-group">
		    <label for="exampleFormControlSelect1">회사 구분</label>
		    <select class="form-control" id="exampleFormControlSelect1">
		      <option>본사</option>
		      <option>지사</option>
		    </select>
		  </div>
		  
  		  <div class="form-group">
		    <label for="exampleFormControlInput3">전화번호</label>
		    <input type="text" class="form-control" id="exampleFormControlInput3" placeholder="전화번호를 입력하세요..">
		  </div>
  
		  <div class="form-group">
		    <label for="exampleFormControlTextarea1">회사 주소</label>
		    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" placeholder="회사 주소를 입력하세요.."></textarea>
		  </div>
		</form>
		
		<button type="button" class="btn btn-primary" data-grid-control="row-add" id="registerBtn">등록</button>
		
      <!-- Script -->

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
                 // onStateChanged: function(a){ console.log(a); },
                 columns: [
                    { key: "col01", label: "회사명", width: 100, align: "center", editor: {type:"text"}, edableFilter: true},
                    { key: "col02", label: "사업/주민번호", width: 190, align: "center", editor: {type:"text"}},
                    { key: "col03", label: "회사구분", width: 100, align: "center", editor: {type:"text"}},
                    { key: "col04", label: "대표자명", width: 100, align: "center", editor: {type:"text"}},
                    { key: "col05", label: "전화번호", width: 100, align: "center", editor: {type:"text"}},
                    { key: "col06", label: "회사 주소", width: 300, align: "center", editor: {type:"text"}}
                 ]
              });
              // 그리드 설정 및 칼럼 생성..end
              
              // 그리드 데이터 생성..st
              var list = [];
              for(var startCount=0, lastCount=6; startCount<lastCount; startCount++){
                 list.push({
                    col01 : "(주)회사명" + "000" + startCount,
                    col02 : "11-12478-210" + "000" + startCount,
                    col03 : "지사",
                    col04 : "대표자" + startCount,
                    col05 : "054-123-4567",
                    col06 : "대한민국 경상북도 포항시 남구 대이로 123-" + startCount
                 });
              }
              firstGrid.setData(list);
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
          
          $('#registerBtn').click(function(){
        	console.log(fistGrid.List().item);
          });
      </script>

   </body>
</html>