const models = require("../models");

class AlsaceController {
  static getAll = (req, res) => {
    models.alsace
      .findAll()
      .then(([rows]) => {
        if (rows == null) {
          res.sendStatus(404);
        } else {
          res.send(rows);
        }
      })
      .catch((err) => {
        console.error(err);
        res.sendStatus(500);
      });
  };

  static browse = (req, res) => {
    models.alsace
      .findAppellation(req.params.appellation)
      .then(([rows]) => {
        if (rows == null) {
          res.sendStatus(404);
        } else {
          res.send(rows);
        }
      })
      .catch((err) => {
        console.error(err);
        res.sendStatus(500);
      });
  };

  static updateAddBottle = (req, res) => {
    models.alsace
      .addBottle(req.params.id)
      .then(() => {
        res.sendStatus(204);
      })
      .catch((err) => {
        console.error(err);
        res.sendStatus(500);
      });
  };

  static updateDeleteBottle = (req, res) => {
    models.alsace
      .deleteBottle(req.params.id)
      .then(() => {
        res.sendStatus(204);
      })
      .catch((err) => {
        console.error(err);
        res.sendStatus(500);
      });
  };
}

module.exports = AlsaceController;
