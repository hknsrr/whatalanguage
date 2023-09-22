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
// let btnCloseRestartPopup = document.getElementById('js-btn-close-restart-popup');

var resultDiv = document.getElementById("result");
var wordsDiv = document.getElementById("words");
// var pointSpan = document.getElementById("point");
// var scoreSpan = document.getElementById("score");
var progressBar = document.getElementById("progressBar");
var popupGameOver = document.getElementById("popupGameOver");
var popupStart = document.getElementById("popupStart");
var btnSwap = document.getElementById("btnSwap");
var btnStart = document.getElementById("btnStart");
var btnRestart = document.getElementById("btnRestart");
var btnNext = document.getElementById("btnNext");
var btnAnswer = document.getElementById("btnAnswer");
var btnCloseTooltip = document.getElementById("btnCloseTooltip");

var paper = document.getElementById("paper");
// var currentScoreWrapper = document.getElementById("currentScoreWrapper");
// var currentScore = document.getElementById("currentScore");

var level = document.getElementById("level");
var lang1 = document.getElementById("lang1");
var lang2 = document.getElementById("lang2");

lang1.value = localStorage.getItem('lang1') || lang1[0].value;
lang2.value = localStorage.getItem('lang2') || lang2[1].value;
level.value = localStorage.getItem('level') || 1;

var login = document.getElementById("login");
var logout = document.getElementById("logout");
var signup = document.getElementById("signup");
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

window.addEventListener("load", function () {

    onChangeLang();
    onChangeLevel();

    socket = io();

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

    // btnCloseRestartPopup.addEventListener('click', function () {
    //     if (popupGameOver.classList.contains('minimize')) {
    //         popupGameOver.classList.remove('minimize');
    //     } else {
    //         popupGameOver.classList.add('minimize');
    //     }
    // });

    rankingList.addEventListener('click', function (e) {
        if (e.target.tagName === 'LI') {
            openTooltip(e);
        }
    });

    level.addEventListener('change', function () {
        onChangeLevel();
    });

    lang1.addEventListener('change', function () {
        onChangeLang();
    });

    lang2.addEventListener('change', function () {
        onChangeLang();
    });

    btnSwap.addEventListener('click', function () {
        swapLang();
    });

    btnStart.addEventListener('click', function () {
        start();
    });

    btnRestart.addEventListener('click', function () {
        restart();
    });

    btnNext.addEventListener('click', function () {
        next();
    });

    btnAnswer.addEventListener('click', function () {
        answer();
    });

    btnCloseTooltip.addEventListener('click', function () {
        closeTooltip();
    });

    btnRank.addEventListener('click', function () {
        closeTooltip();
    });

    socket.emit('gu');

    // ranking list
    socket.on('users', function (players, me) {
        rankingList.innerHTML = "";
        players.forEach(function (p) {
            let li = document.createElement('li');
            li.innerText = p.uname;
            // console.log(p.uname, me);
            if (p.uname == me){
                li.classList.add('me');
            }

            rankingList.appendChild(li);
        });
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

    let currentSentence = '';
    let result = [];

    // let points = 0;
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

        if (player.level1 || player.level2 || player.level3 || player.level4 || player.level5) {

            let li = document.createElement('li');
            li.setAttribute('id', levelWrap);
            // if (lang2.value == level.slice(-2).toLowerCase())
            //     li.setAttribute('class', 'active');
            li.innerHTML = '<span>' + level.slice(-2) + ':</span> \
            <hr> \
            <ul id='+ level + '> \
            </ul>';
            profileList.appendChild(li);

            var level = document.getElementById(level);

            if (player.level1) {
                let li = document.createElement('li');
                li.innerText = 'level1: ' + player.level1;
                level.appendChild(li);
            }

            if (player.level2) {
                let li2 = document.createElement('li');
                li2.innerText = 'level2: ' + player.level2;
                level.appendChild(li2);
            }

            if (player.level3) {
                let li3 = document.createElement('li');
                li3.innerText = 'level3: ' + player.level3;
                level.appendChild(li3);
            }

            if (player.level4) {
                let li4 = document.createElement('li');
                li4.innerText = 'level4: ' + player.level4;
                level.appendChild(li4);
            }

            if (player.level5) {
                let li5 = document.createElement('li');
                li5.innerText = 'level5: ' + player.level5;
                level.appendChild(li5);
            }

        }

        // document.getElementById('totalScore').innerText = player.score;
    }

    function start() {
        if (rankingList.offsetParent)
            btnRank.click();
        closeTooltip();

        popupStart.classList.add('d-none');
        getContent();
    }

    function gameOver() {
        popupGameOver.classList.remove('d-none');
        popupGameOver.classList.add('d-block');
        btnAnswer.classList.remove('d-none');
        isGameOver = true;
        // scoreSpan.innerText = points;
        // clearResult();

        setTimeout(function () {
            console.log('ads');
            window.adBreak({
                type: 'start',
                name: 'restart-game'
            });
        }, 2000);
    }

    var downloadTimer;
    function timer() {
        progressBar.value = 0;
        var timestart = currentSentence.valid.length * 2.25;
        progressBar.max = timestart;
        var timeleft = timestart;

        downloadTimer = setInterval(function () {
            if (timeleft <= 0) {
                clearTimer()
                gameOver();
            }
            timeleft -= 1;
            progressBar.value = timestart - timeleft;
        }, 1000);
    }

    function restart() {
        if (rankingList.offsetParent)
            btnRank.click();
        closeTooltip();
        // currentScore.innerText = '-';
        popupGameOver.classList.add('d-none');
        popupGameOver.classList.remove('d-block');
        // points = 0;
        isGameOver = false;
        clearResult();
        clearTimer();
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
        localStorage.setItem('level', level.value);
    }

    function onChangeLang() {

        localStorage.setItem('lang1', lang1.value);
        localStorage.setItem('lang2', lang2.value);

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

    function clearTimer() {
        clearInterval(downloadTimer);
        downloadTimer = false;
    }

    function init() {

        paper.classList.remove('d-none');
        // currentScoreWrapper.classList.remove('d-none');
        btnNext.classList.add('d-none');
        btnAnswer.classList.add('d-none');

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
            // createPoint();
            timer();
        } else {
            // get new content
            getContent();
        }
    }

    // function createPoint() {
    //     let point = currentSentence.valid.length - 1;
    //     pointSpan.innerText = point;
    //     pointSpan.style.color = 'hsl(' + (200 / point) + ', 100%, 50%)';
    //     pointSpan.style.boxShadow = 'inset 0px 0px 20px 0px ' + pointSpan.style.color;
    // }

    // function setPoint() {
    //     let point = currentSentence.valid.length - 1;
    //     points += point;
    //     // currentScore.innerText = points;
    //     socket.emit('sp', points, level.value, lang2.value, lang1.value);
    // }

    function clearResult() {
        document.getElementById("result").innerHTML = '';
        document.getElementById("words").innerHTML = '';
        // document.getElementById("point").innerText = '';
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
                // setPoint();
                resultDiv.style.color = '#00b700';
                resultDiv.style.textShadow = 'rgb(0 255 88) 1px 1px 20px';
                delete words[Object.keys(words)[0]];
                clearTimer();
                if (!isGameOver) {
                    btnNext.classList.remove('d-none');
                }
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

});
