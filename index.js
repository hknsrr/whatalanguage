try {

    const express = require('express');
    const app = express();
    const bodyParser = require('body-parser');
    const jwt = require('jsonwebtoken');
    const dotenv = require('dotenv');
    const bcrypt = require('bcryptjs');

    const http = require('http');
    const server = http.createServer(app);

    const { Server } = require("socket.io");
    const io = new Server(server);

    const PORT = process.env.PORT || 3000;
    const isProd = false;

    if (!isProd) {
        // LOCAL
        server.listen(PORT, () => {
            console.log(`Example app listening at http://localhost:${PORT}`);
        });
    } else {
        // PROD
        server.listen(() => {
            console.log(`Example, app listening at https://whatalanguage.com`);
        });
    }


    let cookies = require("cookie-parser");
    dotenv.config();
    app.use(cookies());

    let mysql = require('mysql');
    let con;

    // con = mysql.createConnection({
    //     host: "your_host_ip",
    //     user: "db_user_name",
    //     password: "db_pass",
    //     database: "db_name"
    // });

    con = mysql.createPool({
        host: "your_host_ip",
        user: "db_user_name",
        password: "db_pass",
        database: "db_name"
    });

    con.getConnection(function (err, con) {
        con.query("SELECT 1 FROM users limit 1", function (err, rows) {
            con.release();
        });
    });

    // setInterval(function () {
    //     con.query("SELECT 1 FROM users limit 1", function (err, rows) {
    //         try {
    //             if (err) console.log(err);
    //         } catch (error) {
    //             console.log(error);
    //         }
    //     });
    // }, 10000);

    // const path = require('path');

    app.use('/', express.static('anksc'));
    app.use('/styles', express.static('anksc/styles'));
    app.use('/scripts', express.static('anksc/scripts'));
    app.use('/images', express.static('anksc/images'));

    app.use(bodyParser.urlencoded({ extended: false }));

    app.use((req, res, next) => {
        res.header('Cache-Control', 'no-cache, private, no-store, must-revalidate, max-stale=0, post-check=0, pre-check=0');
        next();
    });

    if (isProd) {
        // PROD
        app.enable('trust proxy');
        app.use(function (request, response, next) {

            // if (process.env.NODE_ENV != 'development' && !request.secure) {
            //     return response.redirect("https://" + request.headers.host + request.url);
            //  }

            if (!request.secure) {
                return response.redirect("https://" + request.headers.host + request.url);
            }

            next();
        })
    }

    function isEqualArrays(a, b) {
        return a.length === b.length && a.every((v, i) => v === b[i]);
    }

    let verifiedUser;
    let token;
    app.get('/', function (req, res) {

        try {

            token = req.cookies.tokenwalang;

            if (req.cookies.tokenwalang)
                verifiedUser = jwt.verify(req.cookies.tokenwalang, process.env.TOKEN_SECRET_KEY);

            res.sendFile('./anksc/pages/index.html', { root: __dirname });

        } catch (error) {
            console.log(error);
        }

    });

    app.get('/cookie-policy', function (req, res) {

        try {
            res.sendFile('./anksc/pages/cookie-policy/index.html', { root: __dirname });

        } catch (error) {
            console.log(error);
        }

    });

    app.get('/training', function (req, res) {

        try {

            token = req.cookies.tokenwalang;

            if (req.cookies.tokenwalang)
                verifiedUser = jwt.verify(req.cookies.tokenwalang, process.env.TOKEN_SECRET_KEY);

            res.sendFile('./anksc/pages/training/index.html', { root: __dirname });

        } catch (error) {
            console.log(error);
        }

    });

    app.get('/match', function (req, res) {

        try {

            token = req.cookies.tokenwalang;

            if (req.cookies.tokenwalang)
                verifiedUser = jwt.verify(req.cookies.tokenwalang, process.env.TOKEN_SECRET_KEY);

            res.sendFile('./anksc/pages/match/index.html', { root: __dirname });

        } catch (error) {
            console.log(error);
        }

    });

    app.get('/login', function (req, res) {

        try {

            if (!req.cookies.tokenwalang) {
                res.sendFile('./anksc/pages/login/index.html', { root: __dirname });
            } else {
                if (verifiedUser) {
                    res.status(200).redirect('/');
                } else {
                    res.sendFile('./anksc/pages/login/index.html', { root: __dirname });
                }
            }
        } catch (error) {
            res.sendFile('./anksc/pages/login/index.html', { root: __dirname });
        }

    });

    app.get('/register', function (req, res) {

        try {

            if (!req.cookies.tokenwalang) {
                res.sendFile('./anksc/pages/register/index.html', { root: __dirname });
            } else {
                if (verifiedUser) {
                    res.status(200).redirect('/');
                } else {
                    res.sendFile('./anksc/pages/register/index.html', { root: __dirname });
                }
            }

        } catch (error) {
            res.sendFile('./anksc/pages/register/index.html', { root: __dirname });
        }

    });

    app.get('/logout', function (req, res) {

        try {
            res.cookie('tokenwalang', '', { maxAge: 0 });
            verifiedUser = undefined;
            token = undefined;
            res.status(200).redirect('/');
        } catch (error) {
            console.log(error);
        }

    });

    app.get('/islogged', function (req, res) {

        try {
            if (req.cookies.tokenwalang) {
                res.json({ isLogged: true });
            } else {
                res.json({ isLogged: false });
            }
        } catch (error) {
            console.log(error);
        }

    });

    app.post('/content', function (req, res) {

        try {

            const lang1 = req.body.lang1;
            const lang2 = req.body.lang2;
            const level = req.body.level;

            con.query(`SELECT ${lang1}, ${lang2} FROM content1 where level = ${level} order by rand()`, [lang1, lang2, level], function (err, rows) {

                if (err) console.log(err);

                if (rows && rows.length > 0) {
                    // console.log(rows);
                    res.json(rows);
                }
            });
        } catch (error) {
            console.log(error);
        }

    });

    app.get('/iscookie', function (req, res) {

        try {
            if (req.cookies.cookiepolicy) {
                res.json({ isCookie: true });
            } else {
                res.json({ isCookie: false });
            }
        } catch (error) {
            console.log(error);
        }

    });

    app.post('/iscookie', function (req, res) {

        try {
            res.cookie('cookiepolicy', true, { maxAge: 365 * 24 * 60 * 60 * 1000, httpOnly: true, sameSite: 'strict', secure: true });
            res.status(200).end();
        } catch (error) {
            console.log(error);
        }

    });

    app.post('/login', (req, res) => {

        try {

            const uname = req.body.uname;
            const pass = req.body.pass;

            if (uname.length > 25 || pass.length > 25) {
                return res.status(401).send('Somethings went wrong!');
            }

            con.query("SELECT * FROM users WHERE uname = ?", [uname], function (err, rows) {
                if (err) console.log(err);

                if (rows && rows.length > 0) {

                    bcrypt.compare(pass, rows[0].pass, function (err, verify) {
                        if (verify) {

                            const userData = { uname: uname }

                            let token = jwt.sign(userData, process.env.TOKEN_SECRET_KEY);

                            res.cookie('tokenwalang', token, { maxAge: 365 * 24 * 60 * 60 * 1000, httpOnly: true, sameSite: 'strict', secure: true });

                            if (req.cookies.tempUrl)
                                return res.status(200).redirect('/' + req.cookies.tempUrl);

                            return res.status(200).redirect('/');

                        } else {
                            return res.status(401).send('User name or password is wrong!');
                        }
                    });

                } else {
                    return res.status(401).send('User name or password is wrong!');
                }

            });

        } catch (error) {
            console.log(error);
        }

    });

    app.post('/register', (req, res) => {

        try {

            const uname = req.body.uname;
            const pass = req.body.pass;
            const passConfirm = req.body.passConfirm;

            if (pass !== passConfirm) {
                return res.status(401).json(
                    {
                        text: 'Passwords are not same!',
                        type: 5
                    }
                );
            }

            if (pass == '' || passConfirm == '') {
                return res.status(401).json(
                    {
                        text: 'Passwords are required!',
                        type: 5
                    }
                );
            }

            if (uname.length < 4) {
                return res.status(401).json(
                    {
                        text: 'Please use different user name!',
                        type: 4
                    }
                );
            }


            let passScore = 0;

            if (pass.length > 4) {
                passScore++;
            } else {
                return res.status(401).json(
                    {
                        text: 'Please make strong your password: at least 5 characters are required..',
                        type: 5
                    }
                );
            }

            if ((pass.match(/[a-z]/))) {
                passScore++;
            } else {
                return res.status(401).json(
                    {
                        text: 'lowercase character is required..',
                        type: 5
                    }
                );
            }

            if ((pass.match(/[A-Z]/))) {
                passScore++;
            } else {
                return res.status(401).json(
                    {
                        text: 'Uppercase character is required..',
                        type: 5
                    }
                );
            }

            if (pass.match(/[0-9]/)) {
                passScore++;
            } else {
                return res.status(401).json(
                    {
                        text: 'Number character is required..',
                        type: 5
                    }
                );
            }

            // if (pass.match(/.[.,!,@,#,$,%,^,&,*,?,_,~,(\-),(,)]/)) {
            //     passScore++;
            // } else {
            //     return res.status(401).json(
            //         {
            //             text: 'Non-alphanumeric character is required.. For example: ( . , ! @ # $ % ^ & * ? _ ~ )',
            //             type: 5
            //         }
            //     );
            // }

            if (passScore < 3) {
                return res.status(401).json(
                    {
                        text: 'Please make strong your password: lowercase, uppercase, number, non-alphanumeric characters are required..',
                        type: 5
                    }
                );
            }

            if (uname.length > 25 || pass.length > 25 || passConfirm.length > 25) {
                return res.status(401).json(
                    {
                        text: 'Somethings went wrong!',
                        type: 0
                    }
                );
            }

            con.query("SELECT * FROM users WHERE uname = ?", [uname], function (err, rows) {

                if (err) console.log(err);

                if (rows && rows.length > 0) {

                    return res.status(401).json(
                        {
                            text: 'User name is exist!',
                            type: 4
                        }
                    );

                } else {

                    bcrypt.genSalt(10, function (error, salt) {
                        bcrypt.hash(pass, salt, function (error, hash) {
                            con.escape()
                            let sql = `INSERT INTO users (uname, pass, cdate) VALUES (?, ?, ?)`;
                            con.query(sql, [uname, hash, new Date()], function (err, result) {
                                if (err) console.log(err);

                                const uid = result['insertId'];

                                // console.log(uid);

                                let sql2 = `INSERT INTO tr (uname, uid) VALUES (?, ?)`;
                                con.query(sql2, [uname, uid], function (err, result) {
                                    if (err) console.log(err);
                                });

                                let sql3 = `INSERT INTO en (uname, uid) VALUES (?, ?)`;
                                con.query(sql3, [uname, uid], function (err, result) {
                                    if (err) console.log(err);
                                });

                                let sql4 = `INSERT INTO fr (uname, uid) VALUES (?, ?)`;
                                con.query(sql4, [uname, uid], function (err, result) {
                                    if (err) console.log(err);
                                });

                                let sql5 = `INSERT INTO de (uname, uid) VALUES (?, ?)`;
                                con.query(sql5, [uname, uid], function (err, result) {
                                    if (err) console.log(err);
                                });

                                let sql6 = `INSERT INTO es (uname, uid) VALUES (?, ?)`;
                                con.query(sql6, [uname, uid], function (err, result) {
                                    if (err) console.log(err);
                                });

                                let sql7 = `INSERT INTO it (uname, uid) VALUES (?, ?)`;
                                con.query(sql7, [uname, uid], function (err, result) {
                                    if (err) console.log(err);
                                });

                                let sql8 = `INSERT INTO fa (uname, uid) VALUES (?, ?)`;
                                con.query(sql8, [uname, uid], function (err, result) {
                                    if (err) console.log(err);
                                });

                                const userData = { uname: uname }

                                let token = jwt.sign(userData, process.env.TOKEN_SECRET_KEY);

                                res.cookie('tokenwalang', token, { maxAge: 365 * 24 * 60 * 60 * 1000, httpOnly: true, sameSite: 'strict', secure: true }); // 1week
                                res.status(200).redirect('/');
                            });


                        });
                    });



                }
            });

        } catch (error) {
            console.log(error);
        }

    });







    // Örnek cümleler
    const sentences = [
        "The quick brown fox jumps over the lazy dog.",
        "I love programming in JavaScript.",
        "Socket.io makes real-time apps easy.",
        // Diğer cümleler...
    ];

    // Kullanıcı verilerini saklamak için bir nesne oluşturun
    const users = {};

    // Oda bilgilerini saklamak için bir nesne oluşturun
    const odalar = {};




    io.on('connection', (socket) => {

        try {




            // Oyuncu bir odaya katıldığında
            socket.on('odaKatil', (odaAdi, lang1, lang2, level, questionCount) => {
     
                // Oda kontrolü yap
                if (!odalar[odaAdi]) {
                    // Oda henüz oluşturulmamışsa, oluştur
                    odalar[odaAdi] = {
                        questionCount: questionCount,
                        oyuncuSayisi: 1, // Oda şu anda 1 oyuncu içeriyor
                    };
                    socket.join(odaAdi); // Odaya katılma işlemini gerçekleştir
                    odalar[odaAdi].lang1 = lang1;
                    odalar[odaAdi].lang2 = lang2;
                    odalar[odaAdi].level = level;

                    // console.log(odalar);
                } else if (odalar[odaAdi].oyuncuSayisi < 2) {
                    // Oda dolu değilse, oyuncu sayısını artır ve odaya katıl
                    odalar[odaAdi].oyuncuSayisi++;
                    socket.join(odaAdi);
                    // Diğer oyuncuya "digerOyuncuBaglandi" mesajı gönder
                    const socketler = Array.from(socket.adapter.rooms.get(odaAdi));
                    const digerKullaniciSocket = socketler.find(socketID => socketID !== socket.id);

                    socket.emit('digerOyuncuBaglandi', socketler.indexOf(socket.id), users);
                    io.to(digerKullaniciSocket).emit('digerOyuncuBaglandi', socketler.indexOf(digerKullaniciSocket), users);
                } else {
                    // Oda doluysa, oda dolu mesajı gönder
                    socket.emit('odaDolu', 'Oda dolu, başka bir odayı deneyin.');
                    return;
                }

                // Kullanıcı verilerini başlat
                if (!users[socket.id]) {
                    users[socket.id] = {
                        currentSentenceIndex: 0, // Kullanıcının şu anki cümlenin dizinini takip eder
                        puan: 0, // Kullanıcının puanını saklar
                        hazir: false, // Kullanıcının hazır durumu
                    };

                    if (token) {

                        verifiedUser = jwt.verify(token, process.env.TOKEN_SECRET_KEY);
                        users[socket.id].uname = verifiedUser.uname;
                    }
                }

                // // Start butonuna tıklanınca oyunu başlatma
                // socket.on('oyunBaslat', () => {
                //     console.log('USERS', users);
                //     const currentUser = users[socket.id];
                //     // İlk cümleyi gönder
                //     const ilkCümle = sentences[currentUser.currentSentenceIndex];
                //     io.to(odaAdi).emit('yeniCumle', ilkCümle);
                // });

                // Oyuncu sayfadan çıktığında
                socket.on('disconnect', () => {
                    if (odaAdi && odalar[odaAdi]) {
                        odalar[odaAdi].oyuncuSayisi--;

                        // Oyuncuyu odayı eşleştirmekten çıkar
                        socket.leave(odaAdi);

                        // Oyuncuyu kullanıcı verilerinden sil
                        delete users[socket.id];
                        

                        // Eğer oda boşsa, odayı kaldır
                        if (odalar[odaAdi].oyuncuSayisi === 0) {
                            delete odalar[odaAdi];
                        } 
                        else if (!odalar[odaAdi].gameStarted && odalar[odaAdi].oyuncuSayisi === 1) {
                            const socketler = Array.from(socket.adapter.rooms.get(odaAdi));
                            io.to(socketler[0]).emit('digerOyuncuAyrildi');
                        }
                        else {

                            const socketler = Array.from(socket.adapter.rooms.get(odaAdi));
                            io.to(socketler[0]).emit('win');
                        }
                    }


                });


                socket.on('changeQuestionCount', (value) => {
                    odalar[odaAdi].questionCount = value;
                    io.to(odaAdi).emit('changeQuestionCount', odalar[odaAdi].questionCount);
                });

                // Hazır olduğunu belirten mesajı alın
                socket.on('hazirOl', () => {
                    const currentUser = users[socket.id];
                    // Kullanıcının hazır durumunu güncelle
                    currentUser.hazir = true;


                    const socketler = Array.from(socket.adapter.rooms.get(odaAdi));
                    const digerKullaniciSocket = socketler.find(socketID => socketID !== socket.id);

                    if (users[socketler[0]].hazir && socketler[1] && users[socketler[1]].hazir) {
                        io.to(odaAdi).emit('oyunBasladi', odalar[odaAdi].questionCount);
                        odalar[odaAdi].gameStarted = true;

                        // console.log('USERS', users);

                        // socket.emit('index', socketler.findIndex(socket));

                        

                        socket.emit('index', socketler.indexOf(socket.id), users);
                        io.to(digerKullaniciSocket).emit('index', socketler.indexOf(digerKullaniciSocket), users);


                        // con.query(`SELECT ${lang1}, ${lang2} FROM content1 where level = ${level} order by rand() limit 10`, [lang1, lang2, level], function (err, rows) {

                        //     if (err) console.log(err);

                        //     if (rows && rows.length > 0) {
                        //         // console.log(rows);
                        //         // res.json(rows);
                        //         io.to(odaAdi).emit('cumleler', rows);
                        //     }
                        // });


                        // con.query(`SELECT en, tr FROM content1 where level = 1 order by rand() limit 2`, function (err, rows) {

                        //     if (err) console.log(err);

                        //     if (rows && rows.length > 0) {
                        //         // console.log(rows);
                        //         io.to(odaAdi).emit('cumleler', rows);
                        //     }
                        // });

                        const lang1 = odalar[odaAdi].lang1;
                        const lang2 = odalar[odaAdi].lang2;
                        const level = odalar[odaAdi].level;
                        const questionCount = odalar[odaAdi].questionCount;

                        con.query(`SELECT ${lang1}, ${lang2} FROM content1 where level = ${level} order by rand() limit ${questionCount}`, [lang1, lang2, level, questionCount], function (err, rows) {

                            if (err) console.log(err);

                            if (rows && rows.length > 0) {
                                // console.log(rows);
                                io.to(odaAdi).emit('cumleler', rows, lang1, lang2);
                            }
                        });





                    } else {
                        io.to(digerKullaniciSocket).emit('digerOyuncuHazir');
                    }


                });



                // cevapKontrol
                socket.on('cevapKontrol', (cevap, check) => {
                    if (isEqualArrays(cevap, check)) {

                        const currentUser = users[socket.id];
                        currentUser.puan++;


                        const socketler = Array.from(socket.adapter.rooms.get(odaAdi));
                        const digerKullaniciSocket = socketler.find(socketID => socketID !== socket.id);

                        io.to(odaAdi).emit('homeScore', users[socketler[0]]);
                        io.to(odaAdi).emit('awayScore', users[socketler[1]]);

                        if (currentUser.puan == odalar[odaAdi].questionCount) {




                            if (currentUser.uname) {

                                // verifiedUser = jwt.verify(token, process.env.TOKEN_SECRET_KEY);
                                con.query("UPDATE users SET  win = win + 1 WHERE uname = ?", [currentUser.uname], function (err, rows) {
                                    if (err) throw err;
                                });
                            }

                            if (users[digerKullaniciSocket].uname) {

                                verifiedUser = jwt.verify(token, process.env.TOKEN_SECRET_KEY);
                                con.query("UPDATE users SET  lose = lose + 1 WHERE uname = ?", [users[digerKullaniciSocket].uname], function (err, rows) {
                                    if (err) throw err;
                                });
                            }





                            socket.emit('win');
                            // io.to(odaAdi).emit('lose');
                            io.to(digerKullaniciSocket).emit('lose');
                        } else {
                            socket.emit('devamEt');
                        }
                    }
                });

                // Cümlenin doğru çevirildiğini kontrol etme
                // socket.on('cevapKontrol', (cevap) => {
                //     const currentUser = users[socket.id];
                //     const dogruCevap = sentences[currentUser.currentSentenceIndex];
                //     if (cevap === dogruCevap) {
                //         // Doğru cevap verildi, kullanıcının puanını artır
                //         currentUser.puan++;

                //         const socketler = Array.from(socket.adapter.rooms.get(odaAdi));
                //         const digerKullaniciSocket = socketler.find(socketID => socketID !== socket.id);
                //         if (digerKullaniciSocket) {
                //             const digerKullanici = users[digerKullaniciSocket];
                //             digerKullanici.puan++;
                //             io.to(odaAdi).emit('genelMesaj', {
                //                 mesaj: `${socket.id} doğru cevap verdi! Puanlar: ${socket.id}: ${currentUser.puan}, ${digerKullaniciSocket}: ${digerKullanici.puan}`
                //             });
                //         }

                //         // Bir sonraki cümleyi gönder
                //         currentUser.currentSentenceIndex++;
                //         if (currentUser.currentSentenceIndex < sentences.length) {
                //             const yeniCümle = sentences[currentUser.currentSentenceIndex];
                //             io.to(odaAdi).emit('yeniCumle', yeniCümle);
                //         } else {
                //             // Tüm cümleler tamamlandı, oyunu bitir
                //             io.to(odaAdi).emit('oyunBitti', {
                //                 kullanici1: currentUser.puan,
                //                 kullanici2: digerKullanici.puan,
                //             });
                //         }
                //     }
                // });








            });







            if (token)
                verifiedUser = jwt.verify(token, process.env.TOKEN_SECRET_KEY);
            else
                verifiedUser = undefined;


            socket.on('gu', () => {

                try {


                    con.query("SELECT uname, win, lose, (win - lose) AS fark FROM users ORDER BY fark desc", function (err, rows) {

                        if (err) console.log(err);

                        // console.log(rows, verifiedUser);

                        // console.log(rows);


                        if (rows) {

                            if (rows && rows.length > 0) {

                                io.to(socket.id).emit('users', rows, verifiedUser ? verifiedUser.uname : null);

                            } else {

                                io.to(socket.id).emit('users', rows, null);
                            }

                        }

                    });

                } catch (error) {
                    console.log(error);
                }

            });

            // getTooltip
            socket.on('gt', (uname) => {

                try {

                    // getTooltip(uname);

                    con.query("SELECT uname, win, lose FROM users WHERE uname = ?", [uname], function (err, rows) {

                        io.to(socket.id).emit('userLevel', rows);
                    });


                } catch (error) {
                    console.log(error);
                }

            });

            function getTooltip(uname) {
                const query = "select z.* from \
                ( \
                select u.uname, u.score, l.level1, l.level2, l.level3, l.level4, l.level5 from users u inner join en l on u.id = l.uid where u.uname = ? \
                union \
                select u.uname, u.score, l.level1, l.level2, l.level3, l.level4, l.level5 from users u inner join tr l on u.id = l.uid where u.uname = ? \
                union \
                select u.uname, u.score, l.level1, l.level2, l.level3, l.level4, l.level5 from users u inner join fr l on u.id = l.uid where u.uname = ? \
                union \
                select u.uname, u.score, l.level1, l.level2, l.level3, l.level4, l.level5 from users u inner join de l on u.id = l.uid where u.uname = ? \
                union \
                select u.uname, u.score, l.level1, l.level2, l.level3, l.level4, l.level5 from users u inner join es l on u.id = l.uid where u.uname = ? \
                union \
                select u.uname, u.score, l.level1, l.level2, l.level3, l.level4, l.level5 from users u inner join it l on u.id = l.uid where u.uname = ? \
                union \
                select u.uname, u.score, l.level1, l.level2, l.level3, l.level4, l.level5 from users u inner join fa l on u.id = l.uid where u.uname = ? \
                ) \
                as z;";

                con.query(query, [uname, uname, uname, uname, uname, uname, uname], function (err, rows) {
                    // console.log(rows);
                    if (rows) {
                        if (rows[0])
                            io.to(socket.id).emit('usersenlevel', rows[0]);
                        if (rows[1])
                            io.to(socket.id).emit('userstrlevel', rows[1]);
                        if (rows[2])
                            io.to(socket.id).emit('usersfrlevel', rows[2]);
                        if (rows[3])
                            io.to(socket.id).emit('usersdelevel', rows[3]);
                        if (rows[4])
                            io.to(socket.id).emit('userseslevel', rows[4]);
                        if (rows[5])
                            io.to(socket.id).emit('usersitlevel', rows[5]);
                        if (rows[6])
                            io.to(socket.id).emit('usersfalevel', rows[6]);
                    }
                });
            }

            // setPoint
            socket.on('sp', (score, level, lang2, lang1) => {

                try {
                    console.log(verifiedUser, 'verified?');
                    if (verifiedUser) {

                        con.query(`SELECT * FROM ${lang2} WHERE uname = ?`, [verifiedUser.uname], function (err, rows) {

                            if (err) console.log(err);

                            // console.log(rows.length > 0, rows[0]['level' + level], score);

                            if (rows.length > 0 && rows[0]['level' + level] < score) {

                                con.query(`UPDATE ${lang2} SET level${level} = ? WHERE uname = ?`, [score, verifiedUser.uname], function (err, rows) {

                                    let totalPointLang1 = 0;
                                    let totalPointLang2 = 0;
                                    let totalPointLang3 = 0;
                                    let totalPointLang4 = 0;
                                    let totalPointLang5 = 0;
                                    let totalPointLang6 = 0;
                                    let totalPointLang7 = 0;

                                    const query = "select z.* from \
                                ( \
                                select * from en u where u.uname = ? \
                                union \
                                select * from tr u where u.uname = ? \
                                union \
                                select * from fr u where u.uname = ? \
                                union \
                                select * from de u where u.uname = ? \
                                union \
                                select * from es u where u.uname = ? \
                                union \
                                select * from it u where u.uname = ? \
                                union \
                                select * from fa u where u.uname = ? \
                                ) \
                                as z;";

                                    con.query(query, [verifiedUser.uname, verifiedUser.uname, verifiedUser.uname, verifiedUser.uname, verifiedUser.uname, verifiedUser.uname, verifiedUser.uname], function (err, rows) {

                                        if (rows) {
                                            if (rows[0]) {
                                                const level1 = rows[0]['level1'];
                                                const level2 = rows[0]['level2'];
                                                const level3 = rows[0]['level3'];
                                                const level4 = rows[0]['level4'];
                                                const level5 = rows[0]['level5'];

                                                totalPointLang1 = level1 * 0.1 + level2 * 0.3 + level3 * 0.5 + level4 * 0.7 + level5 * 0.9;
                                            }
                                            if (rows[1]) {
                                                const level1 = rows[1]['level1'];
                                                const level2 = rows[1]['level2'];
                                                const level3 = rows[1]['level3'];
                                                const level4 = rows[1]['level4'];
                                                const level5 = rows[1]['level5'];

                                                totalPointLang2 = level1 * 0.1 + level2 * 0.3 + level3 * 0.5 + level4 * 0.7 + level5 * 0.9;
                                            }

                                            if (rows[2]) {
                                                const level1 = rows[2]['level1'];
                                                const level2 = rows[2]['level2'];
                                                const level3 = rows[2]['level3'];
                                                const level4 = rows[2]['level4'];
                                                const level5 = rows[2]['level5'];

                                                totalPointLang3 = level1 * 0.1 + level2 * 0.3 + level3 * 0.5 + level4 * 0.7 + level5 * 0.9;
                                            }

                                            if (rows[3]) {
                                                const level1 = rows[3]['level1'];
                                                const level2 = rows[3]['level2'];
                                                const level3 = rows[3]['level3'];
                                                const level4 = rows[3]['level4'];
                                                const level5 = rows[3]['level5'];

                                                totalPointLang4 = level1 * 0.1 + level2 * 0.3 + level3 * 0.5 + level4 * 0.7 + level5 * 0.9;
                                            }

                                            if (rows[4]) {
                                                const level1 = rows[4]['level1'];
                                                const level2 = rows[4]['level2'];
                                                const level3 = rows[4]['level3'];
                                                const level4 = rows[4]['level4'];
                                                const level5 = rows[4]['level5'];

                                                totalPointLang5 = level1 * 0.1 + level2 * 0.3 + level3 * 0.5 + level4 * 0.7 + level5 * 0.9;
                                            }

                                            if (rows[5]) {
                                                const level1 = rows[5]['level1'];
                                                const level2 = rows[5]['level2'];
                                                const level3 = rows[5]['level3'];
                                                const level4 = rows[5]['level4'];
                                                const level5 = rows[5]['level5'];

                                                totalPointLang6 = level1 * 0.1 + level2 * 0.3 + level3 * 0.5 + level4 * 0.7 + level5 * 0.9;
                                            }

                                            if (rows[6]) {
                                                const level1 = rows[6]['level1'];
                                                const level2 = rows[6]['level2'];
                                                const level3 = rows[6]['level3'];
                                                const level4 = rows[6]['level4'];
                                                const level5 = rows[6]['level5'];

                                                totalPointLang7 = level1 * 0.1 + level2 * 0.3 + level3 * 0.5 + level4 * 0.7 + level5 * 0.9;
                                            }
                                        }

                                        const totalPoint = parseFloat(totalPointLang1) + parseFloat(totalPointLang2) + parseFloat(totalPointLang3) + parseFloat(totalPointLang4) + parseFloat(totalPointLang5) + parseFloat(totalPointLang6) + parseFloat(totalPointLang7);
                                        con.query("UPDATE users SET score = ? WHERE uname = ?", [totalPoint, verifiedUser.uname], function (err, rows) {
                                            io.to(socket.id).emit('clearlevels');
                                            getTooltip(verifiedUser.uname);
                                        });


                                    });

                                });

                            }
                        })

                    }
                } catch (error) {
                    console.log(error);
                }

            });


        } catch (error) {
            console.log(error);
        }


    });

} catch (error) {
    console.log(error);
}
