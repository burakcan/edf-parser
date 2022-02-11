-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local str_decode = require("string_decode")

Edf = class.class(KaitaiStruct)

function Edf:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function Edf:_read()
  self.header = Edf.Header(self._io, self, self._root)
  self.body = Edf.Body(self._io, self, self._root)
end


Edf.Header = class.class(KaitaiStruct)

function Edf.Header:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function Edf.Header:_read()
  self.version = str_decode.decode(KaitaiStream.bytes_strip_right(self._io:read_bytes(8), 32), "ASCII")
  self.patient_id = str_decode.decode(self._io:read_bytes(80), "ASCII")
  self.recording_id = str_decode.decode(self._io:read_bytes(80), "ASCII")
  self.start_date = str_decode.decode(self._io:read_bytes(8), "ASCII")
  self.start_time = str_decode.decode(self._io:read_bytes(8), "ASCII")
  self.header_num_bytes = str_decode.decode(KaitaiStream.bytes_strip_right(self._io:read_bytes(8), 32), "ASCII")
  self.reserved = str_decode.decode(self._io:read_bytes(44), "ASCII")
  self.num_data_records = str_decode.decode(KaitaiStream.bytes_strip_right(self._io:read_bytes(8), 32), "ASCII")
  self.data_duration = str_decode.decode(KaitaiStream.bytes_strip_right(self._io:read_bytes(8), 32), "ASCII")
  self.num_signals = str_decode.decode(KaitaiStream.bytes_strip_right(self._io:read_bytes(4), 32), "ASCII")
  self.labels = {}
  for i = 0, self.ns - 1 do
    self.labels[i + 1] = str_decode.decode(KaitaiStream.bytes_strip_right(self._io:read_bytes(16), 32), "ASCII")
  end
  self.transducers = {}
  for i = 0, self.ns - 1 do
    self.transducers[i + 1] = str_decode.decode(KaitaiStream.bytes_strip_right(self._io:read_bytes(80), 32), "ASCII")
  end
  self.phys_dimensions = {}
  for i = 0, self.ns - 1 do
    self.phys_dimensions[i + 1] = str_decode.decode(KaitaiStream.bytes_strip_right(self._io:read_bytes(8), 32), "ASCII")
  end
  self.phys_mins = {}
  for i = 0, self.ns - 1 do
    self.phys_mins[i + 1] = str_decode.decode(KaitaiStream.bytes_strip_right(self._io:read_bytes(8), 32), "ASCII")
  end
  self.phys_maxes = {}
  for i = 0, self.ns - 1 do
    self.phys_maxes[i + 1] = str_decode.decode(KaitaiStream.bytes_strip_right(self._io:read_bytes(8), 32), "ASCII")
  end
  self.dig_mins = {}
  for i = 0, self.ns - 1 do
    self.dig_mins[i + 1] = str_decode.decode(KaitaiStream.bytes_strip_right(self._io:read_bytes(8), 32), "ASCII")
  end
  self.dig_maxes = {}
  for i = 0, self.ns - 1 do
    self.dig_maxes[i + 1] = str_decode.decode(KaitaiStream.bytes_strip_right(self._io:read_bytes(8), 32), "ASCII")
  end
  self.prefiltering = {}
  for i = 0, self.ns - 1 do
    self.prefiltering[i + 1] = str_decode.decode(KaitaiStream.bytes_strip_right(self._io:read_bytes(80), 32), "ASCII")
  end
  self.num_samples = {}
  for i = 0, self.ns - 1 do
    self.num_samples[i + 1] = str_decode.decode(KaitaiStream.bytes_strip_right(self._io:read_bytes(8), 32), "ASCII")
  end
  self.signals_reserved = {}
  for i = 0, self.ns - 1 do
    self.signals_reserved[i + 1] = str_decode.decode(KaitaiStream.bytes_strip_right(self._io:read_bytes(32), 32), "ASCII")
  end
end

Edf.Header.property.ns = {}
function Edf.Header.property.ns:get()
  if self._m_ns ~= nil then
    return self._m_ns
  end

  self._m_ns = tonumber(self.num_signals)
  return self._m_ns
end

Edf.Header.property.ndr = {}
function Edf.Header.property.ndr:get()
  if self._m_ndr ~= nil then
    return self._m_ndr
  end

  self._m_ndr = tonumber(self.num_data_records)
  return self._m_ndr
end


Edf.Body = class.class(KaitaiStruct)

function Edf.Body:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function Edf.Body:_read()
  self.signals = {}
  for i = 0, self._root.header.ns - 1 do
    self.signals[i + 1] = Edf.Body.Signal(i, self._io, self, self._root)
  end
end


Edf.Body.DataRecording = class.class(KaitaiStruct)

function Edf.Body.DataRecording:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function Edf.Body.DataRecording:_read()
  self.data = {}
  for i = 0, tonumber(self._root.header.num_samples[self._parent.signal_index + 1]) - 1 do
    self.data[i + 1] = self._io:read_u2le()
  end
end


Edf.Body.Signal = class.class(KaitaiStruct)

function Edf.Body.Signal:_init(signal_index, io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self.signal_index = signal_index
  self:_read()
end

function Edf.Body.Signal:_read()
  self.recordings = {}
  for i = 0, self._root.header.ndr - 1 do
    self.recordings[i + 1] = Edf.Body.DataRecording(self._io, self, self._root)
  end
end


