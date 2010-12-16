require 'rubygems'
require File.expand_path("../../lib/tapp",__FILE__)

"hi there".tapp
{
  :foomax => %w{special}
}.tapp(:hash)
