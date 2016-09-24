var _ = require("lodash");

module.exports = User;

function User(attr, prefixLookup) {
	_.merge(this, _.extend({
		modes: [],
		nick: ""
	}, attr));

	// irc-framework sets character mode, but lounge works with symbols
	this.modes.forEach(function(mode, index, that) {
		that[index] = prefixLookup[mode];
	});

	// TODO: Remove this
	this.name = this.nick;
	this.mode = (this.modes && this.modes[0]) || "";
}
