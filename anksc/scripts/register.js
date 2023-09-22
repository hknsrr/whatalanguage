try {

  const anchors = document.querySelectorAll("a");
  for (i = 0; i < anchors.length; ++i) {
    anchors[i].addEventListener('click', function () {
      loadingStart();
    });
  }

  function loadingStart() {
    var body = document.getElementsByTagName('body')[0];
    for (var i = 0; i < body.childNodes.length; i++) {
      if (body.childNodes[i].nodeName === 'DIV')
        body.childNodes[i].classList.add('blur');
    }
    document.getElementById('loading').classList.remove('d-none', 'blur');
  }

  function loadingStop() {
    var body = document.getElementsByTagName('body')[0];
    for (var i = 0; i < body.childNodes.length; i++) {
      if (body.childNodes[i].nodeName === 'DIV')
        body.childNodes[i].classList.remove('blur');
    }
    document.getElementById('loading').classList.add('d-none');
  }

  const passVisibleButtons = document.querySelectorAll(".pass-visible");
  for (i = 0; i < passVisibleButtons.length; ++i) {
    passVisibleButtons[i].addEventListener('click', function (e) {
      if (e.target.previousElementSibling.type == 'password')
        e.target.previousElementSibling.type = 'text';
      else
        e.target.previousElementSibling.type = 'password';
    });
  }

  function validateForm() {

    const uname = document.getElementById('uname');
    const pass = document.getElementById('pass');
    const passConfirm = document.getElementById('pass-confirm');
    const message = document.getElementById('message');

    var xhr = new XMLHttpRequest();
    xhr.open("POST", '/register', true);

    xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");

    xhr.onreadystatechange = function () {
      if (this.readyState === XMLHttpRequest.DONE) {
        uname.classList.remove('invalid-input');
        pass.classList.remove('invalid-input');
        passConfirm.classList.remove('invalid-input');
        message.classList.remove('invalid-input');
        if (this.status === 200) {
          message.innerText = '';
          window.location = this.responseURL;
        } else {
          let response = JSON.parse(this.response);
          message.innerText = response.text;
          if (response.type == 4) {
            uname.classList.add('invalid-input');
          }
          if (response.type == 5) {
            pass.classList.add('invalid-input');
            passConfirm.classList.add('invalid-input');
          }
          loadingStop();
        }
      }
    }
    loadingStart();
    xhr.send("uname=" + uname.value + "&pass=" + pass.value + "&passConfirm=" + passConfirm.value);
  }
} catch (error) {
  console.log(error);
}