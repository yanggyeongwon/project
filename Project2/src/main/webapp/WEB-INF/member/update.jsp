<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="css/main_style.css" type="css/style">
<link rel="stylesheet" href="css/common.css" type="css/style">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 도로명 조합형 주소 변수
                var sido = data.sido;
                var sigungu = data.sigungu;

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }
                // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
                if(fullRoadAddr !== ''){
                    fullRoadAddr += extraRoadAddr;
                }

                var remainRoadAddr = fullRoadAddr.replace(sido + " " + sigungu, "");
                var remainjibunAddr = data.jibunAddress.replace(sido + " " + sigungu, "");

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('zip_code').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('old_zip_code').value = data.postcode; //6자리 우편번호 사용
                document.getElementById('roadAddress').value = fullRoadAddr;
                document.getElementById('jibunAddress').value = data.jibunAddress;
                document.getElementById('user_selected_type').value = data.userSelectedType; //검색 결과에서 사용자가 선택한 주소의 타입(R(도로명), J(지번))

                document.getElementById('sido').value = sido;
                document.getElementById('sido2').value = sido;
                document.getElementById('sigungu').value = sigungu;
                document.getElementById('sigungu2').value = sigungu;
                document.getElementById('remain_road_addr').value = remainRoadAddr;
                document.getElementById('remain_jibun_addr').value = remainjibunAddr;


                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    //예상되는 도로명 주소에 조합형 주소를 추가한다.
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    document.getElementById('guide').innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';

                } /* else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    document.getElementById('guide').innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';

                } else {
                    document.getElementById('guide').innerHTML = '';
                } */
            }
        }).open();
    }
</script>
<title>마이페이지</title>
</head>
<body>
<div class="menu">
<div id="logo">
<img src="images/logo3.png" alt="no">
<div class="join">
<a id="mypage" href="#"><span>마이페이지</span><img src="images/mypage.png" alt="no"></a>
<a href="#"><span>LOGIN</span></a>
<a href="#"><span>JOIN</span></a>
</div>
</div>

<ul id="ul_id">
<li><a href="BEST.html">BEST</a></li>
<li><a href="#">TOP</a></li>
<li><a href="#">PANTS</a></li>
<li><a href="#">OUTER</a></li>
<li><a href="#">SHOES</a></li>
<li><a href="#">ACC</a></li>
</ul>

</div>
<div class="w3-content w3-container w3-margin-top">
<div class="w3-container w3-card-4">
<div class="w3-center w3-large w3-margin-top">
<h3>회원정보</h3>
</div>
<div>
<form id="myForm" action="update.me" method="post">
<p>
<label>이름</label>
<input class="w3-input" type="text" id="name" name="mname" readonly value="${ member.mname }">
</p>
<p>
<label>ID</label>
<input class="w3-input" type="text" id="id" name="mid" readonly value="${ member.mid }">
</p>
<p>
<label>비밀번호</label>
<input class="w3-input" id="pw" name="mpw" type="password" value="${member.mpw }">
</p>
<p>
<label>주소</label>
<br>
우편번호 : <input type="text" id="zip_code" name="maddr" placeholder="우편번호">
<input type="button" onclick="execDaumPostcode()" value="우편번호 찾기"><br>
주소 : <input type="text" id="roadAddress" name="maddr" placeholder="도로명주소" size="70">

<input type="hidden" id="sido" placeholder="도로명주소">
<input type="hidden" id="sigungu"><input type="hidden" id="remain_road_addr">
<input type="hidden" id="jibunAddress" placeholder="지번주소">
<input type="hidden" id="sido2" placeholder="도로명주소">
<input type="hidden" id="sigungu2"><input type="hidden" id="remain_jibun_addr">
<input type="hidden" id="old_zip_code" placeholder="우편번호">
<input type="hidden" id="roadAddress" placeholder="도로명주소"><br>

</p>
<p>
<label>상세주소</label>
<input class="w3-input" type="text" id="maddr" name="maddr">
</p>
<p>
<label>Email</label>
<input class="w3-input" type="text" id="email" name="email" readonly value="${ member.memail }">
</p>
<input type="hidden" id="user_selected_type" name="user_selected_type" /><br>
<p class="w3-center">
<button type="submit" class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-round">회원정보 변경</button>
</p>
</form>
</div>
</div>
</div>
<span id="guide" style="color:#999"></span>
<footer>
<div id="footer_img">
<img src="images/logo2.png" alt="no">
<ul id="footer_top">
<li><a href="#">이용약관</a></li>
<li><a href="#">개인정보처리방침</a></li>
</ul>
</div>
<div id="footer_text">
<div class="text1">
<ul>
<li><b>대표이사: </b> 양경원</li>
<li><b>개인정보보호 책임자: </b> 김범규</li>
<li><b>이메일: </b> ruddnjs25@naver.com</li>
<li><b>고객센터: </b> 02-5543-2213</li>
<li><b>에스크로: </b> All at pay</li>
</ul>
<ul>
<li><b>주소: </b> 서울특별시 동대문구 이리로 38길 22</li>
<li><b>사업자번호: </b>155-33-22794</li>
<li><b>통신판매신고번호: </b>제2011-서울동대문-2235호</li>
</ul>
<ul>
<li><b>CJ대한통운 반품시: </b> 03011 서울특별시 동대문구 이리로 200번지 대한통운 이대대리점(KYJJ)</li>
<li></li>
</ul>
</div>
<div class="text2">
<div class="right">
<ul>
<li>고객센터</li>
<li><b>02-5543-2213</b></li>
<li>WEEKDAYS, AM:10~00 ~ PM17:00</li>
<li>BRAKE TIME, PM12:00 ~ PM013:00</li>
<li>SAT, SUN HOLIDAY OFF</li>
</ul>
</div>
<div class="right">
<ul>
<li>은행정보</li>
<li><b>국민</b> 5553322-12-5521354</li>
<li><b>농협</b> 123521-94882-12</li>
<li><b>우리</b> 1005-1112-5554331</li>
<li>예금주 : (주)케이와이제이제이</li>
</ul>
</div>

</div>
</div>
</footer>
</body>
</html>