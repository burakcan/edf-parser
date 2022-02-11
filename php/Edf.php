<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace {
    class Edf extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Edf $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_header = new \Edf\Header($this->_io, $this, $this->_root);
            $this->_m_body = new \Edf\Body($this->_io, $this, $this->_root);
        }
        protected $_m_header;
        protected $_m_body;
        public function header() { return $this->_m_header; }
        public function body() { return $this->_m_body; }
    }
}

namespace Edf {
    class Header extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Edf $_parent = null, \Edf $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_version = \Kaitai\Struct\Stream::bytesToStr(\Kaitai\Struct\Stream::bytesStripRight($this->_io->readBytes(8), 32), "ASCII");
            $this->_m_patientId = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytes(80), "ASCII");
            $this->_m_recordingId = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytes(80), "ASCII");
            $this->_m_startDate = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytes(8), "ASCII");
            $this->_m_startTime = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytes(8), "ASCII");
            $this->_m_headerNumBytes = \Kaitai\Struct\Stream::bytesToStr(\Kaitai\Struct\Stream::bytesStripRight($this->_io->readBytes(8), 32), "ASCII");
            $this->_m_reserved = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytes(44), "ASCII");
            $this->_m_numDataRecords = \Kaitai\Struct\Stream::bytesToStr(\Kaitai\Struct\Stream::bytesStripRight($this->_io->readBytes(8), 32), "ASCII");
            $this->_m_dataDuration = \Kaitai\Struct\Stream::bytesToStr(\Kaitai\Struct\Stream::bytesStripRight($this->_io->readBytes(8), 32), "ASCII");
            $this->_m_numSignals = \Kaitai\Struct\Stream::bytesToStr(\Kaitai\Struct\Stream::bytesStripRight($this->_io->readBytes(4), 32), "ASCII");
            $this->_m_labels = [];
            $n = $this->ns();
            for ($i = 0; $i < $n; $i++) {
                $this->_m_labels[] = \Kaitai\Struct\Stream::bytesToStr(\Kaitai\Struct\Stream::bytesStripRight($this->_io->readBytes(16), 32), "ASCII");
            }
            $this->_m_transducers = [];
            $n = $this->ns();
            for ($i = 0; $i < $n; $i++) {
                $this->_m_transducers[] = \Kaitai\Struct\Stream::bytesToStr(\Kaitai\Struct\Stream::bytesStripRight($this->_io->readBytes(80), 32), "ASCII");
            }
            $this->_m_physDimensions = [];
            $n = $this->ns();
            for ($i = 0; $i < $n; $i++) {
                $this->_m_physDimensions[] = \Kaitai\Struct\Stream::bytesToStr(\Kaitai\Struct\Stream::bytesStripRight($this->_io->readBytes(8), 32), "ASCII");
            }
            $this->_m_physMins = [];
            $n = $this->ns();
            for ($i = 0; $i < $n; $i++) {
                $this->_m_physMins[] = \Kaitai\Struct\Stream::bytesToStr(\Kaitai\Struct\Stream::bytesStripRight($this->_io->readBytes(8), 32), "ASCII");
            }
            $this->_m_physMaxes = [];
            $n = $this->ns();
            for ($i = 0; $i < $n; $i++) {
                $this->_m_physMaxes[] = \Kaitai\Struct\Stream::bytesToStr(\Kaitai\Struct\Stream::bytesStripRight($this->_io->readBytes(8), 32), "ASCII");
            }
            $this->_m_digMins = [];
            $n = $this->ns();
            for ($i = 0; $i < $n; $i++) {
                $this->_m_digMins[] = \Kaitai\Struct\Stream::bytesToStr(\Kaitai\Struct\Stream::bytesStripRight($this->_io->readBytes(8), 32), "ASCII");
            }
            $this->_m_digMaxes = [];
            $n = $this->ns();
            for ($i = 0; $i < $n; $i++) {
                $this->_m_digMaxes[] = \Kaitai\Struct\Stream::bytesToStr(\Kaitai\Struct\Stream::bytesStripRight($this->_io->readBytes(8), 32), "ASCII");
            }
            $this->_m_prefiltering = [];
            $n = $this->ns();
            for ($i = 0; $i < $n; $i++) {
                $this->_m_prefiltering[] = \Kaitai\Struct\Stream::bytesToStr(\Kaitai\Struct\Stream::bytesStripRight($this->_io->readBytes(80), 32), "ASCII");
            }
            $this->_m_numSamples = [];
            $n = $this->ns();
            for ($i = 0; $i < $n; $i++) {
                $this->_m_numSamples[] = \Kaitai\Struct\Stream::bytesToStr(\Kaitai\Struct\Stream::bytesStripRight($this->_io->readBytes(8), 32), "ASCII");
            }
            $this->_m_signalsReserved = [];
            $n = $this->ns();
            for ($i = 0; $i < $n; $i++) {
                $this->_m_signalsReserved[] = \Kaitai\Struct\Stream::bytesToStr(\Kaitai\Struct\Stream::bytesStripRight($this->_io->readBytes(32), 32), "ASCII");
            }
        }
        protected $_m_ns;
        public function ns() {
            if ($this->_m_ns !== null)
                return $this->_m_ns;
            $this->_m_ns = intval($this->numSignals(), 10);
            return $this->_m_ns;
        }
        protected $_m_ndr;
        public function ndr() {
            if ($this->_m_ndr !== null)
                return $this->_m_ndr;
            $this->_m_ndr = intval($this->numDataRecords(), 10);
            return $this->_m_ndr;
        }
        protected $_m_version;
        protected $_m_patientId;
        protected $_m_recordingId;
        protected $_m_startDate;
        protected $_m_startTime;
        protected $_m_headerNumBytes;
        protected $_m_reserved;
        protected $_m_numDataRecords;
        protected $_m_dataDuration;
        protected $_m_numSignals;
        protected $_m_labels;
        protected $_m_transducers;
        protected $_m_physDimensions;
        protected $_m_physMins;
        protected $_m_physMaxes;
        protected $_m_digMins;
        protected $_m_digMaxes;
        protected $_m_prefiltering;
        protected $_m_numSamples;
        protected $_m_signalsReserved;
        public function version() { return $this->_m_version; }
        public function patientId() { return $this->_m_patientId; }
        public function recordingId() { return $this->_m_recordingId; }
        public function startDate() { return $this->_m_startDate; }
        public function startTime() { return $this->_m_startTime; }
        public function headerNumBytes() { return $this->_m_headerNumBytes; }
        public function reserved() { return $this->_m_reserved; }
        public function numDataRecords() { return $this->_m_numDataRecords; }
        public function dataDuration() { return $this->_m_dataDuration; }
        public function numSignals() { return $this->_m_numSignals; }
        public function labels() { return $this->_m_labels; }
        public function transducers() { return $this->_m_transducers; }
        public function physDimensions() { return $this->_m_physDimensions; }
        public function physMins() { return $this->_m_physMins; }
        public function physMaxes() { return $this->_m_physMaxes; }
        public function digMins() { return $this->_m_digMins; }
        public function digMaxes() { return $this->_m_digMaxes; }
        public function prefiltering() { return $this->_m_prefiltering; }
        public function numSamples() { return $this->_m_numSamples; }
        public function signalsReserved() { return $this->_m_signalsReserved; }
    }
}

