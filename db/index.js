const connection = require('./connection')

class DB {

    constructor(connection) {
        this.connection = connection;
    }

    findAllEmployees() {
        return this.connection.query(
            'SELECT * FROM employee_db.employee');
    }
}

module.exports = new DB(connection);