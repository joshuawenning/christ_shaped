module VersesHelper
  def safe_external_link(url)
    return unless url&.start_with?("http://", "https://")
    link_to url, target: "_blank", rel: "noopener"
  end
end
