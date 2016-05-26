# $FreeBSD: release/9.1.0/etc/root/dot.login 63200 2000-07-15 03:25:14Z rwatson $
#
# .login - csh login script, read by login shell, after `.cshrc' at login.
#
# see also csh(1), environ(7).
#

# Uncomment to display a random cookie each login:
# [ -x /usr/games/fortune ] && /usr/games/fortune -s

cat /var/log/auth.log | /usr/bin/grep Accepted > /var/log/acceptedAuth.log
colortail -k /usr/local/share/examples/colortail/conf.messages /var/log/acceptedAuth.log
[ -x /usr/games/fortune ] && /usr/games/fortune -o
