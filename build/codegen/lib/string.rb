class String
    def camelize
        self[0].downcase + self[1..-1]
    end

    def pascalize
        self.sub(/^./) { |c| c.upcase }
    end

    def strip_namespace
        self.sub(/kendo.*ui\./, '').sub('kendo.data.', '')
    end

    def singular
        return self + 'Item' if end_with?('ies') || !end_with?('s') || self.match(/\s*Axis+\s*/)

        self.sub(/s$/, '')
    end

    def html_encode
        return self.gsub('&', '&amp;').gsub('<', '&lt;').gsub('>', '&gt;')
    end

    def dos

        new_line = RUBY_PLATFORM =~ /w32/ ? "\n" : "\r\n"

        self.gsub(/\r?\n/, new_line)

    end
end

