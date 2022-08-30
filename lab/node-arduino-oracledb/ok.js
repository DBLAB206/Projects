const oracledb = require('oracledb'); // ok.js가 아두이노 -> DB 데이터 처리 과정 소스코드로 추정 //
const dbconfig = require('./dbconfig');

const conn = oracledb.getConnection(dbconfig);

let query1 = "select * from sound";

const insertValueIntDatabase = value => {
    let query2 = "insert into sound values (autoindex.nextval, :SOUNDDATA, sysdate)";
    conn.execute(query2, [value], (err, result) => {
        if (err) {
            console.error(err.message);
            doRelease(conn);
            return;
        }
        console.log('Row Insert:', result.rowsAffected);
    })
}

const doRelease = (conn, user) => {
    conn.close(err => {
        if (err) {
            console.error(err.message);
        }
        console.log("list size:", user.length);

        for (let i=0; i<user.length; i++) {
            console.log('name: ', user[i][1]);
        }
    })
} 


const SerialPort = require('serialport');

const port = new SerialPort('COM9', {
    baudRate: 9600
});

port.on('data', receiveSeiral);

class TextParser {
    constructor() {
        this.string = '';
    }
    static isEndMarker(char) {
        return char == '\r' || char == '\n';
    }
    parse(char) {
        if (this.clear) {
            this.string = '';
            this.clear = false;
        }
        if (TextParser.isEndMarker(char)) {
            if (this.string.length > 0) {
                this.clear = true;
                return true;
            }
            return false;
        } else {
            this.string += char;
        }
    }
    get message() {
        return this.string;
    }
}

const parser = new TextParser;

const receiveSeiral = dataBuf => {
    let str = dataBuf.toString();

    for (let i=0; i<str.length; i++) {
        if (parser.parse(str[i])) {
            insertValueIntDatabase(parser.message);
        }
    }
}