# Jekyll::Categorizer

A jekyll plugin to generate category pages using your own template.

## Install

Add `jekyll-categorizer` to your site's Gemfile under the
`jekyll_plugins` group:


```ruby
group "jekyll_plugins" do
  gem "jekyll-categorizer"
end
```

And then execute:

```bash
$ bundle install
```

## Usage

Configure in `_config.yml` the following settings:

```yaml
jekyll_categorizer:
  namespace: categories # this will be used for URL namespacing (E.g. /categories/foo)
  layout:    category   # this should be your own layout
```

and lastly, in your specified layout, make use of the following snippet:

```
# ...
{% for post in site.categories[page.category] %}
# ...
{% endfor %}
# ...
```

To iterate over every category post. This should build a category page for every category found in your
articles under `_posts`.

E.g. If you have a category `foo` then you'd be able to see every post
for that category under `/categories/foo.html` (using categories
namespace)

## License

The [MIT License](LICENSE.md).

## Contributing

Check [Code of Coduct](CODE_OF_CONDUCT.md).

1. [Fork it](https://github.com/joiggama/jekyll-categorizer/fork)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
