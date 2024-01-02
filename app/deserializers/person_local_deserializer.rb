class PersonLocalDeserializer
  AVRO = AvroTurf.new(schemas_path: 'app/schemas/')

  def call(message)
    AVRO.decode(
      message.raw_payload,
      schema_name: 'person'
    )
  end
end