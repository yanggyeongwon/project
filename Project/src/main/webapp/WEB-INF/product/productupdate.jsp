<%@page import="product.model.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions"%>
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
    <link rel="stylesheet" href="<c:url value="/resources/css/productinsert.css"/>">
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Raleway:wght@300&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Inconsolata:wght@200&display=swap" rel="stylesheet">
    <title>상품수정페이지입니다.</title>
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

						image.src = this.result;
						// @details 이미지 확장자 검사
						//$("#thumbnaulImgs").remove();
						$("#thumbnailImgs img").replaceWith(image);
						$("#thumbnailImgs img").wrap("<a class='at' onclick='removeElement(this)')></a>");
						//let add = $("<a href='#'>"+image+"</a>");
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
	 function uploadImgPreview1() {
		 	// @breif 업로드 파일 읽기
		 	let fileList = document.getElementById( "upImgFiles1" ).files;
				// @breif 업로드 파일 읽기
				function readAndPreview( fileList ) {
					// @breif 이미지 확장자 검사
					if ( /\.(jpe?g|png|gif)$/i.test( fileList.name ) ) {
						let reader = new FileReader();
						reader.addEventListener( "load", function() {
							let image = new Image();
							image.width = "50";
							image.height = "50";

							image.src = this.result;
							// @details 이미지 확장자 검사
							//$("#thumbnaulImgs1 img").remove();
							$("#thumbnailImgs1 img").replaceWith(image);
							$("#thumbnailImgs1 img").wrap("<a class='at1' onclick='removeElement(this)')></a>");
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
		 
	 function uploadImgPreview2() {
		 	// @breif 업로드 파일 읽기
		 	let fileList = document.getElementById( "upImgFiles2" ).files;
				// @breif 업로드 파일 읽기
				function readAndPreview( fileList ) {
					// @breif 이미지 확장자 검사
					if ( /\.(jpe?g|png|gif)$/i.test( fileList.name ) ) {
						let reader = new FileReader();
						reader.addEventListener( "load", function() {
							let image = new Image();
							image.width = "50";
							image.height = "50";

							image.src = this.result;
							// @details 이미지 확장자 검사
							
							$("#thumbnailImgs2 img").replaceWith(image);
							$("#thumbnailImgs2 img").wrap("<a class='at2' onclick='removeElement(this)')></a>");
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
		 
	 function uploadImgPreview3() {
		 	// @breif 업로드 파일 읽기
		 	let fileList = document.getElementById( "upImgFiles3" ).files;
				// @breif 업로드 파일 읽기
				function readAndPreview( fileList ) {
					// @breif 이미지 확장자 검사
					if ( /\.(jpe?g|png|gif)$/i.test( fileList.name ) ) {
						let reader = new FileReader();
						reader.addEventListener( "load", function() {
							let image = new Image();
							image.width = "50";
							image.height = "50";

							image.src = this.result;
							// @details 이미지 확장자 검사
							
							
							$("#thumbnailImgs3 img").replaceWith(image);
							$("#thumbnailImgs3 img").wrap("<a class='at3' onclick='removeElement(this)')></a>");	
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
			$("#upImgFiles1").on("change", readURL);
			$("#upImgFiles2").on("change", readURL);
			$("#upImgFiles3").on("change", readURL);
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
		function removeElement(atag){
			$("#upImgFiles").val("");
			$(atag).remove();
			$("#img").attr("src", '');
			$(".upload-hidden").val('')
			
			
			let a_class = $(atag).attr('class');
			if(a_class == 'at'){
				$("#upload_name").val('썸네일 사 진')
			}else if(a_class == "at1"){
				$("#upload_name1").val('썸네일 서브 사진')
			}else if(a_class == "at2"){
				$("#upload_name2").val('썸네일 서브 사진')
			}else if(a_class == "at3"){
				$("#upload_name3").val('상세피이지 사진')
			}
		}
    </script>
<!-- </head> -->
 <%
  		String url = request.getContextPath();
 %>
<body>
     <%@ include file="../admin_header.jsp" %>
    <div class="admin_page">
        <div id="first_box">
        	<p id="p_title">상품 수정</p>
               <form:form commandName="product" method="post" action="productupdate.prd" enctype="multipart/form-data">
               <input type="hidden" name="pnum" value="${product.pnum }">
	            <div id="second_box">
	            	 	<div id="left_box">
	                        <div class="top_box">
	                            <div id="image_view">
									<img id="img" src="" height="100%" onerror="this.src='<c:url value="/resources/images/unimage.jpg"/>'" />
	                            </div>
							  
	                            <div id="image_sun_view">
	                            	<div id="thumbnailImgs">
	                            		<img src="<%=url %>/resources/images/${product.pimage}" alt="no" width="50" height="50">
	                            	</div>
	                            	<div id="thumbnailImgs1">
	                            		<img src="<%=url %>/resources/images/${product.pimage1}" alt="no" width="50" height="50">
	                            	</div>
	                            	<div id="thumbnailImgs2">
	                            		<img src="<%=url %>/resources/images/${product.pimage2}" alt="no" width="50" height="50">
	                            	</div>
	                            	<div id="thumbnailImgs3">
	                            		<img src="<%=url %>/resources/images/${product.pimage3}" alt="no" width="50" height="50">
	                            	</div>
	                            </div>
	                            <div class="input_box">
		                            <ul id="input_img_btn">
		                                <li>
		                                <input class="upload-name" id="upload_name" value="${product.pimage }" disabled="disabled">   
		                              	<input type="file" class="upload-hidden" name="upload" id="upImgFiles" onChange="uploadImgPreview();" accept="image/*" multiple>
		                                <label for="upImgFiles">업로드</label> 
										</li>
									</ul>
									<ul id="input_img_btn">
										<li>
		                                <input class="upload-name" id="upload_name1" value="${product.pimage1 }" disabled="disabled"> 
		                                <input type="file" class="upload-hidden"  name="upload1" id="upImgFiles1" onChange="uploadImgPreview1();" accept="image/*" multiple>
		                                <label for="upImgFiles1">업로드</label> 
									</ul>
									<ul id="input_img_btn">
										<li>
		                                <input class="upload-name" id="upload_name2" value="${product.pimage2 }" disabled="disabled"> 
		                                <input type="file" class="upload-hidden" name="upload2" id="upImgFiles2" onChange="uploadImgPreview2();" accept="image/*" multiple>
		                                <label for="upImgFiles2">업로드</label>
									</ul>
									<ul id="input_img_btn">
										<li>
		                                <input class="upload-name" id="upload_name3" value="${product.pimage3 }" disabled="disabled"> 
		                                <input type="file" class="upload-hidden"  name="upload3" id="upImgFiles3" onChange="uploadImgPreview3();" accept="image/*" multiple>
		                                <label for="upImgFiles3">업로드</label>  
		                                </li>
		                            </ul>           
		                                <!-- accept='image/jpg, impge/png, image/jpeg, image/gif, impge/PNG' -->
		                        </div>
	                        </div>
	                        
	                    </div>
	                 	<div id="right_box">
	                        <div id="text_box">
	                            <ul class="flex_ul">
	                                <li class="margin-l10r10"><p>상품명</p></li>
	                                <li style="margin-left: 40px;"><input type="text" size="10" name="pname" value="${product.pname}"></li>
	                            </ul>
	                            <ul class="flex_ul">
	                                <li class="margin-l10r10"><p>상품번호</p></li>
	                                <li style="margin-left: 26px;"><input type="text" size="10" name="best" value="${product.pbest }"></li>
	                            </ul>
	                            <div class="cate">
	                           		<p>* 1 : BEST</p>
	                                <p>* 2 : TOP</p>
	                                <p>* 3 : BOTTOM</p>
	                                <p>* 4 : OUTER</p>
	                                <p>* 5 : SHOSE</p>
	                                <p>* 6 : ACC</p>
	                            </div>
	                            <ul class="flex_ul">
	                                <li class="margin-l10r10"><p>색상</p></li>
	                                <li class="ch_red" ><input type="checkbox" name="pcolor" value="red" <c:if test="${fn:contains(product.pcolor,'red' )}">checked</c:if>></li>
	                                <li class="ch_blu" ><input type="checkbox" name="pcolor" value="blue" <c:if test="${fn:contains(product.pcolor,'blue' )}">checked</c:if>></li>
	                                <li class="ch_yeo" ><input type="checkbox" name="pcolor" value="yellow" <c:if test="${fn:contains(product.pcolor,'yellow' )}">checked</c:if>></li>
	                                <li class="ch_gre" ><input type="checkbox" name="pcolor" value="green" <c:if test="${fn:contains(product.pcolor,'green' )}">checked</c:if>></li>
	                                <li class="ch_whi" ><input type="checkbox" name="pcolor" value="white" <c:if test="${fn:contains(product.pcolor,'white' )}">checked</c:if>></li>
	                                <li class="ch_bla" ><input type="checkbox" name="pcolor" value="black" <c:if test="${fn:contains(product.pcolor,'black' )}">checked</c:if>></li>
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
	                                <li class="margin-left7"><input type="checkbox" name="psize" value="s" <c:if test="${fn:contains(product.psize,'s' )}">checked</c:if>></li>
	                                <li class="margin-left7"><input type="checkbox" name="psize" value="m" <c:if test="${fn:contains(product.psize,'m' )}">checked</c:if>></li>
	                                <li class="margin-left7"><input type="checkbox" name="psize" value="l" <c:if test="${fn:contains(product.psize,'l' )}">checked</c:if>></li>
	                                <li class="margin-left7"><input type="checkbox" name="psize" value="xl" <c:if test="${fn:contains(product.psize,'xl' )}">checked</c:if>></li>
	                                <li class="margin-left7"><input type="checkbox" name="psize" value="free" <c:if test="${fn:contains(product.psize,'free' )}">checked</c:if>></li>
	                            </ul>
	                            <ul class="flex_ul">
	                                <li class="margin-l10r10"><p>가격</p></li>
	                                <li style="margin-left: 54px;"><input type="text" size="10" name="pprice" value="${product.pprice }"></li>
	                            </ul>
	                            <ul class="flex_ul">
	                                <li class="margin-l10r10"><p>포인트</p></li>
	                                <li style="margin-left: 40px;"><input type="text" size="10" name="ppoint" value="${product.ppoint }"></li>
	                            </ul>
	                            <ul class="flex_ul">
	                                <li class="margin-l10r10"><p>수량</p></li>
	                                <li style="margin-left: 40px;"><input type="text" size="10" name="pcount" value="150"></li>
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