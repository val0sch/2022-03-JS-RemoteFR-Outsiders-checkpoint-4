const AbstractManager = require("./AbstractManager");

class BordeauxManager extends AbstractManager {
  static table = "bordeaux";

  // update(item) {
  //   return this.connection.query(
  //     `update ${ItemManager.table} set title = ? where id = ?`,
  //     [item.title, item.id]
  //   );
  // }
}

module.exports = BordeauxManager;
