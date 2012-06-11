packages = Array.new

case node[:lsb][:codename]
when "lucid"
  packages |= %w/
    libp11-kit0
  /
when "precise"
  packages |= %w/
    libp11-kit0
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
