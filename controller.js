var executeQuery = require('./respon')

 exports.data  = function(req, rs) {
 	var query = "SELECT * FROM bpddiy.dbo.data";
 	executeQuery (rs, query)
 }


//Table Postingan
		exports.postingGet = function(req, rs) {
			var query = "SELECT * FROM bpdlogin.dbo.posting_menu";
			executeQuery (rs, query)
		}

		exports.postingGetbyID = function(req, rs) {
			var query = "SELECT * FROM bpdlogin.dbo.posting_menu WHERE id="+req.params.id;
			executeQuery (rs, query)
		}

		// exports.postingPost = function(req, rs) {
		// 	var query = "INSERT INTO bpdlogin.dbo.posting_menu (judul,deskripsi,tanggal,kategori) VALUES (' " + req.body.judul + " ',' " + req.body.deskripsi + " ',' " + req.body.tanggal + " ', ' " + req.body.kategori + " ') "
		// 	executeQuery (rs, query)
		// }

		// exports.postingPut = function(req, rs) {
		// 	var query = "UPDATE bpdlogin.dbo.posting_menu SET judul= ' " + req.body.judul + " ' , deskripsi= ' " + req.body.deskripsi + " ', tanggal= ' " + req.body.tanggal + " ', kategori= ' " + req.body.kategori + " ' WHERE id= " + req.params.id
		// 	executeQuery (rs, query)
		// 	}

		// exports.postingDelete = function(req, rs) {
		// 	var query = "DELETE FROM bpdlogin.dbo.posting_menu WHERE id=" + req.params.id
		// 	executeQuery (rs, query)
		// 	}

// Tabel Simpanan
		
		exports.simpananGet = function (req, rs) {
			var query  = "SELECT * FROM bpdlogin.dbo.simpanan_menu";
			executeQuery (rs, query)
		}

		exports.simpananGetbyID = function (req, rs) {
			var query  = "SELECT * FROM bpdlogin.dbo.simpanan_menu WHERE id=" +req.params.id;
			executeQuery (rs, query)
		}	

		// exports.simpananPost = function (req, rs) {
		// 	var query  = "INSERT INTO bpdlogin.dbo.simpanan_menu (nama, kategori, deskripsi, image, uploadfile, tanggal) VALUES ('')";
		// 	executeQuery (rs, query)
		// }	
		
		// exports.simpananPut = function (req, rs) {
		// 	var query  = "UPDATE bpdlogin.dbo.simpanan_menu SET nama = ' " + req.body.nama + " ', kategori = ' " + req.body.kategori + " ' , deskripsi = ' " + req.body.deskripsi + " ' , image = ' " + req.body.image + " ' , uploadfile = ' " + req.body.uploadfile + " ' , tanggal = ' " + req.body.tanggal + " ' ";
		// 	executeQuery (rs, query)
		// }

		// exports.simpananDelete = function(req, rs) {
		// 	var query = "DELETE FROM bpdlogin.dbo.simpanan_menu WHERE id=" + req.params.id
		// 	executeQuery (rs, query)
		// 	}

// Tabel Tentang Perusahaan
		
		exports.tentangGet = function (req, rs) {
			var query  = "SELECT * FROM bpdlogin.dbo.tentang_perusahaan";
			executeQuery (rs, query)
		}

		exports.tentangGetbyID = function (req, rs) {
			var query  = "SELECT * FROM bpdlogin.dbo.tentang_perusahaan WHERE id=" +req.params.id;
			executeQuery (rs, query)
		}	

// Tabel Berita
		
		exports.beritaGet = function (req, rs) {
			var query  = "SELECT * FROM bpdlogin.dbo.berita_menu";
			executeQuery (rs, query)
		}

		exports.beritaGetbyID = function (req, rs) {
			var query  = "SELECT * FROM bpdlogin.dbo.berita_menu WHERE id=" +req.params.id;
			executeQuery (rs, query)
		}	

// Tabel Dewan 
		
		exports.dewanGet = function (req, rs) {
			var query  = "SELECT * FROM bpdlogin.dbo.dewan_pimpinan";
			executeQuery (rs, query)
		}

		exports.dewanGetbyID = function (req, rs) {
			var query  = "SELECT * FROM bpdlogin.dbo.dewan_pimpinan WHERE id=" +req.params.id;
			executeQuery (rs, query)
		}	

// Tabel Ikhtisar data 
		
		exports.ikhdataGet = function (req, rs) {
			var query  = "SELECT * FROM bpdlogin.dbo.ikhtisar_data";
			executeQuery (rs, query)
		}

		exports.ikhdataGetbyID = function (req, rs) {
			var query  = "SELECT * FROM bpdlogin.dbo.ikhtisar_data WHERE id=" +req.params.id;
			executeQuery (rs, query)
		}	

// Tabel Ikhtisar rasio 
		
		exports.ikhrasioGet = function (req, rs) {
			var query  = "SELECT * FROM bpdlogin.dbo.ikhtisar_rasio";
			executeQuery (rs, query)
		}

		exports.ikhrasioGetbyID = function (req, rs) {
			var query  = "SELECT * FROM bpdlogin.dbo.ikhtisar_rasio WHERE id=" +req.params.id;
			executeQuery (rs, query)
		}	

// Tabel Jasa Layanan 
		
		exports.jasa = function (req, rs) {
			var query  = "SELECT * FROM bpdlogin.dbo.jasalayanan_menu";
			executeQuery (rs, query)
		}

		exports.jasaGetbyID = function (req, rs) {
			var query  = "SELECT * FROM bpdlogin.dbo.jasalayanan_menu WHERE id=" +req.params.id;
			executeQuery (rs, query)
		}	