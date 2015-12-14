module Jekyll
  module Categorizer

    class Builder < Jekyll::Generator

      safe     true
      priority :low

      def generate(site)
        site.categories.keys.each do |category|
          page = Page.new(site, category)
          if page.render?
            page.render(site.layouts, site.site_payload)
            page.write(site.dest)
            site.pages << page
          end
        end
      end

    end

    class Page < Jekyll::Page

      def initialize(site, category)
        @site  = site
        @base  = site.source
        @dir   = site.config["jekyll_categorizer"]["namespace"].gsub(/^\/*(.*)\/*$/, '\1')
        @name  = "#{category}.html"

        template_path = File.join(@base, "_layouts", "#{site.config["jekyll_categorizer"]["layout"]}.html")

        self.process(@name)

        if File.exist?(template_path)
          @perform_render = true
          template_dir    = File.dirname(template_path)
          template        = File.basename(template_path)
          self.read_yaml(template_dir, template)
          self.data["category"]    = category
        else
          @perform_render = false
        end
      end

      def render?
        @perform_render
      end

    end

  end
end
