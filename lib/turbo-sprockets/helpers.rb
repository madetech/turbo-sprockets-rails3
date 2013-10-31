module TurboSprockets
  def self.get_source_manifest_path(manifest_dir, filename="sources_manifest.yml")
    "#{manifest_dir}/#{get_source_manifest_filename(filename)}"
  end

  def self.get_source_manifest_filename(filename="sources_manifest.yml")
    ENV['RAILS_ENV'] ? "#{ENV['RAILS_ENV'].downcase}_#{filename}" : filename
  end
end
