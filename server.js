const express = require('express');
const path = require('path');
const bodyParser = require('body-parser');
const nodemailer = require('nodemailer');

const app = express();

// Statische Dateien aus dem aktuellen Verzeichnis bereitstellen
app.use(express.static(path.join(__dirname)));

app.use(bodyParser.urlencoded({ extended: false }));

//Notizen:
//npm install express body-parser nodemailer
// ersetzen YOUR_EMAIL & YOUR_PASSWORD durch eigene E-Mail-Adresse & Passwort

app.post('/submit_form', (req, res) => {
  let data = req.body;
  let output = `
    <p>Sie haben eine neue Nachricht vom Fragebogen zu BAD USB</p>
    <h3>Details</h3>
    <ul>
      <li>Frage 1: ${data.frage1}</li>
      <li>Frage 2: ${data.frage2}</li>
      <li>Frage 3: ${data.frage3}</li>
      <li>Frage 4: ${data.frage4}</li>
      <li>Frage 5: ${data.frage5}</li>
      <li>Frage 6: ${data.frage6}</li>
      <li>Frage 7: ${data.frage7}</li>
      <li>Frage 8: ${data.frage8}</li>
      <li>Frage 9: ${data.frage9}</li>
      <li>Frage 10: ${data.frage10}</li>      
    </ul>
  `;

  let transporter = nodemailer.createTransport({
    service: 'gmail',
    auth: {
      user: 'YOUR_EMAIL',
      pass: 'YOUR_PASSWORD'
    }
  });

  let mailOptions = {
    from: 'YOUR_EMAIL',
    to: 'RECIPIENT_EMAIL',
    subject: 'Neue Nachricht vom Fragebogen',
    html: output
  };

  transporter.sendMail(mailOptions, (error, info) => {
    if (error) {
      return console.log(error);
    }
    console.log('Nachricht gesendet: %s', info.messageId);
  });

  res.send('Formular erfolgreich gesendet!');
});

app.listen(3000, () => console.log('Server gestartet...'));
