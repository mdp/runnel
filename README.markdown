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

Create the directory for you runnel config

    mkdir -p ~/.runnel ~/.runnel/pids

Build your tunnels.yml file and place it in '~/.runnel'

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

    # Start them all
    runnel start_all

You can also kill them the same way

    # Kill one tunnel
    runnel kill socks_proxy

    # Kill them all
    runnel kill_all

And lastly

    # Show the tunnels
    runnel list
