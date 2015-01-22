## psych gem conflict with json (~> 1.8.2)

The `psych` gem appears to conflict with the `json` gem under certain conditions, specifically when loaded via a gemspec dependency and either `yaml` or `psych` are required before `json`.


### The problem

```bash
$ psych_load_bug
testing yaml:
/Users/chetan/.rvm/gems/ruby-2.2.0/gems/psych_load_bug-0.1.0/bin/psych_load_bug:13:in `<top (required)>': private method `load' called for Psych:Module (NoMethodError)
    from /Users/chetan/.rvm/gems/ruby-2.2.0/bin/psych_load_bug:23:in `load'
    from /Users/chetan/.rvm/gems/ruby-2.2.0/bin/psych_load_bug:23:in `<main>'
```

Runs correctly:
```bash
$ ruby -rjson `which psych_load_bug`
testing yaml:
{"a"=>"b"}
```

The same result can also be achieved by uncommenting the json line in `lib/psych_load_bug.rb`.


### Reproducing

```bash
$ git clone https://github.com/chetan/psych_load_bug.git
$ cd psych_load_bug
$ bundle install
$ rake clean install
$ psych_load_bug
```


### Solution

Make sure the `json` gem is loaded first! 

Other than that, I am not sure why the two are conflicing. The library load path doesn't seem to be altered by the inclusion of the json gem. Perhaps it's a Rubygems bug?
