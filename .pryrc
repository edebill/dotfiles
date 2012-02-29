puts "loading .pryrc"
begin
  require File.join(Kernel.const_get("Rails").root, "/config/console_helpers")
rescue
end

def tech_support
  begin
    Kernel.const_get('User').find_by_email('tech-support@moxiesoft.com')
  rescue
    # just throw away exceptions that might happen if User isn't defined, etc
  end
end
