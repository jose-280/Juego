    db   		    = 	require('./database'),
	date 			= 	new Date(),
    db.conectaDatabase();

var getQuestions =  function(req, res)
{
		db.queryMysql("select numpregunta, pregunta, opcion1, opcion2, opcion3, opcion4 from preguntas order by rand();", function(err, data){
			if (err) throw err;
			res.json(data);
		});
};

var isValid =  function(req, res)
{
	db.queryMysql("SELECT res_correcta AS respuestaCorrecta, ( res_correcta =" + req.body.respuesta + ") AS correcto FROM preguntas WHERE numpregunta = " + req.body.numPregunta +";", function(err, data){
			if (err) throw err;
			res.json(data);
		});

};


var notFound404 = function(req, res)
{
	res.status(404).send("Página no encontrada :( en el momento");
};

//Exportar las rutas...
module.exports.getQuestions = getQuestions;
module.exports.isValid = isValid;
module.exports.notFound404 = notFound404;