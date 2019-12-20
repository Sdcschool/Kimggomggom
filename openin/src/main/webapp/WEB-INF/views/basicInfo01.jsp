<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head></head>
<body>
<div style="padding: 10px;">
  <div 
       data-ax5grid="first-grid" 
       data-ax5grid-config="{
                      frozenColumnIndex: 0,
                      frozenRowIndex: 0,
                      showLineNumber: true,
                      showRowSelector: true,
                      lineNumberColumnWidth: 60,
                      rowSelectorColumnWidth: 25
                  }" 
       style="height: 500px;">
  </div> 
</div>

<script type="text/javascript">
var firstGrid = new ax5.ui.grid({
	  target: $('[data-ax5grid="first-grid"]'),
	  header: {
	    columnHeight: 24
	  },
	  body: {
	    columnHeight: 24
	  },
	  onStateChanged: function(a){
	    console.log(a);
	  },
	  columns: [
	    {key: "a", label: "field A", width: 80, editor: {type:"text"}},
	    {key: "b", label: "field B", width: 80},
	    {
	      label: "Group", columns: [ // child columns
	        {key: "d", label: "field D"},
	        {key: "e", label: "field E"},
	        {key: "f", label: "field F"}
	      ]
	    },
	    {key: "c", label: "field C", width: 100, 
	     editor: {
	       type: "select", config: {
	         columnKeys: {
	           optionValue: "CD", optionText: "NM"
	         },
	         options: [
	           {CD: "M", NM: "M: Man"},
	           {CD: "D", NM: "D: Daughter"},
	           {CD: "S", NM: "S: Son"},
	           {CD: "W", NM: "W: Wife"}
	         ]
	       }
	     }
	    },
	    {key: "g", label: "field G", width: 100, editor: {type:"date"}},
	    {key: "h", label: "field H"}
	  ]
	});

	var list = [];
	for (var a = 0, l = 100; a < l; a++) {
	  list.push({
	    a: "A value", b: "B value", c: a % 10, 
	    d: "D value", e: "E value", f: "F value", 
	    g: "G value"
	  });
	}

	firstGrid.setData(list);
</script>
	
</body>
</html>