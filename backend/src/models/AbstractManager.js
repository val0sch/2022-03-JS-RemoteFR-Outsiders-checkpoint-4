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
}

module.exports = AbstractManager;
