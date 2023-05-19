# query-vault

Let's learn SQL together!

## Overview

My intention is to use this repository as a storage location for miscellaneous files containing SQL commands. As I advance and gain more knowledge, I will consistently improve and organize the structure to enhance its overall appearance and organization.

## Take the first steps

- Download and install SQL Ver 8.0.33 for macos13 on x86_64 (MySQL Community Server - GPL). I went [here](https://dev.mysql.com/downloads/mysql/) and after choosing my Operating System and Operating System Version I downloaded the DMG Archive and installed on my machine.
- To verify if SQL is installed, you can utilize the following command:

```bash
mysql --version
```

- If SQL is not found, you can try running one of the following commands in your terminal:

```bash
echo 'export PATH=/usr/local/mysql/bin:$PATH' >> ~/.bash_profile
# if you are using BASH shell

echo 'export PATH=/usr/local/mysql/bin:$PATH' >> ~/.zshrc
# if you are using ZSH shell
```

- To find out the current shell you are using, run one of the following commands in your terminal:

```bash
ps -p $$ -o comm=

# or

echo $SHELL
```

- Download and install a SQL client. I used this one that is open source: [`Sequel Ace`](https://github.com/Sequel-Ace/Sequel-Ace)
- To create your initial database, you can employ the following command:

```bash
mysql -u <username> -p -e "CREATE DATABASE <database_name>;"
```

- Replace `<username>` with your MySQL username, `<database_name>` with the desired name for your database. After running this command, you will be prompted to enter your password.
- Play around with queries from terminal or your preffered SQL client. 🧑🏻‍💻

## Contribution

If you come across anything that appears to be incorrect or if you have any suggestions for improvement, please feel free to contribute! ☀️
