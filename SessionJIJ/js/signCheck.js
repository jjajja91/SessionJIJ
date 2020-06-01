window.onload = function() {

    var cancelBtn = document.querySelector(".cancelBtn");
    var signForm = document.querySelector("#signForm");

    signForm.addEventListener('submit', check);

    function check(e) {
        e.preventDefault();
        var id = document.querySelector("#id");
        var pwd = document.querySelector("#pwd");
        var pwdRepeat = document.querySelector("#pwd-repeat");
        var email = document.querySelector("#email");
        var name = document.querySelector("#name");
        var birth = document.querySelector("#birth");
        var phone = document.querySelector("#phone");
        var man = document.querySelector("#man");
        var idReg = /^[a-z]+[a-z0-9]{5,19}$/g;
        var pwdReg = /^.*(?=^.{8,15}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/;
        var nameReg = /^[가-힣]{2,4}$/;
        var birthReg = /^\d{4}-\d{1,2}-\d{1,2}$/;
        var emailReg = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
        var phoneReg = /^\d{3}-\d{3,4}-\d{4}$/;
        if (id.value == null || id.value == '' || id.value == undefined) {
            alert("아이디가 비어있습니다.");
            id.focus();
            return false;
        } else if (pwd.value == null || pwd.value == ''
                || pwd.value == undefined) {
            alert("비밀번호가 비어있습니다.");
            pwd.focus();
            return false;
        } else if (pwdRepeat.value == null || pwdRepeat.value == ''
                || pwdRepeat.value == undefined) {
            alert("비밀번호 확인이 비어있습니다.");
            pwdRepeat.focus();
            return false;
        } else if (email.value == null || email.value == ''
                || email.value == undefined) {
            alert("이메일이 비어있습니다.");
            email.focus();
            return false;
        } else if (name.value == null || name.value == ''
                || name.value == undefined) {
            alert("이름이 비어있습니다.");
            name.focus();
            return false;
        } else if (birth.value == null || birth.value == ''
                || birth.value == undefined) {
            alert("생년월일이 비어있습니다.");
            birth.focus();
            return false;
        } else if (phone.value == null || phone.value == ''
                || phone.value == undefined) {
            alert("전화번호가 비어있습니다.");
            phone.focus();
            return false;
        } else if (!(idReg.test(id.value))) {
            alert("아이디는 영문자로 시작하는 6~20자 영문자 또는 숫자입니다.");
            id.focus();
            return false;
        } else if (!(pwdReg.test(pwd.value))) {
            alert("비밀번호는 특수문자 / 문자 / 숫자 포함 형태의 8~15자리 이내의 암호입니다.");
            pwd.focus();
            return false;
        } else if (pwd.value != pwdRepeat.value) {
            alert("비밀번호와 확인은 같아야 합니다.");
            pwdRepeat.focus();
            return false;
        } else if (!(emailReg.test(email.value))) {
            alert("이메일의 형식을 지켜서 입력해주세요.");
            email.focus();
            return false;
        } else if (!(nameReg.test(name.value))) {
            alert("이름은 2~4글자의 한글입니다.");
            name.focus();
            return false;
        } else if (!(birthReg.test(birth.value))) {
            alert("생년월일은 YYYY-MM-DD의 형식입니다.");
            birth.focus();
            return false;
        } else if (!(phoneReg.test(phone.value))) {
            alert("전화번호는 000-000(0)-0000의 형식입니다.");
            phone.focus();
            return false;
        } else {
            e.target.submit();
        }
    }
    ;
}