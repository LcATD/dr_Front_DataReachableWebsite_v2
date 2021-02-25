var enzyme = require('enzyme');
var Adapter = require('enzyme-adapter-react-16');
var jsdom = require('jsdom');

const { window } = new jsdom.JSDOM('<!doctype html><html><body></body></html>');

global.window = window;
global.document = window.document;

enzyme.configure({ adapter: new Adapter() });