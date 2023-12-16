import express from 'express';
import Television from './models/Task.js';

const app = express();
app.use(express.urlencoded({ extended: true }));
//Pour le CSS
app.use(express.static('public'));

app.get("/", async function(request, response){
  const wishList = await Television.loadMany({Acheter: 0});
  const boughtList = await Television.loadMany({Acheter: 1, Fonctionnel: 1});
  const brokenList = await Television.loadMany({Acheter: 1, Fonctionnel: 0});
  response.render('listTasks.ejs', {wishList, boughtList, brokenList});
});

app.post("/add", async function (req, res) {
  const NewLigne = new Television();
  NewLigne.Marque = req.body.Marque;
  NewLigne.Prix = req.body.Prix;   //req.body sert à récupérer la valeur du champ de texte pour l'afficher
  NewLigne.Taille = req.body.Taille;
  NewLigne.Acheter = 0;
  NewLigne.Fonctionnel = 1;
  await NewLigne.save();
  res.redirect('/');
});

app.get("/delete/:id", async function (req, res) {
  await Television.delete({ idtv: req.params.id });
  res.redirect('/');
});

app.get("/bought/:id", async function(req, res){
  const Achat = await Television.load({idtv: req.params.id});
  Achat.Acheter = 1;
  await Achat.save();
  res.redirect('/');
});

app.get("/broken/:id", async function(req, res){
  const Casser = await Television.load({idtv: req.params.id});
  res.render('broken.ejs', {Casser});
});

app.post('/break/:id', async function(req, res){
  const Casser = await Television.load({idtv: req.params.id});
  Casser.Fonctionnel = 0;
  Casser.Cause = req.body.broken
  await Casser.save();
  res.redirect('/');
});

app.listen(4000);

