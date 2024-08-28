## A compact image of Clash(for debian) + Clash-UI(haishanh/yacd)

### Build

```sh
docker build -t volving/clashful:0.1.0 .
```

### Run
```sh
docker run --name clashful -v /path/to/clash/config.yaml:/opt/clash/config.yaml -p 17890:80 -p 19090:9090 -p 27890:7890 -p 27891:27891 volving/clashful
```

Visit http://localhost:17890, and set clash backend as http://localhost:19090
Set system proxy as MANUAL and update the url as http://localhost:27890 and socks5://localhost:27891
Bingo! :) 


