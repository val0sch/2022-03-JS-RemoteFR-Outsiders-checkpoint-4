const express = require("express");

const {
  BordeauxController,
  BourgogneController,
  AlsaceController,
  BeaujolaisController,
} = require("./controllers");

const router = express.Router();

/**
 * @desc Bordeaux routes
 *
 * @api {get} /api/bordeaux    Récupère tous les vins de Bordeaux
 * @api {get} /api/bordeaux/:appellation    Récupère tous les vins de Bordeaux par appellation
 * @api {put} /api/bordeaux/addBottle/:id    Ajoute une bouteille au stock
 * @api {delete} /api/bordeaux/deleteBottle/:id    Supprime une bouteille du stock
 * @api {put} /api/bordeaux/addCard    Ajoute une nouvelle ligne à la table "bordeaux" / ajoute une carte
 * @api {delete} /api/bordeaux/:id    Supprime une ligne de la table "bordeaux" / retire une carte
 */

router.get("/api/bordeaux", BordeauxController.getAll);
router.get("/api/bordeaux/:appellation", BordeauxController.browse);
router.put("/api/bordeaux/addBottle/:id", BordeauxController.updateAddBottle);
router.delete(
  "/api/bordeaux/deleteBottle/:id",
  BordeauxController.updateDeleteBottle
);

/**
 * @desc Beaujolais routes
 * idem bordeaux +++
 * @api {put} /api/beaujolais/addCard    Ajoute une nouvelle ligne à la table "beaujolais" / ajoute une carte
 * @api {delete} /api/beaujolais/:id    Supprime une ligne de la table "beaujolais" / retire une carte
 */

router.get("/api/beaujolais", BeaujolaisController.getAll);
router.get("/api/beaujolais/:appellation", BeaujolaisController.browse);
router.put(
  "/api/beaujolais/addBottle/:id",
  BeaujolaisController.updateAddBottle
);
router.delete(
  "/api/beaujolais/deleteBottle/:id",
  BeaujolaisController.updateDeleteBottle
);
router.post("/api/beaujolais/addCard", BeaujolaisController.add);
router.delete("/api/beaujolais/delete/:id", BeaujolaisController.delete);

/**
 * @desc Alsace routes
 *
 */

router.get("/api/alsace", AlsaceController.getAll);
router.get("/api/alsace/:appellation", AlsaceController.browse);
router.put("/api/alsace/addBottle/:id", AlsaceController.updateAddBottle);
router.delete(
  "/api/alsace/deleteBottle/:id",
  AlsaceController.updateDeleteBottle
);

/**
 * @desc Bourgogne routes
 *
 */

router.get("/api/bourgogne", BourgogneController.getAll);
router.get("/api/bourgogne/:appellation", BourgogneController.browse);
router.put("/api/bourgogne/addBottle/:id", BourgogneController.updateAddBottle);
router.delete(
  "/api/bourgogne/deleteBottle/:id",
  BourgogneController.updateDeleteBottle
);

module.exports = router;
