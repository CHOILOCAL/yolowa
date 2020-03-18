//중복 검사
$(function() {
   var reg = /^[a-zA-Z0-9]{4,12}$/
   var id = "";
   $('#checkid').click(function() {
      var id = $('#id').val();
      $.ajax({
         url : "checkin",
         type : 'POST',
         data : {
            id : id
         },
         success : function(data) {
            if(!id.match(reg)){
               alert("아이디는 4~12글자 영문,숫자 조합으로만 입력해주세요.");
               $('#id').val('');
               $("#id").focus();
            }else if ($.trim(data) == 0) {
               alert("사용가능한 아이디입니다.");
               id = id;
            }else{
               alert("아이디가 존재합니다. 다른 아이디를 입력해주세요.");
               $('#id').val('');
            }
         },
         error : function() {
            alert("에러입니다");
         }
      });
   });
   //주소 찾기
function sample6_execDaumPostcode() {
       new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.roadAddress;
                }
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById("address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
   
   
   
   //회원가입 유효성 검사
$(function() {
   var id = "";
   $('#btn_check').click(function() {

      var id = $("#id").val();
      var pwd = $("#pwd").val();
      var pwd_ch = $("#pwd_ch").val();
      var birth = $("#birth").val();
      var gen = $("#gender").val();
      var name = $("#name").val();
      var phone = $("#phone").val();
      var address = $("#address").val();
      var photo = $("#photo").val();

      if (id == "") {
         $("#chkid").html("아이디를 입력하세요");
         return;
      } else if (pwd == "") {
         $("#chkpwd").html("비밀번호를 입력하세요");
         $('#pwd').focus();
         return;
      } else if (pwd != pwd_ch) {
         $("#chkpwd_ch").html("비밀번호가 일치 하지 않습니다");
         $("#pwd_ch").val("");
         $('#pwd_ch').focus();
         return;
      } else if (birth == "") {
         $("#chkbirth").html("생년월일을 입력해주세요.");
         $('#birth').focus();
         return;
      } else if (name == "") {
         $("#chkname").html("이름을 입력해주세요.");
         $('#name').focus();
         return;
      } else if (phone == "") {
         $("#chkphone").html("핸드폰번호를 입력해주세요.");
         $('#phone').focus();
         return;
      } else if (address == "") {
         $("#chkaddress").html("주소를 입력해주세요.");
         $('#address').focus();
         return;
      }else if (photo == "") {
         alert("프로필 사진을 삽입해주세요.")
         $('#photo').focus();
         return; 
      }else
         alert("환영합니다 회원가입이 완료되었습니다.");
         $("#insert").submit();
         window.location.href = "home";
      });
   });
});
