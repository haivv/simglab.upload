require('dotenv').config(); //load environment parameters from .env file
var express = require('express');
var router = express.Router();
const IP = require('ip'); //get server ip
var requestIp = require('request-ip');//get client ip

var database = require('../database');
const crypto = require('crypto');
const jwt = require('jsonwebtoken');
const fs = require('fs');

const cheerio = require('cheerio'); // to handle HTML string

/* GET home page. */
router.get('/', function (req, res, next) {
	console.log("Index page");
	res.render('publication/index');
});

router.get('/contactus', function (req, res, next) {
	console.log("Index page");
	res.render('publication/contact-us', { mess: '' });
});


router.post('/contactus-proAdd', (req, res) => {
	var today = new Date();
	var year = today.getFullYear();
	var month = ('0' + (today.getMonth() + 1)).slice(-2);
	var day = ('0' + today.getDate()).slice(-2);

	var dateString = year + '-' + month + '-' + day;


	const { txtname, txtemail, txtphone, txtcompany, txtsubject, txtmessage } = req.body;
	// console.log(pro_content);

	var sql = `
				INSERT INTO contact_form
				(contact_form_name, contact_form_email, contact_form_phone,contact_form_company, contact_form_subject, contact_form_message, contact_form_date )
				VALUES (?,?,?,?,?,?,?)`;
	// res.send(sql);
	database.query(sql, [txtname, txtemail, txtphone, txtcompany, txtsubject, txtmessage, dateString], function (error) {
		if (error) {
			throw error;
		}
		else {
			res.redirect('publication/contactus-add');
		}
	});




	// 		}
	// 	});
	// } catch (error) {
	// 	//res.send('Login fail');
	// 	res.status(400).json({ message: 'Login fail' });
	// }

});

router.get('/slide-show/:slideshow_id', (req, res) => {
	console.log("Index page");
	var slideshow_id = req.params.slideshow_id;

	var sql = `SELECT * FROM slideshow WHERE slideshow_id= "${slideshow_id}"`;

	database.query(sql, function (error, dataSlideShow) {
		if (error) {
			throw error;
		}
		else {
			var listimg = dataSlideShow[0].slideshow_img;
			//console.log("test");
			// Sử dụng cheerio để load đoạn mã HTML
			const $ = cheerio.load(listimg);

			// Mảng để lưu trữ các giá trị của thuộc tính src
			let srcValues = [];

			// Lặp qua từng thẻ img và lấy giá trị của thuộc tính src
			$('img').each(function (index, element) {
				let src = $(element).attr('src');
				srcValues.push(src);
			});

			// // Chuyển mảng srcValues thành đối tượng JSON
			// let jsonOutput = JSON.stringify(srcValues);
			// // In ra màn hình
			// console.log(jsonOutput);
			// res.send(jsonOutput);

			res.render('publication/slide-show', { srcValues: srcValues });

			// Send to get-slider
			//res.locals.slideshowHtml = $.html(); // Lưu nội dung HTML vào biến locals

			
			//next();
		}
	});

	//res.render('publication/slide-show', {mess:'Slide-show'});
});

// Route handler cho /contactus
router.get('/get-slider', (req, res) => {
    // Render trang contactus và nhúng nội dung từ slideshowHtml
    res.render('publication/get-slider', { slideshowHtml: res.locals.slideshowHtml });
});



module.exports = router;
