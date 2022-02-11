# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

from pkg_resources import parse_version
import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if parse_version(kaitaistruct.__version__) < parse_version('0.9'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.9 or later is required, but you have %s" % (kaitaistruct.__version__))

class Edf(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.header = Edf.Header(self._io, self, self._root)
        self.body = Edf.Body(self._io, self, self._root)

    class Header(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self._read()

        def _read(self):
            self.version = (KaitaiStream.bytes_strip_right(self._io.read_bytes(8), 32)).decode(u"ASCII")
            self.patient_id = (self._io.read_bytes(80)).decode(u"ASCII")
            self.recording_id = (self._io.read_bytes(80)).decode(u"ASCII")
            self.start_date = (self._io.read_bytes(8)).decode(u"ASCII")
            self.start_time = (self._io.read_bytes(8)).decode(u"ASCII")
            self.header_num_bytes = (KaitaiStream.bytes_strip_right(self._io.read_bytes(8), 32)).decode(u"ASCII")
            self.reserved = (self._io.read_bytes(44)).decode(u"ASCII")
            self.num_data_records = (KaitaiStream.bytes_strip_right(self._io.read_bytes(8), 32)).decode(u"ASCII")
            self.data_duration = (KaitaiStream.bytes_strip_right(self._io.read_bytes(8), 32)).decode(u"ASCII")
            self.num_signals = (KaitaiStream.bytes_strip_right(self._io.read_bytes(4), 32)).decode(u"ASCII")
            self.labels = [None] * (self.ns)
            for i in range(self.ns):
                self.labels[i] = (KaitaiStream.bytes_strip_right(self._io.read_bytes(16), 32)).decode(u"ASCII")

            self.transducers = [None] * (self.ns)
            for i in range(self.ns):
                self.transducers[i] = (KaitaiStream.bytes_strip_right(self._io.read_bytes(80), 32)).decode(u"ASCII")

            self.phys_dimensions = [None] * (self.ns)
            for i in range(self.ns):
                self.phys_dimensions[i] = (KaitaiStream.bytes_strip_right(self._io.read_bytes(8), 32)).decode(u"ASCII")

            self.phys_mins = [None] * (self.ns)
            for i in range(self.ns):
                self.phys_mins[i] = (KaitaiStream.bytes_strip_right(self._io.read_bytes(8), 32)).decode(u"ASCII")

            self.phys_maxes = [None] * (self.ns)
            for i in range(self.ns):
                self.phys_maxes[i] = (KaitaiStream.bytes_strip_right(self._io.read_bytes(8), 32)).decode(u"ASCII")

            self.dig_mins = [None] * (self.ns)
            for i in range(self.ns):
                self.dig_mins[i] = (KaitaiStream.bytes_strip_right(self._io.read_bytes(8), 32)).decode(u"ASCII")

            self.dig_maxes = [None] * (self.ns)
            for i in range(self.ns):
                self.dig_maxes[i] = (KaitaiStream.bytes_strip_right(self._io.read_bytes(8), 32)).decode(u"ASCII")

            self.prefiltering = [None] * (self.ns)
            for i in range(self.ns):
                self.prefiltering[i] = (KaitaiStream.bytes_strip_right(self._io.read_bytes(80), 32)).decode(u"ASCII")

            self.num_samples = [None] * (self.ns)
            for i in range(self.ns):
                self.num_samples[i] = (KaitaiStream.bytes_strip_right(self._io.read_bytes(8), 32)).decode(u"ASCII")

            self.signals_reserved = [None] * (self.ns)
            for i in range(self.ns):
                self.signals_reserved[i] = (KaitaiStream.bytes_strip_right(self._io.read_bytes(32), 32)).decode(u"ASCII")


        @property
        def ns(self):
            if hasattr(self, '_m_ns'):
                return self._m_ns if hasattr(self, '_m_ns') else None

            self._m_ns = int(self.num_signals)
            return self._m_ns if hasattr(self, '_m_ns') else None

        @property
        def ndr(self):
            if hasattr(self, '_m_ndr'):
                return self._m_ndr if hasattr(self, '_m_ndr') else None

            self._m_ndr = int(self.num_data_records)
            return self._m_ndr if hasattr(self, '_m_ndr') else None


    class Body(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self._read()

        def _read(self):
            self.signals = [None] * (self._root.header.ns)
            for i in range(self._root.header.ns):
                self.signals[i] = Edf.Body.Signal(i, self._io, self, self._root)


        class DataRecording(KaitaiStruct):
            def __init__(self, _io, _parent=None, _root=None):
                self._io = _io
                self._parent = _parent
                self._root = _root if _root else self
                self._read()

            def _read(self):
                self.data = [None] * (int(self._root.header.num_samples[self._parent.signal_index]))
                for i in range(int(self._root.header.num_samples[self._parent.signal_index])):
                    self.data[i] = self._io.read_u2le()



        class Signal(KaitaiStruct):
            def __init__(self, signal_index, _io, _parent=None, _root=None):
                self._io = _io
                self._parent = _parent
                self._root = _root if _root else self
                self.signal_index = signal_index
                self._read()

            def _read(self):
                self.recordings = [None] * (self._root.header.ndr)
                for i in range(self._root.header.ndr):
                    self.recordings[i] = Edf.Body.DataRecording(self._io, self, self._root)





