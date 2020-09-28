# Scripts to Make my Life Easier

This is a collection of scripts I have under my `$HOME/bin` and I frequently use.

They are synced on multiple servers I use via `git`.

## Index:
* `makefile2graph`: plots (via `dot`) the directed acyclic graph of a `make` target
* `add-to-pocket.sh`: adds a url to your Pocket items e.g. `add-to-pocket.sh https://tselai.com` 
* `daily_newspapers_in_your_pocket.sh`: `cron`-ed script that adds some front-pages every morning to my Pocket (e.g. Economist, Atlantic, Hacker-News and others)
* `git-fetch-dirs`: recursively `git fetch` directories
* `rm_special_chars_from_filename.sh`: Replaces special chars in filenames (e.g. spaces, dots) with underscores
* `upload_gdrive_api.sh`: Upload a file to Google Drive

To use them yourself:

```shell script
cd $HOME
git clone git@github.com:Florents-Tselai/scripts.git bin/
echo "export PATH=$PATH:$HOME/bin" >> $HOME/.bashrc
```