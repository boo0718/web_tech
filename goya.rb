require 'cgi'

cgi = CGI.new

cgi.out("type" =>"text/html","charset" =>"UTF-8"){

  get = cgi['goya']

  "<html>
    <body>
      <p>譲渡先が自家消費ではないもの,品質が悪いもののgoyaの情報</p>
      文字列:#{get}
    </body>
  </html>"
}
