module Rpush
  module Client
    module ActiveRecord
      module Wns
        class RawXmlNotification < RawNotification

          def data=(xml_data)
            return unless xml_data
            fail ArgumentError, 'must be a String' unless xml_data.is_a?(String)
            write_attribute(:data, xml_data)
          end

          def data
            read_attribute(:data)
          end

          def payload_data_size
            data.bytesize
          end

        end
      end
    end
  end
end
