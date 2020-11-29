require 'spec_helper'

RSpec.describe DaniiltyNmax do
  it "has a version number" do
    expect(DaniiltyNmax::VERSION).not_to be nil
  end
  let (:nan) { StringIO.new('sheesh') }
  let (:arr) { StringIO.new('124 534543 af 666 3444') }
  it "checks string to convert to zero" do
    expect { DaniiltyNmax.read_and_sort(nan) }.to output("0\n").to_stdout
  end
  it "checks the correct output" do
    expect { DaniiltyNmax.read_and_sort(arr) }.to output("534543\n3444\n666\n124\n").to_stdout
  end
end
