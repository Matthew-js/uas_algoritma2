const mongoose = require('mongoose');

const deviceSchema = new mongoose.Schema({
  name: String,
  ip: String, // <--- tambahkan field ini
  status: String, // 'normal', 'mati', dll
  lastChecked: Date,
});

module.exports = mongoose.model('Device', deviceSchema);
