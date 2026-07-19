# qbittorrent-lftp-upload
A script to upload torrents via using qbittorrents "Run external program on
completion".

  If qbittorrent is running a normal user:
  
    1a) Preferably setup qbittorrent categories matching the folders on the 
        FTP site. Ex: the "iSO" category in qbittorrent would match the "/iSO" folder on the FTP site. 
     
    2a) Connect to ftp and make a bookmark:
        $ lftp <user>:<pass>@ftpsite.com:<port>
        $ bookmark add <bookmark name>
        
    **  Depending on the ftp daemon you may need to alter your lftp rc file,
        I have included mine for example. **
     
    3a) Move this script somewhere accessable by qbittorrent user, and make
        sure it is the same user lftp uses else your rc file won't matter.
      
    4a) Configure Run external program on torrent finished with:
        /home/scripts/qbittorrent-lftp.sh "%K" "%N" "%R" "%L" "%D"
