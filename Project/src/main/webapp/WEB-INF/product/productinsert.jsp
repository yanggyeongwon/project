<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="<c:url value="/resources/js/jquery-3.5.1.min.js" />"></script>
	<script src="<c:url value="/resources/js/script.js"/>"></script>
    <link rel="stylesheet" href="<c:url value="/resources/css/common.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/main_style.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/admin_product_insert.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/css/adminpage.css"/>">
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Raleway:wght@300&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Inconsolata:wght@200&display=swap" rel="stylesheet">
    
    <title>상품등록페이지입니다.</title>
 <script type="text/javascript">
		 function uploadImgPreview() {
		 	// @breif 업로드 파일 읽기
		 	let fileList = document.getElementById( "upImgFiles" ).files;
				// @breif 업로드 파일 읽기
				function readAndPreview( fileList ) {
					// @breif 이미지 확장자 검사
					if ( /\.(jpe?g|png|gif)$/i.test( fileList.name ) ) {
						let reader = new FileReader();
						reader.addEventListener( "load", function() {
							let image = new Image();
							image.width = "50";
							image.height = "50";
							image.title = fileList.name;
							image.src = this.result;
							// @details 이미지 확장자 검사
							
							document.getElementById( "thumbnailImgs" ).appendChild( image );

							
						}, false );
						// @details readAsDataURL( )을 통해 파일의 URL을 읽어온다.
						if( fileList ) {
							reader.readAsDataURL( fileList );
						}
					}
				}
		 	if( fileList ) {
		             // @details readAndPreview() 함수를 forEach문을통한 반복 수행
				[].forEach.call( fileList, readAndPreview );
		     }
		 }
		 
		 let sel_files = [];
			
			$(document).ready(function(){
				$("#upImgFiles").on("change", readURL);
			})

		    function readURL(e) {
			console.log("들어옴")
				let files = e.target.files;
				let filesArr = Array.prototype.slice.call(files);
				
				filesArr.forEach(function(f){
					
					sel_files = f;
					
					let reader = new FileReader();
					reader.onload = function(e){
						$("#img").attr('src', e.target.result)
					}
					reader.readAsDataURL(f);
				})
		        
		    }

    </script>
<!-- </head> -->
<body>
<<<<<<< HEAD
    <%@ include file="../admin_header.jsp" %>
=======

     <%@ include file="../admin_header.jsp" %>
>>>>>>> 097f67fa7e897a6bf8c86769f4b305a61a6e8e66
    <div class="admin_page">

        <div id="first_box">
        	<p id="p_title">상품 등록</p>
               <form:form commandName="product" method="post" action="productinsert.prd" enctype="multipart/form-data">
	            <div id="second_box">
	            	 	<div id="left_box">
	                        <div class="top_box">
	                            <div id="image_view">
									<img id="img" src="#" height="100%">
	                            </div>
							    
	                            <div id="image_sun_view">
	                            	<div id="thumbnailImgs">
	                            	
	                            	</div>
	                            </div>
	                            <div class="input_box">
		                            <ul id="input_img_btn">
		                                <li><input type="file" id="upImgFiles" onChange="uploadImgPreview();" accept="image/*" multiple></li><!-- accept='image/jpg, impge/png, image/jpeg, image/gif, impge/PNG' -->
		                            </ul>
		                        </div>
	                        </div>
	                        
	                    </div>
	                 	<div id="right_box">
	                        <div id="text_box">
	                            <ul class="flex_ul">
	                                <li class="margin-l10r10"><p>상품명</p></li>
	                                <li style="margin-left: 40px;"><input type="text" size="10" name="input_pname" value=""></li>
	                            </ul>
	                            <ul class="flex_ul">
	                                <li class="margin-l10r10"><p>상품번호</p></li>
	                                <li style="margin-left: 26px;"><input type="text" size="10" name="input_pnum" value=""></li>
	                            </ul>
	                            <ul class="flex_ul">
	                                <li class="margin-l10r10"><p>색상</p></li>
	                                <li class="ch_red" ><input type="checkbox" name="input_pcolor_r" value=""></li>
	                                <li class="ch_blu" ><input type="checkbox" name="input_pcolor_b" value=""></li>
	                                <li class="ch_yeo" ><input type="checkbox" name="input_pcolor_y" value=""></li>
	                                <li class="ch_gre" ><input type="checkbox" name="input_pcolor_g" value=""></li>
	                                <li class="ch_whi" ><input type="checkbox" name="input_pcolor_w" value=""></li>
	                                <li class="ch_bla" ><input type="checkbox" name="input_pcolor_bl" value=""></li>
	                            </ul>
	                            <ul id="flex_ck">
	                                <li><p>사이즈</p></li>
	                                <li style="margin-left: 50px;"><p>S</p></li>
	                                <li style="margin-left: 14px;"><p>M</p></li>
	                                <li style="margin-left: 14px;"><p>L</p></li>
	                                <li style="margin-left: 14px;"><p>XL</p></li>
	                                <li style="margin-left: 10px;"><p>F</p></li>
	                            </ul>
	                            <ul id="flex_ck1">
	                                <li class="margin-left7"><input type="checkbox" name="input_psize_s" value=""></li>
	                                <li class="margin-left7"><input type="checkbox" name="input_psize_m" value=""></li>
	                                <li class="margin-left7"><input type="checkbox" name="input_psize_l" value=""></li>
	                                <li class="margin-left7"><input type="checkbox" name="input_psize_xl" value=""></li>
	                                <li class="margin-left7"><input type="checkbox" name="input_psize_f" value=""></li>
	                            </ul>
	                            <ul class="flex_ul">
	                                <li class="margin-l10r10"><p>가격</p></li>
	                                <li style="margin-left: 54px;"><input type="text" size="10" name="input_pprice" value=""></li>
	                            </ul>
	                            <ul class="flex_ul">
	                                <li class="margin-l10r10"><p>포인트</p></li>
	                                <li style="margin-left: 40px;"><input type="text" size="10" name="input_ppoint" value=""></li>
	                            </ul>
	                        </div>
	                        <div class="input_box">
	                            <ul id="input_p_btn">
	                                <li><input type="submit" name="input_img_btn" value="상품등록"></li>
	                                <li id="p_btn_margin"><input type="button" name="input_img_btn" value="등록취소"></li>
	                            </ul>
	                        </div>
	                    </div>
	               
	            </div>
            </form:form>
        </div>
   </div>
</body>

</html>