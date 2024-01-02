# frozen_string_literal: true

# Example consumer that prints messages payloads
class PersonConsumer < ApplicationConsumer
  def consume
    messages.each { |message| puts message.payload }
  end

  # Run anything upon partition being revoked
  # def revoked
  # end

  # Define here any teardown things you want when Karafka server stops
  # def shutdown
  # end
end

# Notes:
# avro = AvroTurf.new(schemas_path: 'lib/avro/schemas/')
# message = avro.encode({ 'full_name' => 'Nick', 'age' => 30, 'computer' => { 'brand' => 'mac' } }, schema_name: 'person', validate: true)
# avro.decode(message, schema_name: "person")