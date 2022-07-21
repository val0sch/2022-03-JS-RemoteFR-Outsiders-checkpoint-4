class AbstractManager {
  constructor(connection, table) {
    this.connection = connection;
    this.table = table;
  }

  // find(id) {
  //   return this.connection.query(`select * from  ${this.table} where id = ?`, [
  //     id,
  //   ]);
  // }

  findAll() {
    return this.connection.query(`select * from  ${this.table}`);
  }

  findAppellation(appellation) {
    return this.connection.query(
      `SELECT * FROM ${this.table} WHERE Appellation LIKE '%${appellation}%'`
    );
  }

  delete(id) {
    return this.connection.query(`delete from ${this.table} where id = ?`, [
      id,
    ]);
  }

  addBottle(id) {
    return this.connection.query(
      `Update ${this.table} set stock = stock + 1 where id = ?`,
      [id]
    );
  }

  deleteBottle(id) {
    return this.connection.query(
      `Update ${this.table} set stock = stock - 1 where id = ?`,
      [id]
    );
  }

  insert(wine) {
    return this.connection.query(
      `insert into ${this.table} (appellation, domaine, classement, stock, millésime, prix_achat, lieu_achat, type, commentaire) values (? , ? , ? , ? , ? , ? , ? ,? , ?)`,
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

module.exports = AbstractManager;
