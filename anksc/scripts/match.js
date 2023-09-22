let content;
let sentences;
let words = {};

var socket;

let xhrCookie = new XMLHttpRequest();
xhrCookie.open("GET", '/iscookie', true);
xhrCookie.setRequestHeader("Content-Type", "application/json;charset=UTF-8");
xhrCookie.onreadystatechange = function () {
    if (this.readyState === XMLHttpRequest.DONE && this.status === 200) {
        let result2 = JSON.parse(xhrCookie.responseText);
        if (!result2.isCookie) document.getElementById('js-cookie-popup').classList.remove("d-none");
    }
}
xhrCookie.send();

let xhrLogged = new XMLHttpRequest();
xhrLogged.open("GET", '/islogged', true);
xhrLogged.setRequestHeader("Content-Type", "application/json;charset=UTF-8");
xhrLogged.onreadystatechange = function () {
    if (this.readyState === XMLHttpRequest.DONE && this.status === 200) {
        let result = JSON.parse(xhrLogged.responseText);
        isLogged = result.isLogged;
        if (result.isLogged) {
            logout.classList.remove("d-none");
        } else {
            login.classList.remove("d-none");
            // signup.classList.remove("d-none");
            register.classList.remove("d-none");
        }
    }
}
xhrLogged.send();

let btnCloseCookiePopup = document.getElementById('js-btn-close-cookie-popup');
let btnCloseRestartPopup = document.getElementById('js-btn-close-restart-popup');

var resultDiv = document.getElementById("result");
var wordsDiv = document.getElementById("words");
var scoreSpan = document.getElementById("score");
var progressBar = document.getElementById("progressBar");
var popupGameOver = document.getElementById("popupGameOver");
var popupStart = document.getElementById("popupStart");
var popupWaiting = document.getElementById("popupWaiting");

var homeScore = document.getElementById("homeScore");
var awayScore = document.getElementById("awayScore");


var btnSwap = document.getElementById("btnSwap");
var btnStart = document.getElementById("btnStart");
var btnRestart = document.getElementById("btnRestart");
// var btnNext = document.getElementById("btnNext");

var btnCloseTooltip = document.getElementById("btnCloseTooltip");

var paper = document.getElementById("paper");
var currentScoreWrapper = document.getElementById("currentScoreWrapper");
var currentScore = document.getElementById("currentScore");

var level = localStorage.getItem('level');
var lang1 = localStorage.getItem('lang1');
var lang2 = localStorage.getItem('lang2');

// lang1.value = localStorage.getItem('lang1') || lang1[0].value;
// lang2.value = localStorage.getItem('lang2') || lang2[1].value;
// level.value = localStorage.getItem('level') || 1;

var login = document.getElementById("login");
var logout = document.getElementById("logout");
// var signup = document.getElementById("signup");
var register = document.getElementById("register");
isLogged = false;

var profileTooltipContainer = document.getElementById('profileTooltipContainer');
var rankingList = document.getElementById('rankingList');
var profileList = document.getElementById('profileList');

var levelEn = document.getElementById('levelEn');
var levelFr = document.getElementById('levelFr');
var levelDe = document.getElementById('levelDe');
var levelEs = document.getElementById('levelEs');
var levelIt = document.getElementById('levelIt');
var levelFa = document.getElementById('levelFa');


document.getElementById('questionCount').addEventListener("change", function () {
    socket.emit('changeQuestionCount', questionCount.value);
});

