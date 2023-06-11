$(function(){
	window.addEventListener("message", function(event) {
		switch (event.data.action) {
			case "show":
				showUI(event.data.show)
			break;
			case "setValue":
				if (event.data.key == "job")
					setJobIcon(event.data.icon)
				setValue(event.data.key, event.data.value)
			break;
			case "setTalking":
				setTalking(event.data.value)
			break;
			case "changeVolume":
				changeVolume(event.data.value)
			break;
		}
	});
});

//Functions
function setValue(key, value) {
	$('#' + key+ " span").html(value)
}//setValue

function setJobIcon(icon) {
	if (icon.search("off") != -1) icon = icon.substr(3)
	$("#job img").attr("src", "./img/jobs/" + icon + ".png")
}//setJobIcon

function setTalking(value) {
	if (value)
		$("#voice span").attr("style", "color: green")
	else
		$("#voice span").removeAttr("style")
}//setTalking

function changeVolume(volume) {
	$("#voice img").attr("src", "./img/speaker" + volume + ".png")
}//changeVolume

function showUI(show) {
	if (show)
		$("#stats").show()
	else
		$("#stats").hide()
}//showUI