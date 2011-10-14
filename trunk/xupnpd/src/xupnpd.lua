cfg={}

-- multicast interface for SSDP exchange, 'eth0' or 'br0' for example
cfg.ssdp_interface='lo'

-- 'cfg.ssdp_loop' enables multicast loop (if player and server in one host)
cfg.ssdp_loop=1

-- HTTP port for incoming connections
cfg.http_port=4044

-- syslog facility (syslog,local0-local7)
cfg.log_facility='local0'

-- 'cfg.daemon' detach server from terminal
cfg.daemon=false

-- silent mode - no logs, no pid file
cfg.embedded=false

-- 'cfg.debug' enables SSDP debug output to stdout (if cfg.daemon=false)
-- 0-off, 1-basic, 2-messages
cfg.debug=1

-- 'udpxy' url for multicast playlists (udp://@...)
cfg.udpxy_url='http://192.168.1.1:4022'

-- 'cfg.proxy' enables proxy for injection DLNA headers to stream
-- 0-off, 1-radio, 2-radio/TV
cfg.proxy=2

-- I/O timeout
cfg.http_timeout=15

-- 'cfg.dlna_extras' enables DLNA extras
cfg.dlna_extras=true

-- enables UPnP/DLNA notify when reload playlist
cfg.dlna_notify=true

-- group by 'group-title'
cfg.group=true

-- Device name
cfg.name='UPnP-IPTV'

-- static device UUID, '60bd2fb3-dabe-cb14-c766-0e319b54c29a' for example or nil
cfg.uuid='60bd2fb3-dabe-cb14-c766-0e319b54c29a'

-- playlist (m3u file path or path with alias
playlist=
{
--    'playlists/example/example.m3u',
--    { 'playlists/example/butovocom_iptv.m3u', 'Butovo.com' },
    { 'playlists/mozhay.m3u', 'Mozhay.tv' },
--    { './localmedia', 'Local Media Files', '127.0.0.1;192.168.1.1' }
}

-- log ident, pid file end www root
cfg.log_ident=arg[1] or 'xupnpd'
cfg.pid_file='/var/run/'..cfg.log_ident..'.pid'
cfg.www_root='./www/'
cfg.version='1.0-beta4'

dofile('xupnpd_main.lua')
