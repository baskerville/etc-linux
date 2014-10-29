{
	"Label": "daemon.mpd",
	"ProgramArguments": [
		"/usr/local/bin/mpd",
		"--no-daemon",
		"--stderr",
		"--verbose"
	],
	"StandardErrorPath": "/tmp/mpd.log",
	"RunAtLoad": true
}
