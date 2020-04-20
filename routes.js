module.exports = function(app) {
    
    var coba = require('./controller');
    
 
    // Route Posting            
    app.route('/posting',)
        .get(coba.postingGet);

    app.route('/posting/:id',)
        .get(coba.postingGetbyID);

    // app.route('/posting',)
    //     .post(coba.postingPost);

    // app.route('/posting/:id',)
    //     .put(coba.postingPut);
    
    // app.route('/posting/:id',)
    //     .delete(coba.postingDelete);

    //Route Simpanan
    app.route('/simpanan')
       .get(coba.simpananGet);
    app.route('/simpanan/:id')
       .get(coba.simpananGetbyID);
    // app.route('/simpanan')
    //    .post(coba.simpananPost);

    //Route Tentang
    app.route('/tentang')
       .get(coba.tentangGet);
    app.route('/simpanan/:id')
       .get(coba.tentangGetbyID);

    //Route Berita
    app.route('/berita')
       .get(coba.beritaGet);
    app.route('/berita/:id')
       .get(coba.beritaGetbyID);

    //Route Dewan
    app.route('/dewan')
       .get(coba.dewanGet);
    app.route('/dewan/:id')
       .get(coba.dewanGetbyID);

    //Route Ikhtisar Data
    app.route('/ikhdata')
       .get(coba.ikhdataGet);
    app.route('/ikhdata/:id')
       .get(coba.ikhdataGetbyID);

    //Route Ikhtisar Rasio
    app.route('/ikhrasio')
       .get(coba.ikhrasioGet);
    app.route('/ikhrasio/:id')
       .get(coba.ikhrasioGetbyID);

    //Route Jasa Layanan
    app.route('/jasa')
       .get(coba.jasaGet);
    app.route('/jasa/:id')
       .get(coba.jasaGetbyID);

   //Route Kredit Menu
    app.route('/kredit')
       .get(coba.kreditGet);
    app.route('/kredit/:id')
       .get(coba.kreditGetbyID);

   //Route Laporan Menu
   app.route('/laporan')
   .get(coba.laporanGet);
   app.route('/laporan/:id')
   .get(coba.laporanGetbyID);

   //Route Layanan Menu
   app.route('/layanan')
   .get(coba.layananGet);
   app.route('/layanan/:id')
   .get(coba.layananGetbyID);

   //Route Pemegang Saham
   app.route('/saham')
   .get(coba.sahamGet);
   app.route('/saham/:id')
   .get(coba.sahamGetbyID);
};





