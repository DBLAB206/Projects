const db = require("../db/index");

module.exports = (req, res) => {
  res.setHeader("Content-type", "text/event-stream");
  res.setHeader("Cache-Control", "no-cache");
  res.setHeader("Access-Control-Allow-Origin", "*");
  res.setHeader("Connection", "keep-alive");
  res.header("Access-Control-Allow-Methods", "*");

  db.fn_subscription__db_table(res).catch((err) => {
    console.error(`/api/get.js - fn_REST_GET__connect_SSE (fn_subscription__db_table)\n${err}`);
  });

  setTimeout(() => {
    db.fn_unsubscription__db_table().catch((err) => {
      console.error(`/api/get.js - fn_REST_GET__connect_SSE (fn_unsubscription__db_table)\n${err}`);
    });
  }, 1000 * 15);

  res.on('close', () => {
    console.log('client dropped me');
    res.end();
});
};
