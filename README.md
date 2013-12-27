arch-doc
========

有没有可能同时把代码提交到两个git代码托管的服务器上？

我的电脑上有一个git版本库，有没有可能是当我push到一个git服务器上面的时候同时也更新到另外一个git服务器？

我自己这样用
vim .git/config

[remote "web"]
url = ssh://server.example.org/home/ams/website.git
url = ssh://other.exaple.org/home/foo/website.git
