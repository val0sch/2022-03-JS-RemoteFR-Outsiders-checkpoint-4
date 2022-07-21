const AbstractManager = require("./AbstractManager");

class BeaujolaisManager extends AbstractManager {
  static table = "beaujolais";

  insert(wine) {
    return this.connection.query(
      `insert into ${BeaujolaisManager.table} (appellation, domaine, classement, stock, millésime, prix_achat, lieu_achat, type, commentaire) values (? , ? , ? , ? , ? , ? , ? ,? , ?)`,
      [
        wine.appellation,
        wine.domaine,
        wine.classement,
        wine.stock,
        wine.millésime,
        wine.prix_achat,
        wine.lieu_achat,
        wine.type,
        wine.commentaire,
      ]
    );
  }
}

module.exports = BeaujolaisManager;
