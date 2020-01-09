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
   	  
	  <div style="vartical-align:top; margin-top:20px;">
		<table class="table table-bordered">
		  <thead>
		    <tr>
		      <th scope="col" style="text-align:center;">
		      	회사
		      </th>
		      <th scope="col">
				<select class="form-control" id="exampleFormControlSelect1">
				  <option>(주)열림정보시스템</option>
				  <option>(주)니레코 한국</option>
				  <option>(주)신우기전</option>
				</select>
		      </th>
		      <th scope="col" style="text-align:center;">
		      	사업장
		      </th>
		      <th scope="col">
				<select class="form-control" id="exampleFormControlSelect1">
				  <option>본사</option>
				  <option>본점</option>
				  <option>지사</option>
				  <option>지점</option>
				</select>
		      </th>
		      <th scope="col" colspan="2">
		      </th>
		    </tr>
		  </thead>
		  <tbody>
		    <tr>
		      <th scope="col" style="text-align:center;">
		      	전표번호
		      </th>
		      <th scope="col">
				<input type="text" class="form-control" aria-label="Text input with dropdown button">
		      </th>
		      <th scope="col" style="text-align:center;">
		      	등록일자*
		      </th>
		      <th scope="col">
        <div class="input-group" data-ax5picker="basic">
            <input type="text" class="form-control" placeholder="yyyy/mm/dd">
            <span class="input-group-addon"><i class="fa fa-calendar-o"></i></span>
        </div>
		      </th>
		      <th scope="col" style="text-align:center;">
		      	전표상태
		      </th>
		      <th scope="col">
				<select class="form-control" id="exampleFormControlSelect1">
				  <option>대기</option>
				  <option>가결</option>
				</select>
		      </th>
		    </tr>
		    <tr>
		      <th scope="col" style="text-align:center;">
		      	담당자
		      </th>
		      <th>
		      	<input type="text" style="width:150px; display:inline-block;" class="form-control" aria-label="Text input with dropdown button">
		      	<input type="text" style="width:250px; display:inline-block;" class="form-control" aria-label="Text input with dropdown button">
		      	<button type="button" class="btn btn-primary">검색</button>
		      </th>
		      <th style="text-align:center;">
		      	담당자 연락처
		      </th>
		      <th>
		      	<input type="text" class="form-control" aria-label="Text input with dropdown button">
		      </th>
		      <th style="text-align:center;">
		      	담당자 이메일
		      </th>
		      <th>
		      	<input type="text" class="form-control" aria-label="Text input with dropdown button">
		      </th>
		    </tr>
		    <tr>
		      <th scope="col" style="text-align:center;">
		      	거래유형
		      </th>
		      <th>
				<select class="form-control" id="exampleFormControlSelect1">
				  <option>부가세 적용</option>
				  <option>부가세 미적용</option>
				</select>
		      </th>
		      <th style="text-align:center;">
		      	비고
		      </th>
		      <th colspan="3">
				<input type="text" class="form-control" aria-label="Text input with dropdown button">
		      </th>
		    </tr>
		  </tbody>
		</table>
	  </div>
	  
<script type="text/javascript">
    var picker = new ax5.ui.picker();
    $(document.body).ready(function () {
        picker.bind({
            target: $('[data-ax5picker="basic"]'),
            direction: "top",
            content: {
                width: 270,
                margin: 10,
                type: 'date',
                config: {
                    control: {
                        left: '<i class="fa fa-chevron-left"></i>',
                        yearTmpl: '%s',
                        monthTmpl: '%s',
                        right: '<i class="fa fa-chevron-right"></i>'
                    },
                    lang: {
                        yearTmpl: "%s년",
                        months: ['01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '12'],
                        dayTmpl: "%s"
                    },
                    marker: (function () {
                        var marker = {};
                        marker[ax5.util.date(new Date(), {'return': 'yyyy-MM-dd', 'add': {d: 0}})] = true;
 
                        return marker;
                    })()
                },
                formatter: {
                    pattern: 'date'
                }
            },
            onStateChanged: function () {
                if (this.state == "open") {
                    //console.log(this.item);
                    var selectedValue = this.self.getContentValue(this.item["$target"]);
                    if (!selectedValue) {
                        this.item.pickerCalendar[0].ax5uiInstance.setSelection([ax5.util.date(new Date(), {'add': {d: 1}})]);
                    }
                }
            }
        });
    });
</script>
	</body>
</html>