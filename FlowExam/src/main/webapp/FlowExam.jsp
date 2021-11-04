<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FLOW Exam</title>
</head>
<body>
    <table>
        <tr>
            <th>고정 확장자</th>
            <td>
                <input type="checkbox" name="bat" id="bat"/><label for="bat">bat</label>
                <input type="checkbox" name="cmd" id="cmd"/><label for="cmd">cmd</label>
                <input type="checkbox" name="com" id="com"/><label for="com">com</label>
                <input type="checkbox" name="cpl" id="cpl"/><label for="cpl">cpl</label>
                <input type="checkbox" name="exe" id="exe"/><label for="exe">exe</label>
                <input type="checkbox" name="scr" id="scr"/><label for="scr">scr</label>
                <input type="checkbox" name="js" id="js"/><label for="js">js</label>
            </td>
        </tr>
        <tr>
            <th rowspan="2">커스텀 확장자</th>
            <td>
                <input type="text" name="customExt" id="customExt" placeholder="확장자 입력"/>
                <a href="javascript:addCustomExt();">+추가</a>
            </td>
        </tr>
        <tr>
            <td id="testTd"></td>
        </tr>
    </table>
</body>
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script>
$(document).ready(function() {
    
    $('#deleteBtn').click(function() {
        alert('zz');
    });
});

function addCustomExt() {
    var html = '';
    var customExt = $('#customExt').val();
      
    if (!customExt) {
        alert('커스텀 확장자를 입력해주세요');
        
        return;
    }
    
    html += '<p>'+ customExt + '<a id="deleteBtn" href="javascript:deleteExt();" data-value='+customExt+'">X</a></p>';
    
    $('#testTd').append(html);
    
    $('#customExt').val('');
}

function deleteExt() {
    alert('zz');
}

</script>
</html>