# do I need to load the spec_helper? 
require 'spec_helper'
require 'account'

describe Account do
  subject(:account) { described_class.new }

end
