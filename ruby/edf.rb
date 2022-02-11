# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.9')
  raise "Incompatible Kaitai Struct Ruby API: 0.9 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class Edf < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @header = Header.new(@_io, self, @_root)
    @body = Body.new(@_io, self, @_root)
    self
  end
  class Header < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @version = (Kaitai::Struct::Stream::bytes_strip_right(@_io.read_bytes(8), 32)).force_encoding("ASCII")
      @patient_id = (@_io.read_bytes(80)).force_encoding("ASCII")
      @recording_id = (@_io.read_bytes(80)).force_encoding("ASCII")
      @start_date = (@_io.read_bytes(8)).force_encoding("ASCII")
      @start_time = (@_io.read_bytes(8)).force_encoding("ASCII")
      @header_num_bytes = (Kaitai::Struct::Stream::bytes_strip_right(@_io.read_bytes(8), 32)).force_encoding("ASCII")
      @reserved = (@_io.read_bytes(44)).force_encoding("ASCII")
      @num_data_records = (Kaitai::Struct::Stream::bytes_strip_right(@_io.read_bytes(8), 32)).force_encoding("ASCII")
      @data_duration = (Kaitai::Struct::Stream::bytes_strip_right(@_io.read_bytes(8), 32)).force_encoding("ASCII")
      @num_signals = (Kaitai::Struct::Stream::bytes_strip_right(@_io.read_bytes(4), 32)).force_encoding("ASCII")
      @labels = Array.new(ns)
      (ns).times { |i|
        @labels[i] = (Kaitai::Struct::Stream::bytes_strip_right(@_io.read_bytes(16), 32)).force_encoding("ASCII")
      }
      @transducers = Array.new(ns)
      (ns).times { |i|
        @transducers[i] = (Kaitai::Struct::Stream::bytes_strip_right(@_io.read_bytes(80), 32)).force_encoding("ASCII")
      }
      @phys_dimensions = Array.new(ns)
      (ns).times { |i|
        @phys_dimensions[i] = (Kaitai::Struct::Stream::bytes_strip_right(@_io.read_bytes(8), 32)).force_encoding("ASCII")
      }
      @phys_mins = Array.new(ns)
      (ns).times { |i|
        @phys_mins[i] = (Kaitai::Struct::Stream::bytes_strip_right(@_io.read_bytes(8), 32)).force_encoding("ASCII")
      }
      @phys_maxes = Array.new(ns)
      (ns).times { |i|
        @phys_maxes[i] = (Kaitai::Struct::Stream::bytes_strip_right(@_io.read_bytes(8), 32)).force_encoding("ASCII")
      }
      @dig_mins = Array.new(ns)
      (ns).times { |i|
        @dig_mins[i] = (Kaitai::Struct::Stream::bytes_strip_right(@_io.read_bytes(8), 32)).force_encoding("ASCII")
      }
      @dig_maxes = Array.new(ns)
      (ns).times { |i|
        @dig_maxes[i] = (Kaitai::Struct::Stream::bytes_strip_right(@_io.read_bytes(8), 32)).force_encoding("ASCII")
      }
      @prefiltering = Array.new(ns)
      (ns).times { |i|
        @prefiltering[i] = (Kaitai::Struct::Stream::bytes_strip_right(@_io.read_bytes(80), 32)).force_encoding("ASCII")
      }
      @num_samples = Array.new(ns)
      (ns).times { |i|
        @num_samples[i] = (Kaitai::Struct::Stream::bytes_strip_right(@_io.read_bytes(8), 32)).force_encoding("ASCII")
      }
      @signals_reserved = Array.new(ns)
      (ns).times { |i|
        @signals_reserved[i] = (Kaitai::Struct::Stream::bytes_strip_right(@_io.read_bytes(32), 32)).force_encoding("ASCII")
      }
      self
    end
    def ns
      return @ns unless @ns.nil?
      @ns = num_signals.to_i
      @ns
    end
    def ndr
      return @ndr unless @ndr.nil?
      @ndr = num_data_records.to_i
      @ndr
    end
    attr_reader :version
    attr_reader :patient_id
    attr_reader :recording_id
    attr_reader :start_date
    attr_reader :start_time
    attr_reader :header_num_bytes
    attr_reader :reserved
    attr_reader :num_data_records
    attr_reader :data_duration
    attr_reader :num_signals
    attr_reader :labels
    attr_reader :transducers
    attr_reader :phys_dimensions
    attr_reader :phys_mins
    attr_reader :phys_maxes
    attr_reader :dig_mins
    attr_reader :dig_maxes
    attr_reader :prefiltering
    attr_reader :num_samples
    attr_reader :signals_reserved
  end
  class Body < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @signals = Array.new(_root.header.ns)
      (_root.header.ns).times { |i|
        @signals[i] = Signal.new(@_io, self, @_root, i)
      }
      self
    end
    class DataRecording < Kaitai::Struct::Struct
      def initialize(_io, _parent = nil, _root = self)
        super(_io, _parent, _root)
        _read
      end

      def _read
        @data = Array.new(_root.header.num_samples[_parent.signal_index].to_i)
        (_root.header.num_samples[_parent.signal_index].to_i).times { |i|
          @data[i] = @_io.read_u2le
        }
        self
      end
      attr_reader :data
    end
    class Signal < Kaitai::Struct::Struct
      def initialize(_io, _parent = nil, _root = self, signal_index)
        super(_io, _parent, _root)
        @signal_index = signal_index
        _read
      end

      def _read
        @recordings = Array.new(_root.header.ndr)
        (_root.header.ndr).times { |i|
          @recordings[i] = DataRecording.new(@_io, self, @_root)
        }
        self
      end
      attr_reader :recordings
      attr_reader :signal_index
    end
    attr_reader :signals
  end
  attr_reader :header
  attr_reader :body
end
