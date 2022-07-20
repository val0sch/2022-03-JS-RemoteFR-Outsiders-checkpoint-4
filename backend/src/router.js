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
 * @api {get} /api/bordeaux Récupère tous les vins de Bordeaux
 * @api {get}
 */

router.get("/api/bordeaux", BordeauxController.browse);

module.exports = router;
