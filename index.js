const mysql = require("mysql");
const inquirer = require("inquirer");
require("console.table");

var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "SC100200",
    database: "employees_db"
});

connection,connect(function (err) {
    if (err) throw err;
    firstPrompt();
});

function firstPrompt() {
    inquirer
    .prompt({
        type: "list",
        name: "task",
        message: "What would you like to do?",
        choices: [
            "View Employees",
            "View Employees by Department",
            "Add Employees",
            "Remove Employees",
            "Update Employee Role",
            "Add Role",
            "End"
        ]
    })

    .then(function ({task}) {
        switch (task) {
            case "View Employees":
                 viewEmployee();
                 break;
            case "View Employees by Department":
                viewEmployeeDepartment();
                break;
            case "Add Employee":
                addEmployee();
                break;
            case "Update Employee Role":
                updateEmployeeRole();
                break;
            case "Add Role":
                addRole();
                break;
            case "End":
                connection.end();
                break;      
        }
    });
}

function viewEmployee () {
    console.log("Viewing Employees/n");
    var query = 
    `SELECT e.id, e.firstName, e.lastName, r.title, d.name, r.salary, CONCAT(m.firstName, ' ', m.lastName)
    FROM employee e
    LEFT JOIN role r
    ON e.role_id = r.id
    LEFT JOIN department d
    ON d.id = r.department_id
    LEFT JOIN employee m
    ON m.id = e manager_id`
    connection.query(query, function (err, res) {
        if (err) throw err;
        console.table(res);
        console.log("employees viewed/n");
        firstPrompt();
    });
}

