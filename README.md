# SM Deploy IRC Bot

IRC boot for automatic triggerring `sm deploy`.

# Installation

On server:

    gem install eployday
    eployday example # will generate example.yml

Edit settings in example.yml

Start server with:

    nohup eployday example.yml &

Example for autodeploy on travis tests passed:

    ---
    users: travis-ci
    triger: The build passed.
    channel: #rvm-test
