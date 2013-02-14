require "truncate_middle/version"

module TruncateMiddle
  def truncate_middle(opts = {})
    defaults = {
      length: 80,
      separator: "..."
    }

    raise ArgumentError, "Options is not hash" unless opts.is_a?(Hash)

    opts.delete_if{ |k, v| v.nil? }.reverse_merge!(defaults)
    opts[:separator] = opts[:separator].to_s

    raise ArgumentError, "Length is not integer" unless opts[:length].is_a?(Integer)

    if opts[:length] <= opts[:separator].size
      raise ArgumentError, "Length option should be more than separator length"
    end

    return self if size <= opts[:length]
    return [self[0], opts[:separator]].join if opts[:length] == opts[:separator].size + 1

    opts[:length] -= opts[:separator].size
    left_corner  = opts[:length] / 2
    right_corner = size - (opts[:length] - left_corner)

    [self[0...left_corner], opts[:separator], self[right_corner..size]].join
  end

  def truncate_middle!(opts = {})
    replace truncate_middle(opts)
  end
end

String.send :include, TruncateMiddle
