class HacksController < ApplicationController
  def index

  end

  def code

    @filename = "public/javascripts/jquery.js";

    raw = CodeRay.scan_file(@filename)

    @data = raw.div(
        :line_numbers => :table,
        :css => :style,
        )
    render :layout => false;
  end
end
