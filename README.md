# SM Deploy IRC Bot

IRC boot for automatic triggerring `sm deploy`.

# Installation

On server:

    gem install eployday

Example for auto deploy on travis-ci tests passed `rvm-site.yml`:

    ---
    nick: rvm-site-deploy
    channels:
      - "#rvm-test"
    trigger_text: "The build passed."
    allowed_users:
      - travis-ci
    command: "echo bdsm deploy"

Start server with:

    nohup eployday rvm-site.yml &
