# frozen_string_literal: true

require "shakushi"

Shakushi.output_dir = "../public"

filters_dir = "filters"

Dir.glob("#{filters_dir}/*.rb") do |filename|
  require_relative filename
end
