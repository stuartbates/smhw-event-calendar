module EventsHelper

  def render_events_as_js
    javascript_tag do
      "var events = #{@events.to_json};".html_safe
    end
  end

end