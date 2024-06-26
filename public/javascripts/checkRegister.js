

document.addEventListener("DOMContentLoaded", function () {
    const txtuserInput = document.getElementById("txtuser");
    const txtpassInput = document.getElementById("txtpass");
    
    const checkButton = document.getElementById("check-button");

    const form_name = document.getElementById("form_name");
    const form_nameValue = form_name.value.trim()


    checkButton.addEventListener("click", function () {


        var countClick = 0;
        // document.flogin.submit();

        //click for username
        const txtusernameValue = txtuserInput.value.trim()
        if ((txtusernameValue.length < 3) || (txtusernameValue.length > 9)) {
            txtuserInput.style.border = "1px solid red";
            document.getElementById('usererr').innerHTML = "이름은 3~9자이어야 합니다.";
            countClick += 1;
        }
        else {
            txtuserInput.style.border = "1px solid #00B247";
            document.getElementById('usererr').innerHTML = "";
        }

        //check password

        function isValidPass(password) {
            var regex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{6,20}$/;
            return regex.test(password);
        }
        const txtpassValue = txtpassInput.value.trim();
        if (isValidPass(txtpassValue)) {
            txtpassInput.style.border = "1px solid  #00B247";
            document.getElementById('passerr').innerHTML = "";
        } else {
            txtpassInput.style.border = "1px solid red";
            document.getElementById('passerr').innerHTML = "6-20자 영문 대소문자, 숫자, 특수문자를 1개씩 포함해주세요";
            countClick += 1;
        }

        if (countClick == 0) {
           // alert("submit");
           if(form_nameValue == 'fuser_add'){
             document.fuser_add.submit();
           // alert("submit to add");
           }else{
            document.fuser_edit.submit();
           // alert("submit to edit");
           }
         }
         else {
             // alert(countClick);
         }
    });

});




