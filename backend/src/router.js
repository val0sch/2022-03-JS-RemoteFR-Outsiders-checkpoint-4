const express = require("express");

const { BordeauxController } = require("./controllers");

const router = express.Router();

// router.get("/items", ItemController.browse);
// router.get("/items/:id", ItemController.read);
// router.put("/items/:id", ItemController.edit);
// router.post("/items", ItemController.add);
// router.delete("/items/:id", ItemController.delete);

/**
 * @desc Bordeaux routes
 *
 * @api {get} /api/bordeaux    Récupère tous les vins de Bordeaux
 * @api {put} /api/bordeaux/addBottle/:id    Ajoute une bouteille au stock
 * @api {delete} /api/bordeaux/deleteBottle/:id    Supprime une bouteille du stock
 */

router.get("/api/bordeaux/:appellation", BordeauxController.browse);
router.put("/api/bordeaux/addBottle/:id", BordeauxController.updateAddBottle);
router.delete(
  "/api/bordeaux/deleteBottle/:id",
  BordeauxController.updateDeleteBottle
);

module.exports = router;
