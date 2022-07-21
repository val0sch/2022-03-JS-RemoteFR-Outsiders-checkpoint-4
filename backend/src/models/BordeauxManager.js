const AbstractManager = require("./AbstractManager");

class BordeauxManager extends AbstractManager {
  static table = "bordeaux";

  // insert(item) {
  //   return this.connection.query(
  //     `insert into ${ItemManager.table} (title) values (?)`,
  //     [item.title]
  //   );
  // }

  // update(item) {
  //   return this.connection.query(
  //     `update ${ItemManager.table} set title = ? where id = ?`,
  //     [item.title, item.id]
  //   );
  // }
}

module.exports = BordeauxManager;
