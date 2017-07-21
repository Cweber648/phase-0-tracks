var colors = ["blue", "red", "yellow", "green"];
var names = ["ed", "bob", "suzy", "jane"];
colors.push("pink");
names.push("joe");

var horses = {}
for (var i = 0; i < names.length; i++) {
	horses[names[i]] = colors[i];
}
console.log(horses)