require "rqrcode"

url = "https://miguelfajardoc.github.io/lacteosanvilac/"
qr = RQRCode::QRCode.new(url)

svg = qr.as_svg(
  color: "000",
  shape_rendering: "crispEdges",
  module_size: 11,
  standalone: true,
  use_path: true
)
file = File.new("qr", "w")
file.puts(svg)

file.close