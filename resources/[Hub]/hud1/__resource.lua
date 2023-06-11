resource_manifest_version "44febabe-d386-4d18-afbe-5e627f4af937"

description "Custom UI by Marco Paggioro -> https://www.marcopaggioro.it/"
version "1.0"
version_ciao "2.0"

client_script "script/client.lua"

ui_page "./html/ui.html"

files {
	"./html/ui.html",
	-- CSS
	"./html/css/bootstrap.min.css",
	"./html/css/bootstrap.min.css.map",
	"./html/css/style.css",
	-- JavaScript
	"./html/js/jquery-3.4.1.min.js",
	"./html/js/popper.min.js",
	"./html/js/bootstrap.min.js",
	"./html/js/bootstrap.min.js.map",
	"./html/js/script.js",
	-- Img
	"./html/img/hunger.png",
	"./html/img/money-bag.png",
	"./html/img/speaker1.png",
	"./html/img/speaker2.png",
	"./html/img/speaker3.png",
	"./html/img/wallet.png",
	"./html/img/water.png",
	"./html/img/jobs/ambulance.png",
	"./html/img/jobs/ammu.png",
	"./html/img/jobs/cardealer.png",
	"./html/img/jobs/fisherman.png",
	"./html/img/jobs/fueler.png",
	"./html/img/jobs/gopostal.png",
	"./html/img/jobs/lumberjack.png",
	"./html/img/jobs/mechanic.png",
	"./html/img/jobs/miner.png",
	"./html/img/jobs/police.png",
	"./html/img/jobs/reporter.png",
	"./html/img/jobs/slaughterer.png",
	"./html/img/jobs/tailor.png",
	"./html/img/jobs/taxi.png",
	"./html/img/jobs/unemployed.png"
}

dependency "es_extended"
