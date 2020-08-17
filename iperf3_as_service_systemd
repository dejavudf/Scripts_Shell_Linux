#!/bin/sh

### BEGIN INIT INFO
# Provides:		iperf3
# Required-Start:    $all
# Required-Stop:
# Default-Start:     2 3 4 5
# Default-Stop:		0 1 6
# Short-Description: iperf3
### END INIT INFO

DESC="IP Performance"
NAME="IPerf3"
DAEMON=/usr/bin/iperf3

set -e

. /lib/lsb/init-functions

case "$1" in
	start)
		init_is_upstart > /dev/null 2>&1 && exit 1

		log_daemon_msg "Starting $DESC" "$NAME"
		/usr/bin/iperf3 -s -D -p 5001
		log_end_msg $?
		;;

	stop)
		init_is_upstart > /dev/null 2>&1 && exit 0

		log_daemon_msg "Stopping $DESC" "$NAME"
		pkill iperf3
		log_end_msg $?
		;;

	restart|force-reload)
		init_is_upstart > /dev/null 2>&1 && exit 1

		log_daemon_msg "Restarting $DESC" "$NAME"
		pkill iperf
		sleep 2
		/usr/bin/iperf -s -D -p 5001
		log_end_msg $?
		;;

	status)
		status_of_proc $DAEMON $NAME
		;;

	*)
		echo "Usage: $0 {start|stop|restart|force-reload|status}" >&2
		exit 3
		;;
esac


