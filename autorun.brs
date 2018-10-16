msgPort = CreateObject("roMessagePort")
r = CreateObject("roRectangle", 0, 0, 1920, 1080)

config = {
     inspector_server: { port: 3000 }
     url: "file:///sd:/index.html"
     hwz_default: "on"
}
html = CreateObject("roHtmlWidget", r, config)
html.SetPort(msgPort)
html.Show()
while true
    msg = wait(100, msgPort)
end while
