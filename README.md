## devcontainer for developing personium-core

This repository contains a devcontainer which is useful for developing personium-core with vscode.

## How to use

### Prepare repositories

Preparing devcontainer repository and source codes.

```bash
git clone https://github.com/yoh1496/personium-core-dev.git
git clone https://github.com/personium/personium-core.git
git clone https://github.com/personium/personium-plugins.git
git clone https://github.com/personium/personium-plugin-base.git
git clone https://github.com/personium/personium-lib-es-adapter.git
```

### Edit .env file

Open `personium-core-dev` folder with vscode and edit `.devcontainer/.env` for your environment.

```bash
cp .devcontainer/.env.example .devcontainer/.env
vim .devcontainer/.env
```

Please fill your `UID` and `GID`. And you can put proxy settings.

### Open devcontainer

And then, press `Reopen in container` and enjoy coding.

## Appendix

### Configure maven proxy

Create maven settings file on `/home/devuser/.m2/settings.xml` and edit like below:

```xml
<settings>
  <proxies>
    <proxy>
      <id>myproxy</id>
      <active>true</active>
      <protocol>https</protocol>
      <username>username</username>
      <password>password</password>
      <host>myproxy.example.com</host>
      <port>8080</port>
      <nonProxyHosts>localhost,127.0.0.1</nonProxyHosts>
    </proxy>
  </proxies>
</settings>
```

and relaunch your vscode.