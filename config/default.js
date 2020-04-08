let dotenv = require('dotenv');
dotenv.config('./env');

console.log('process.env.MYSQL_HOST ', process.env.MYSQL_HOST);
const config = {
    // 启动端口
    port: 3000,
    hostname: '0.0.0.0',
    // 数据库配置
    database: {
        DATABASE: 'nodesql',
        USERNAME: 'root',
        PASSWORD: '123456',
        PORT: '3306',
        HOST: process.env.MYSQL_HOST || '127.0.0.1'
    }
}

module.exports = config