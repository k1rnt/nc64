$file="C:\Users\Administrator\<filename>"; $port=<port>; $listener=[System.Net.Sockets.TcpListener]$port; $listener.Start(); $client=$listener.AcceptTcpClient(); $stream=$client.GetStream(); [Sy
stem.IO.File]::OpenRead($file) | ForEach-Object { $buffer=New-Object byte[] 1024; $read=$_.Read($buffer, 0, $buffer.Length); $stream.Write($buffer, 0, $read) }; $listener.Stop()
