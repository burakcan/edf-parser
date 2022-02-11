// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.Edf = factory(root.KaitaiStream);
  }
}(this, function (KaitaiStream) {
var Edf = (function() {
  function Edf(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  Edf.prototype._read = function() {
    this.header = new Header(this._io, this, this._root);
    this.body = new Body(this._io, this, this._root);
  }

  var Header = Edf.Header = (function() {
    function Header(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    Header.prototype._read = function() {
      this.version = KaitaiStream.bytesToStr(KaitaiStream.bytesStripRight(this._io.readBytes(8), 32), "ASCII");
      this.patientId = KaitaiStream.bytesToStr(this._io.readBytes(80), "ASCII");
      this.recordingId = KaitaiStream.bytesToStr(this._io.readBytes(80), "ASCII");
      this.startDate = KaitaiStream.bytesToStr(this._io.readBytes(8), "ASCII");
      this.startTime = KaitaiStream.bytesToStr(this._io.readBytes(8), "ASCII");
      this.headerNumBytes = KaitaiStream.bytesToStr(KaitaiStream.bytesStripRight(this._io.readBytes(8), 32), "ASCII");
      this.reserved = KaitaiStream.bytesToStr(this._io.readBytes(44), "ASCII");
      this.numDataRecords = KaitaiStream.bytesToStr(KaitaiStream.bytesStripRight(this._io.readBytes(8), 32), "ASCII");
      this.dataDuration = KaitaiStream.bytesToStr(KaitaiStream.bytesStripRight(this._io.readBytes(8), 32), "ASCII");
      this.numSignals = KaitaiStream.bytesToStr(KaitaiStream.bytesStripRight(this._io.readBytes(4), 32), "ASCII");
      this.labels = new Array(this.ns);
      for (var i = 0; i < this.ns; i++) {
        this.labels[i] = KaitaiStream.bytesToStr(KaitaiStream.bytesStripRight(this._io.readBytes(16), 32), "ASCII");
      }
      this.transducers = new Array(this.ns);
      for (var i = 0; i < this.ns; i++) {
        this.transducers[i] = KaitaiStream.bytesToStr(KaitaiStream.bytesStripRight(this._io.readBytes(80), 32), "ASCII");
      }
      this.physDimensions = new Array(this.ns);
      for (var i = 0; i < this.ns; i++) {
        this.physDimensions[i] = KaitaiStream.bytesToStr(KaitaiStream.bytesStripRight(this._io.readBytes(8), 32), "ASCII");
      }
      this.physMins = new Array(this.ns);
      for (var i = 0; i < this.ns; i++) {
        this.physMins[i] = KaitaiStream.bytesToStr(KaitaiStream.bytesStripRight(this._io.readBytes(8), 32), "ASCII");
      }
      this.physMaxes = new Array(this.ns);
      for (var i = 0; i < this.ns; i++) {
        this.physMaxes[i] = KaitaiStream.bytesToStr(KaitaiStream.bytesStripRight(this._io.readBytes(8), 32), "ASCII");
      }
      this.digMins = new Array(this.ns);
      for (var i = 0; i < this.ns; i++) {
        this.digMins[i] = KaitaiStream.bytesToStr(KaitaiStream.bytesStripRight(this._io.readBytes(8), 32), "ASCII");
      }
      this.digMaxes = new Array(this.ns);
      for (var i = 0; i < this.ns; i++) {
        this.digMaxes[i] = KaitaiStream.bytesToStr(KaitaiStream.bytesStripRight(this._io.readBytes(8), 32), "ASCII");
      }
      this.prefiltering = new Array(this.ns);
      for (var i = 0; i < this.ns; i++) {
        this.prefiltering[i] = KaitaiStream.bytesToStr(KaitaiStream.bytesStripRight(this._io.readBytes(80), 32), "ASCII");
      }
      this.numSamples = new Array(this.ns);
      for (var i = 0; i < this.ns; i++) {
        this.numSamples[i] = KaitaiStream.bytesToStr(KaitaiStream.bytesStripRight(this._io.readBytes(8), 32), "ASCII");
      }
      this.signalsReserved = new Array(this.ns);
      for (var i = 0; i < this.ns; i++) {
        this.signalsReserved[i] = KaitaiStream.bytesToStr(KaitaiStream.bytesStripRight(this._io.readBytes(32), 32), "ASCII");
      }
    }
    Object.defineProperty(Header.prototype, 'ns', {
      get: function() {
        if (this._m_ns !== undefined)
          return this._m_ns;
        this._m_ns = Number.parseInt(this.numSignals, 10);
        return this._m_ns;
      }
    });
    Object.defineProperty(Header.prototype, 'ndr', {
      get: function() {
        if (this._m_ndr !== undefined)
          return this._m_ndr;
        this._m_ndr = Number.parseInt(this.numDataRecords, 10);
        return this._m_ndr;
      }
    });

    return Header;
  })();

  var Body = Edf.Body = (function() {
    function Body(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    Body.prototype._read = function() {
      this.signals = new Array(this._root.header.ns);
      for (var i = 0; i < this._root.header.ns; i++) {
        this.signals[i] = new Signal(this._io, this, this._root, i);
      }
    }

    var DataRecording = Body.DataRecording = (function() {
      function DataRecording(_io, _parent, _root) {
        this._io = _io;
        this._parent = _parent;
        this._root = _root || this;

        this._read();
      }
      DataRecording.prototype._read = function() {
        this.data = new Array(Number.parseInt(this._root.header.numSamples[this._parent.signalIndex], 10));
        for (var i = 0; i < Number.parseInt(this._root.header.numSamples[this._parent.signalIndex], 10); i++) {
          this.data[i] = this._io.readU2le();
        }
      }

      return DataRecording;
    })();

    var Signal = Body.Signal = (function() {
      function Signal(_io, _parent, _root, signalIndex) {
        this._io = _io;
        this._parent = _parent;
        this._root = _root || this;
        this.signalIndex = signalIndex;

        this._read();
      }
      Signal.prototype._read = function() {
        this.recordings = new Array(this._root.header.ndr);
        for (var i = 0; i < this._root.header.ndr; i++) {
          this.recordings[i] = new DataRecording(this._io, this, this._root);
        }
      }

      return Signal;
    })();

    return Body;
  })();

  return Edf;
})();
return Edf;
}));
