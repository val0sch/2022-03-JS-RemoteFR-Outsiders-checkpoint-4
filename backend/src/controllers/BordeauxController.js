const models = require("../models");

class BordeauxController {
  static getAll = (req, res) => {
    models.bordeaux
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
    models.bordeaux
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
    models.bordeaux
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
    models.bordeaux
      .deleteBottle(req.params.id)
      .then(() => {
        res.sendStatus(204);
      })
      .catch((err) => {
        console.error(err);
        res.sendStatus(500);
      });
  };

  // static read = (req, res) => {
  //   models.item
  //     .find(req.params.id)
  //     .then(([rows]) => {
  //       if (rows[0] == null) {
  //         res.sendStatus(404);
  //       } else {
  //         res.send(rows[0]);
  //       }
  //     })
  //     .catch((err) => {
  //       console.error(err);
  //       res.sendStatus(500);
  //     });
  // };

  // static edit = (req, res) => {
  //   const item = req.body;

  //   item.id = parseInt(req.params.id, 10);

  //   models.item
  //     .update(item)
  //     .then(([result]) => {
  //       if (result.affectedRows === 0) {
  //         res.sendStatus(404);
  //       } else {
  //         res.sendStatus(204);
  //       }
  //     })
  //     .catch((err) => {
  //       console.error(err);
  //       res.sendStatus(500);
  //     });
  // };

  // static add = (req, res) => {
  //   const item = req.body;

  //   models.item
  //     .insert(item)
  //     .then(([result]) => {
  //       res.status(201).send({ ...item, id: result.insertId });
  //     })
  //     .catch((err) => {
  //       console.error(err);
  //       res.sendStatus(500);
  //     });
  // };
}

module.exports = BordeauxController;
