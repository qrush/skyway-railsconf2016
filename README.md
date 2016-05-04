# Skyway

Fork of [qrush/skyway](https://github.com/qrush/skyway) for Railsconf 2016.

## Setup (OSX)

Install [Homebrew](http://brew.sh/) and [Pow](http://pow.cx), then:

``` shell
# Add rbenv to bash so that it loads every time you open a terminal
echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.bash_profile
source ~/.bash_profile

# Install Ruby 2.2.0 and set it as the default version
rbenv install 2.2.0
rbenv global 2.2.0
```

Then:

``` shell
git clone git@github.com:qrush/skyway-railsconf2016.git
cd skyway
bin/setup -v
```

And make sure to link your app with Pow! Assuming you installed it in `~/Dev`:

``` shell
cd ~/.pow
ln -s ~/Dev/skyway
```

## License

MIT. See `LICENSE`.
