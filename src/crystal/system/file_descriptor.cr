# :nodoc:
module Crystal::System::FileDescriptor
  # Enables input echoing if *enable* is true, disables it otherwise.
  # private def system_echo(enable : Bool)

  # For the duration of the block, enables input echoing if *enable* is true,
  # disables it otherwise.
  # private def system_echo(enable : Bool, & : ->)

  # Enables raw mode if *enable* is true, enables cooked mode otherwise.
  # private def system_raw(enable : Bool)

  # For the duration of the block, enables raw mode if *enable* is true, enables
  # cooked mode otherwise.
  # private def system_raw(enable : Bool, & : ->)

  # private def system_read(slice : Bool) : Int32

  # private def system_write(slice : Bool) : Int32
end

{% if flag?(:wasi) %}
  require "./wasi/file_descriptor"
{% elsif flag?(:unix) %}
  require "./unix/file_descriptor"
{% elsif flag?(:win32) %}
  require "./win32/file_descriptor"
{% else %}
  {% raise "No Crystal::System::FileDescriptor implementation available" %}
{% end %}