window.addEventListener("load", function () {

    // onChangeLang();

    socket = io();

    socket.emit('gu');

    const detectRankinglist = setInterval(() => {
        if (rankingList.children.length == 0) {
            console.log('reload');
            // window.location.reload();
        } else {
            clearInterval(detectRankinglist);
        }
    }, 500);

    btnCloseCookiePopup.addEventListener('click', function () {
        let xhr3 = new XMLHttpRequest();
        xhr3.open("POST", '/iscookie', true);
        xhr3.setRequestHeader("Content-Type", "application/json;charset=UTF-8");
        xhr3.onreadystatechange = function () {
            if (this.readyState === XMLHttpRequest.DONE && this.status === 200) {
                document.getElementById('js-cookie-popup').classList.add('d-none');
            }
        }
        xhr3.send();
    });

    btnCloseRestartPopup.addEventListener('click', function () {
        if (popupGameOver.classList.contains('minimize')) {
            popupGameOver.classList.remove('minimize');
        } else {
            popupGameOver.classList.add('minimize');
        }
    });

    rankingList.addEventListener('click', function (e) {
        if (e.target.tagName === 'LI') {
            openTooltip(e);
        }
    });

    btnStart.addEventListener('click', function () {
        start();
    });

    btnRestart.addEventListener('click', function () {
        restart();
    });

    // btnNext.addEventListener('click', function () {
    //     next();
    // });


    btnCloseTooltip.addEventListener('click', function () {
        closeTooltip();
    });

    btnRank.addEventListener('click', function () {
        closeTooltip();
    });


    // ranking list
    socket.on('users', function (players, me) {

        rankingList.innerHTML = "";
        players.forEach(function (p) {
            let li = document.createElement('li');
            li.innerText = p.uname;
            // console.log(p.uname, me);
            if (p.uname == me) {
                li.classList.add('me');
            }

            rankingList.appendChild(li);
        });
    });

    socket.on('changeQuestionCount', function (value) {

        document.getElementById('questionCount').value = value;
    });

    socket.on('userLevel', function (res) {

        const player = res[0]

        let li0 = document.createElement('li');
        li0.innerHTML = '<h3>' + player.uname + '</h3>';
        profileList.appendChild(li0);

        let liHR = document.createElement('li');
        liHR.innerHTML = '<hr/>';
        profileList.appendChild(liHR);

        let li = document.createElement('li');
        li.innerHTML = '<span>Win: ' + player.win + '</span>';
        profileList.appendChild(li);

        let li2 = document.createElement('li');
        li2.innerHTML = '<span>Lose: ' + player.lose + '</span>';
        profileList.appendChild(li2);
    });

    // socket.on('userstrlevel', function (player) {
    //     setLevel(player, 'levelTrWrapper', 'levelTr');
    // });

    // socket.on('usersenlevel', function (player) {
    //     setLevel(player, 'levelEnWrapper', 'levelEn');
    // });

    // socket.on('usersfrlevel', function (player) {
    //     setLevel(player, 'levelFrWrapper', 'levelFr');
    // });

    // socket.on('usersdelevel', function (player) {
    //     setLevel(player, 'levelDeWrapper', 'levelDe');
    // });

    // socket.on('userseslevel', function (player) {
    //     setLevel(player, 'levelEsWrapper', 'levelEs');
    // });

    // socket.on('usersitlevel', function (player) {
    //     setLevel(player, 'levelItWrapper', 'levelIt');
    // });

    // socket.on('usersfalevel', function (player) {
    //     setLevel(player, 'levelFaWrapper', 'levelFa');
    // });

    socket.on('clearlevels', function () {
        profileList.innerHTML = "";
    });

    socket.on('devamEt', function () {
        resultDiv.style.color = '#00b700';
        resultDiv.style.textShadow = 'rgb(0 255 88) 1px 1px 20px';
        delete words[Object.keys(words)[0]];
        next();
        // if (!isGameOver) {
        //     btnNext.classList.remove('d-none');
        // }
    });

    socket.on('win', function () {
        gameResult.innerText = 'YOU WIN!';
        paper.classList.add('d-none');
        gameResult.classList.add('win');
        setTimeout(() => {
            window.location = '/';
        }, 5000);
    });

    socket.on('lose', function () {
        gameResult.innerText = 'YOU LOSE!';
        paper.classList.add('d-none');
        gameResult.classList.add('lose');
        setTimeout(() => {
            window.location = '/';
        }, 5000);
    });

    let currentSentence = '';
    let result = [];

    let isGameOver = false;

    function getContent() {
        if (!Object.values(words)[0]) {
            let xhr = new XMLHttpRequest();
            xhr.open("POST", '/content', true);
            xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
            xhr.onreadystatechange = function () {
                if (this.readyState === XMLHttpRequest.DONE && this.status === 200) {
                    let result = JSON.parse(xhr.response);
                    // content = result.en;
                    // sentences = content.replace(/([.?!])\s*(?=[A-Z])/g, "$1|").split("|");
                    result.forEach((r, i) => {
                        words["sentence" + i] = {
                            valid: r[lang2.value].trim().replace(/\s\s+/g, ' ').split(" "),
                            invalid: shuffle(r[lang2.value].trim().replace(/\s\s+/g, ' ').split(" ")),
                            lang2: r[lang1.value].trim().replace(/\s\s+/g, ' ')
                        };
                    });

                    if (lang2.value == 'fa') {
                        resultDiv.style.flexDirection = 'row-reverse';
                    }

                    init();
                }
            }
            xhr.send("lang1=" + lang1.value + "&lang2=" + lang2.value + "&level=" + level.value);
        } else {
            init();
        }
    }

    function openTooltip(e) {
        // getTooltip


        profileTooltipContainer.style.top = e.clientY + 10 + 'px';
        profileTooltipContainer.style.right = '0';
        profileTooltipContainer.style.display = 'block';
        profileList.innerHTML = ""

        socket.emit('gt', e.target.innerText);
    }

    function closeTooltip() {
        profileTooltipContainer.style.display = 'none';
    }

    function setLevel(player, levelWrap, level) {
        document.getElementById('tooltipPlayer').innerText = player.uname;
        // document.getElementById('tooltipInfo').innerText = player.uname;

        // if (player.level1 || player.level2 || player.level3 || player.level4 || player.level5) {

        //     let li = document.createElement('li');
        //     li.setAttribute('id', levelWrap);
        //     // if (lang2.value == level.slice(-2).toLowerCase())
        //     //     li.setAttribute('class', 'active');
        //     li.innerHTML = '<span>' + level.slice(-2) + ':</span> \
        //     <hr> \
        //     <ul id='+ level + '> \
        //     </ul>';
        //     profileList.appendChild(li);

        //     var level = document.getElementById(level);

        //     if (player.level1) {
        //         let li = document.createElement('li');
        //         li.innerText = 'level1: ' + player.level1;
        //         level.appendChild(li);
        //     }

        //     if (player.level2) {
        //         let li2 = document.createElement('li');
        //         li2.innerText = 'level2: ' + player.level2;
        //         level.appendChild(li2);
        //     }

        //     if (player.level3) {
        //         let li3 = document.createElement('li');
        //         li3.innerText = 'level3: ' + player.level3;
        //         level.appendChild(li3);
        //     }

        //     if (player.level4) {
        //         let li4 = document.createElement('li');
        //         li4.innerText = 'level4: ' + player.level4;
        //         level.appendChild(li4);
        //     }

        //     if (player.level5) {
        //         let li5 = document.createElement('li');
        //         li5.innerText = 'level5: ' + player.level5;
        //         level.appendChild(li5);
        //     }

        // }

        document.getElementById('totalScore').innerText = player.score;
    }

    function start() {
        if (rankingList.offsetParent)
            btnRank.click();
        closeTooltip();

        // popupStart.classList.add('d-none');
        // popupWaiting.classList.remove('d-none');
        // getContent();
    }

    function gameOver() {
        popupGameOver.classList.remove('d-none');
        popupGameOver.classList.add('d-block');

        isGameOver = true;

        // clearResult();

        setTimeout(function () {
            console.log('ads');
            window.adBreak({
                type: 'start',
                name: 'restart-game'
            });
        }, 2000);
    }



    function restart() {
        if (rankingList.offsetParent)
            btnRank.click();
        closeTooltip();
        currentScore.innerText = '-';
        popupGameOver.classList.add('d-none');
        popupGameOver.classList.remove('d-block');

        isGameOver = false;
        clearResult();
        clearInvalidAnimation();
        getContent();
    }

    function next() {
        if (!isGameOver) {
            clearResult();
            init();
        }
    }

    function answer() {
        if (isGameOver) {
            clearInvalidAnimation();
            resultDiv.innerHTML = "";
            currentSentence.valid.forEach((e) => {
                var wordSpan = document.createElement("span");
                wordSpan.className = 'word';
                wordSpan.innerText = e;
                resultDiv.appendChild(wordSpan);
            });
            resultDiv.style.color = '#00b700';
            resultDiv.style.textShadow = 'rgb(0 255 88) 1px 1px 20px';
        }
    }

    function swapLang() {
        const lang1Temp = lang1.value;
        const lang2Temp = lang2.value;
        lang1.value = lang2.value;
        lang2.value = lang1Temp;

        onChangeLang();
    }

    function onChangeLevel() {
        // localStorage.setItem('level', level.value);
    }

    function onChangeLang() {

        // localStorage.setItem('lang1', lang1.value);
        // localStorage.setItem('lang2', lang2.value);

        for (var i = 0; i < lang1.children.length; i++) {
            let option = lang1.children[i];
            option.removeAttribute('disabled');
            if (option.value == lang2.value) {
                option.setAttribute('disabled', true);
            }
        }

        for (var i = 0; i < lang2.children.length; i++) {
            let option = lang2.children[i];
            option.removeAttribute('disabled');
            if (option.value == lang1.value) {
                option.setAttribute('disabled', true);
            }
        }
    }



    function init() {

        paper.classList.remove('d-none');
        // currentScoreWrapper.classList.remove('d-none');
        // btnNext.classList.add('d-none');


        currentSentence = Object.values(words)[0];
        // console.log('allSentences', words);
        // console.log('currentSentence', currentSentence);
        if (currentSentence) {
            currentSentence.invalid.forEach((e) => {
                var wordSpan = document.createElement("span");
                wordSpan.className = 'word';
                wordSpan.innerText = e;
                wordsDiv.appendChild(wordSpan);
            });
            createWords();

        }
    }




    function clearResult() {
        document.getElementById("result").innerHTML = '';
        document.getElementById("words").innerHTML = '';
        document.getElementById("translate").innerHTML = '';
    }

    function createWords() {
        // console.log(currentSentence.valid);
        document.getElementById("translate").innerText = currentSentence['lang2'];
        var spans = document.querySelectorAll("#words .word");
        for (i = 0; i < spans.length; i++)
            spans[i].onclick = pushWord;
    }

    function pushWord() {

        if (this.parentNode.id == 'words') {
            resultDiv.appendChild(this);
        }
        else {
            clearInvalidAnimation();
            wordsDiv.appendChild(this);
        }

        checkPushedWords();
    }

    let loopInvalidAnimation;
    function checkPushedWords() {
        // clearInvalidAnimation();
        if (resultDiv.lastChild)
            resultDiv.lastChild.classList.remove('error');
        resultDiv.style.color = 'black';
        resultDiv.style.textShadow = null;
        resultDiv.style.fontSize = '22px';
        var pushedSpans = document.querySelectorAll("#result .word");
        var spans = document.querySelectorAll("#words .word");

        if (spans.length == 0) {
            result = [];
            for (i = 0; i < pushedSpans.length; i++)
                result.push(pushedSpans[i].innerText);

            if (isEqualArrays(result, currentSentence.valid)) {

                socket.emit('cevapKontrol', result, currentSentence.valid);



            }
            else {
                resultDiv.style.color = 'red';
                resultDiv.lastChild.classList.add('error');

                var counter = 0;
                setTimeout(() => {
                    loopInvalidAnimation = setInterval(function () {
                        if (resultDiv.lastChild) {
                            if (counter == 0) {
                                resultDiv.lastChild.style.fontSize = '23px';
                                counter = 1;
                            }
                            else {
                                resultDiv.lastChild.style.fontSize = '21px';
                                counter = 0;
                            }
                        }
                    }, 150);
                }, 1000);


                if (progressBar.value == progressBar.max) {

                    clearInvalidAnimation();
                    gameOver();
                }
            }

        }

    }

    function clearInvalidAnimation() {
        document.querySelectorAll('.word').forEach(e => {
            e.removeAttribute("style");
        });
        clearInterval(loopInvalidAnimation);
    }

    function isEqualArrays(a, b) {
        return a.length === b.length && a.every((v, i) => v === b[i]);
    }

    function shuffle(array) {
        let currentIndex = array.length,
            randomIndex;

        // While there remain elements to shuffle.
        while (currentIndex != 0) {
            // Pick a remaining element.
            randomIndex = Math.floor(Math.random() * currentIndex);
            currentIndex--;

            // And swap it with the current element.
            [array[currentIndex], array[randomIndex]] = [
                array[randomIndex],
                array[currentIndex]
            ];
        }

        return array;
    }















    // Kullanıcı bilgilerini saklamak için bir nesne oluşturun
    const kullaniciBilgileri = {
        puan: 0, // Kullanıcının puanını saklar
    };

    // Diğer kullanıcıların puanlarını göstermek için bir element
    const genelMesajlar = document.getElementById('genelMesajlar');

    const gameResult = document.getElementById('gameResult');

    // btnStart butonuna tıkladığında
    document.getElementById('btnStart').addEventListener('click', () => {
        const roomName = document.getElementById('roomName').value;
        const questionCount = document.getElementById('questionCount').value;
        if (roomName) {
            // Odaya bağlanmak için roomName'i sunucuya gönder
            socket.emit('odaKatil', roomName, lang1, lang2, level, questionCount);

            popupStart.classList.add('d-none');
            popupWaiting.classList.remove('d-none');
            genelMesajlar.innerText = 'Other player is waiting...';
        } else {
            alert('Please enter a room name!');
        }
    });

    // Ready butonuna tıkladığında
    document.getElementById('btnReady').addEventListener('click', () => {
        // Hazır olduğunu sunucuya bildir

        document.getElementById('btnReady').innerText = '...';
        // document.getElementById('btnReady').classList.add('d-none');
        genelMesajlar.innerText = 'You are ready, match will start when the other player is ready...';


        socket.emit('hazirOl');
    });

    // Kullanıcının puanını güncelle
    function puanGuncelle(yeniPuan) {
        kullaniciBilgileri.puan = yeniPuan;
        // Kullanıcının puanını ekranda güncelleyin
        document.getElementById('puan').textContent = `Puan: ${kullaniciBilgileri.puan}`;
    }

    // "Oda dolu" mesajını dinle
    socket.on('odaDolu', (mesaj) => {
        alert(mesaj); // "Oda dolu" mesajını göster

        popupStart.classList.remove('d-none');
        popupWaiting.classList.add('d-none');
        genelMesajlar.innerText = 'Other player is waiting...';
    });

    // Diğer oyuncunun hazır olduğunu belirtme mesajını dinle
    socket.on('digerOyuncuBaglandi', (i) => {
        // Diğer oyuncu hazır olduğunda, "Hazır" butonlarını etkinleştir
        document.getElementById('btnReady').classList.remove('btn-disabled');
        genelMesajlar.innerText = 'Other player is connected, waiting for it to be ready...';
        document.getElementById('questionCountWrapper').classList.remove('d-none');

        if (i == 1) {
            document.getElementById('questionCount').classList.add('btn-disabled');
        }
        // document.getElementById('btnReady').classList.add('btn-enabled');
    });


    socket.on('digerOyuncuHazir', () => {
        genelMesajlar.innerText = 'The other player is ready! Waiting for you...';
    });

    // Oyun başladığında
    socket.on('oyunBasladi', (questionCount) => {
        // Oyun başladığında Ready butonunu devre dışı bırakabilir veya gizleyebilirsiniz.
        // document.getElementById('btnReady').classList.add('d-none');
        popupWaiting.classList.add('d-none');
        document.getElementById('questionCount').value = questionCount;
        document.getElementById('questionCount').classList.add('btn-disabled');
        // Kullanıcılar burada oyunun başladığını gösterebilirler
    });

    socket.on('digerOyuncuAyrildi', () => {
        genelMesajlar.innerText = 'The other player is left!';
    });




    socket.on('homeScore', (s) => {
        homeScore.innerText = s.puan;
    });

    socket.on('awayScore', (s) => {
        awayScore.innerText = s.puan;
    });

    socket.on('index', (i, users) => {
        document.getElementById('scoreboard').classList.remove('d-none');

        let uname1 = '';
        let uname2 = '';

        if (users[Object.keys(users)[0]].uname) {
            uname1 = users[Object.keys(users)[0]].uname;
        }

        if (users[Object.keys(users)[1]].uname) {
            uname2 = users[Object.keys(users)[1]].uname;
        }

        if (i == 0) {
            document.getElementById('homeScore').classList.add('strong');
            document.getElementById('homeLabel').innerHTML = '<strong>Home (' + (uname1 ? 'You: ' + uname1 : 'You') + '): </strong>';
            document.getElementById('awayLabel').innerHTML = 'Away (' + (uname2 ? uname2 : '?') + '):';
        } else {
            document.getElementById('awayScore').classList.add('strong');
            document.getElementById('homeLabel').innerHTML = 'Home (' + (uname1 ? uname1 : '?') + '):';
            document.getElementById('awayLabel').innerHTML = '<strong>Away (' + (uname2 ? 'You: ' + uname2 : 'You') + '): </strong>';
        }

        // awayScore.innerText = s.puan;
    });

    // // Oyun başladığında yeni cümleleri işleme
    // socket.on('yeniCumle', (cumle) => {
    //     console.log('Yeni Cümle:', cumle);
    //     // Kullanıcılar burada cümleyi çevirmek için bir arayüz ekleyebilirler

    //     // // Örnek cevap gönderme
    //     // const kullaniciCevabi = "The quick brown fox jumps over the lazy dog."; // Kullanıcının cevabını burada alın
    //     // socket.emit('cevapKontrol', kullaniciCevabi);
    // });


    socket.on('cumleler', (result, lang1, lang2) => {
        // let result = JSON.parse(xhr.response);
        // content = result.en;
        // sentences = content.replace(/([.?!])\s*(?=[A-Z])/g, "$1|").split("|");
        result.forEach((r, i) => {
            words["sentence" + i] = {
                valid: r[lang2].trim().replace(/\s\s+/g, ' ').split(" "),
                invalid: shuffle(r[lang2].trim().replace(/\s\s+/g, ' ').split(" ")),
                lang2: r[lang1].trim().replace(/\s\s+/g, ' ')
            };
        });

        init();
    });





    // Oyun bittiğinde
    socket.on('oyunBitti', (oyunSonuPuani) => {
        // console.log('Oyun Bitti');
        puanGuncelle(oyunSonuPuani.kullanici1);
        // Kullanıcılar burada oyunun sona erdiğini gösterebilirler
    });











});
