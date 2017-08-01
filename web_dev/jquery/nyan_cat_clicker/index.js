function randomPosition(width, height) {
  var randomWidth = Math.floor(Math.random() * (width - 265));
  var randomHeight = Math.floor(Math.random() * (height - 160));
  return {width: randomWidth, height: randomHeight}   
}

$(document).ready(function() {
  var width = $('body').width();
  var height = $('body').height();
  var nyanCat = $('img');
  var message = $('span');
  var rainbow = ['red', 'orange', 'yellow', 'green', 'blue', 'indigo', 'violet'];
  var catPosition, messagePosition;
  nyanCat.click(function() {
    catPosition = randomPosition(width, height);
    messagePosition = randomPosition(width, height);
    nyanCat.css({top: catPosition.height, left: catPosition.width, position: 'absolute'});
    message.css({top: messagePosition.height, left: messagePosition.width, position: 'absolute', color: rainbow[Math.floor(Math.random() * rainbow.length)]});
  });
});
