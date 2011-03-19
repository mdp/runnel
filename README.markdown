# runnel - A Ruby ssh tunnel manager

I hate starting autossh tunnels and trying to keep track of them. This solves that issue for me.

## Prereq's

Autossh - you really should already be using this.

    # Mac Homebrew
    brew install autossh

    # Ubuntu
    apt-get isntall autossh

    # Redhat
    Figure it out yourself

## Installation and usage

    gem install runnel

Now let runnel set itself up by simply running it:

    runnel

Edit your tunnels.yml file, found in '~/.runnel'

Here's the example file you'll have after setup:

    ----
    :socks_proxy:
      :name: My socks proxy for secure browsing on public WiFi
      :mport: 44488 #The autossh monitor port
      :command: -NfD 8080 mysecurebox.net
    :mysql_proxy
      :name: mySQL proxy for work
      :mport: 44490
      :command: -NfL 3306:localhost:3306 mysqlbox.org

Then use runnel to start the tunnels

    # Start one tunnel
    runnel start socks_proxy

    # Start all tunnels
    runnel start

You can also kill them the same way

    # Kill one tunnel
    runnel kill socks_proxy

    # Kill all tunnels
    runnel kill

And lastly

    # Show the tunnels
    runnel
