var $ = require('jquery');
var hello = require('./hello');

$('body').append('<div class="alert alert-success">' + hello('Muffin') + '</div>');