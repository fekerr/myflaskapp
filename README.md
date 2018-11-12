# FlaskApp

Simple application with authentication and CRUD functionality using the Python Flask micro-framework

## Installation

To use this template, your computer needs:

- [Python 2 or 3](https://python.org)
- [Pip Package Manager](https://pypi.python.org/pypi)

### Running the app

```bash
python app.py
```

A simple Dockerfile has been constructed to define a container to hold the app and support files. This is work in progress.

See docker/dockerBuildCmd.sh, hostexec.sh, hostrun.sh
    cd docker
    . dockerBuildCmd.sh
    . hostrun.sh
    . hostexec.sh
        # 
        # https://stackoverflow.com/questions/5376427/cant-connect-to-local-mysql-server-through-socket-var-mysql-mysql-sock-38
        /etc/init.d/mysqld start
        mysqladmin -u root password 'new-password'
        mysql -u root -p
        CREATE DATABASE myflaskapp;
        USE myflaskapp;
        CREATE TABLE users(id INT(11) AUTO_INCREMENT PRIMARY KEY, 
        name VARCHAR(100), email VARCHAR(100), username VARCHAR(30), password VARCHAR(100), register_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP);
        CREATE TABLE articles (id INT(11) AUTO_INCREMENT PRIMARY KEY, title VARCHAR(255), author VARCHAR(100), body TEXT, create_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP);
        exit
    cd ..

    python app.py