namespace Edf {
    class Body extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Edf $_parent = null, \Edf $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_signals = [];
            $n = $this->_root()->header()->ns();
            for ($i = 0; $i < $n; $i++) {
                $this->_m_signals[] = new \Edf\Body\Signal($i, $this->_io, $this, $this->_root);
            }
        }
        protected $_m_signals;
        public function signals() { return $this->_m_signals; }
    }
}

namespace Edf\Body {
    class DataRecording extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Edf\Body\Signal $_parent = null, \Edf $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_data = [];
            $n = intval($this->_root()->header()->numSamples()[$this->_parent()->signalIndex()], 10);
            for ($i = 0; $i < $n; $i++) {
                $this->_m_data[] = $this->_io->readU2le();
            }
        }
        protected $_m_data;
        public function data() { return $this->_m_data; }
    }
}

namespace Edf\Body {
    class Signal extends \Kaitai\Struct\Struct {
        public function __construct(int $signalIndex, \Kaitai\Struct\Stream $_io, \Edf\Body $_parent = null, \Edf $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_m_signalIndex = $signalIndex;
            $this->_read();
        }

        private function _read() {
            $this->_m_recordings = [];
            $n = $this->_root()->header()->ndr();
            for ($i = 0; $i < $n; $i++) {
                $this->_m_recordings[] = new \Edf\Body\DataRecording($this->_io, $this, $this->_root);
            }
        }
        protected $_m_recordings;
        protected $_m_signalIndex;
        public function recordings() { return $this->_m_recordings; }
        public function signalIndex() { return $this->_m_signalIndex; }
    }
}
