# Atlas2ipynb

This gem converts the HTML files from Atlas into iPython Notebooks.  Basically, it uses the fact that HTML is  considered valid markdown, so the gem basically just flattens the output from the HTML build from Atlas and makes each element into a corresponding ipynb "cell".


## Installation

Add this line to your application's Gemfile:

    gem 'atlas2ipynb'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install atlas2ipynb

## Usage

To use this gem, you write your project in http://atlas.oreilly.com[Atlas].  Once you get a working HTML build, can generate a notebook like this:

```
   atlas2ipynb _ATLAS-API-TOKEN_ _PROJECT-NAME_
````

For example:

```
   atlas2ipynb r1pB4y95uMxT3m8t9zRf oreillymedia/razzpisampler
````

Note that you must have *curl* and *unzip* installed to (respectively) download and unpack the build.

## TODO:

* The converter assumes that HTML is valid markdown per the markdown spec, but ipython 2.0 seems to say that embedded markdown will never be trusted.  If so, the approah here won't work.

 
## Contributing

1. Fork it ( http://github.com/<my-github-username>/atlas2ipynb/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
