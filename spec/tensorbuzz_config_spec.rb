require "yaml"

# Guards the path filter declared in tensorbuzz.yml. An unquoted `!glob` in a YAML
# list is parsed as a tag with no value, so the negation disappears with no parse
# error and the lane keeps running for paths it was meant to skip; a `paths` list
# that is empty or not a list is rejected by the TensorBuzz config validator. Both
# failures are invisible in the YAML itself, so they are asserted here.
describe "SimpleDelegate" do
  let(:config) { YAML.load_file(File.expand_path("../tensorbuzz.yml", __dir__)) }
  let(:builds) { config.fetch("builds") }
  let(:patterns) { builds.values.flat_map { |build| build.fetch("paths") } }

  it "declares a paths list on every build" do
    expect(builds.keys).to all(satisfy { |name| builds.fetch(name).key?("paths") })
  end

  it "keeps every paths entry a non-empty glob string" do
    expect(patterns).to all(be_a(String))
    expect(patterns).to all(satisfy { |pattern| !pattern.strip.empty? })
  end

  it "keeps every negation a glob after the ! prefix" do
    negations = patterns.select { |pattern| pattern.start_with?("!") }

    expect(negations).not_to be_empty
    expect(negations).to all(satisfy { |pattern| !pattern[1..].strip.empty? })
  end

  it "declares paths per build, never at the root beside builds" do
    expect(config).not_to have_key("paths")
  end
end
