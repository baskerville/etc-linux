{
	"Label": "daemon.dictd",
	"ProgramArguments": [
		"/usr/local/sbin/dictd",
		"-c",
		"/etc/dictd.conf",
		"--pid-file",
		"/tmp/dictd.pid"
	],
	"RunAtLoad": true
}
