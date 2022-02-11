// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;

public class Edf extends KaitaiStruct {
    public static Edf fromFile(String fileName) throws IOException {
        return new Edf(new ByteBufferKaitaiStream(fileName));
    }

    public Edf(KaitaiStream _io) {
        this(_io, null, null);
    }

    public Edf(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public Edf(KaitaiStream _io, KaitaiStruct _parent, Edf _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.header = new Header(this._io, this, _root);
        this.body = new Body(this._io, this, _root);
    }
    public static class Header extends KaitaiStruct {
        public static Header fromFile(String fileName) throws IOException {
            return new Header(new ByteBufferKaitaiStream(fileName));
        }

        public Header(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Header(KaitaiStream _io, Edf _parent) {
            this(_io, _parent, null);
        }

        public Header(KaitaiStream _io, Edf _parent, Edf _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.version = new String(KaitaiStream.bytesStripRight(this._io.readBytes(8), (byte) 32), Charset.forName("ASCII"));
            this.patientId = new String(this._io.readBytes(80), Charset.forName("ASCII"));
            this.recordingId = new String(this._io.readBytes(80), Charset.forName("ASCII"));
            this.startDate = new String(this._io.readBytes(8), Charset.forName("ASCII"));
            this.startTime = new String(this._io.readBytes(8), Charset.forName("ASCII"));
            this.headerNumBytes = new String(KaitaiStream.bytesStripRight(this._io.readBytes(8), (byte) 32), Charset.forName("ASCII"));
            this.reserved = new String(this._io.readBytes(44), Charset.forName("ASCII"));
            this.numDataRecords = new String(KaitaiStream.bytesStripRight(this._io.readBytes(8), (byte) 32), Charset.forName("ASCII"));
            this.dataDuration = new String(KaitaiStream.bytesStripRight(this._io.readBytes(8), (byte) 32), Charset.forName("ASCII"));
            this.numSignals = new String(KaitaiStream.bytesStripRight(this._io.readBytes(4), (byte) 32), Charset.forName("ASCII"));
            labels = new ArrayList<String>(((Number) (ns())).intValue());
            for (int i = 0; i < ns(); i++) {
                this.labels.add(new String(KaitaiStream.bytesStripRight(this._io.readBytes(16), (byte) 32), Charset.forName("ASCII")));
            }
            transducers = new ArrayList<String>(((Number) (ns())).intValue());
            for (int i = 0; i < ns(); i++) {
                this.transducers.add(new String(KaitaiStream.bytesStripRight(this._io.readBytes(80), (byte) 32), Charset.forName("ASCII")));
            }
            physDimensions = new ArrayList<String>(((Number) (ns())).intValue());
            for (int i = 0; i < ns(); i++) {
                this.physDimensions.add(new String(KaitaiStream.bytesStripRight(this._io.readBytes(8), (byte) 32), Charset.forName("ASCII")));
            }
            physMins = new ArrayList<String>(((Number) (ns())).intValue());
            for (int i = 0; i < ns(); i++) {
                this.physMins.add(new String(KaitaiStream.bytesStripRight(this._io.readBytes(8), (byte) 32), Charset.forName("ASCII")));
            }
            physMaxes = new ArrayList<String>(((Number) (ns())).intValue());
            for (int i = 0; i < ns(); i++) {
                this.physMaxes.add(new String(KaitaiStream.bytesStripRight(this._io.readBytes(8), (byte) 32), Charset.forName("ASCII")));
            }
            digMins = new ArrayList<String>(((Number) (ns())).intValue());
            for (int i = 0; i < ns(); i++) {
                this.digMins.add(new String(KaitaiStream.bytesStripRight(this._io.readBytes(8), (byte) 32), Charset.forName("ASCII")));
            }
            digMaxes = new ArrayList<String>(((Number) (ns())).intValue());
            for (int i = 0; i < ns(); i++) {
                this.digMaxes.add(new String(KaitaiStream.bytesStripRight(this._io.readBytes(8), (byte) 32), Charset.forName("ASCII")));
            }
            prefiltering = new ArrayList<String>(((Number) (ns())).intValue());
            for (int i = 0; i < ns(); i++) {
                this.prefiltering.add(new String(KaitaiStream.bytesStripRight(this._io.readBytes(80), (byte) 32), Charset.forName("ASCII")));
            }
            numSamples = new ArrayList<String>(((Number) (ns())).intValue());
            for (int i = 0; i < ns(); i++) {
                this.numSamples.add(new String(KaitaiStream.bytesStripRight(this._io.readBytes(8), (byte) 32), Charset.forName("ASCII")));
            }
            signalsReserved = new ArrayList<String>(((Number) (ns())).intValue());
            for (int i = 0; i < ns(); i++) {
                this.signalsReserved.add(new String(KaitaiStream.bytesStripRight(this._io.readBytes(32), (byte) 32), Charset.forName("ASCII")));
            }
        }
        private Integer ns;
        public Integer ns() {
            if (this.ns != null)
                return this.ns;
            int _tmp = (int) (Long.parseLong(numSignals(), 10));
            this.ns = _tmp;
            return this.ns;
        }
        private Integer ndr;
        public Integer ndr() {
            if (this.ndr != null)
                return this.ndr;
            int _tmp = (int) (Long.parseLong(numDataRecords(), 10));
            this.ndr = _tmp;
            return this.ndr;
        }
        private String version;
        private String patientId;
        private String recordingId;
        private String startDate;
        private String startTime;
        private String headerNumBytes;
        private String reserved;
        private String numDataRecords;
        private String dataDuration;
        private String numSignals;
        private ArrayList<String> labels;
        private ArrayList<String> transducers;
        private ArrayList<String> physDimensions;
        private ArrayList<String> physMins;
        private ArrayList<String> physMaxes;
        private ArrayList<String> digMins;
        private ArrayList<String> digMaxes;
        private ArrayList<String> prefiltering;
        private ArrayList<String> numSamples;
        private ArrayList<String> signalsReserved;
        private Edf _root;
        private Edf _parent;
        public String version() { return version; }
        public String patientId() { return patientId; }
        public String recordingId() { return recordingId; }
        public String startDate() { return startDate; }
        public String startTime() { return startTime; }
        public String headerNumBytes() { return headerNumBytes; }
        public String reserved() { return reserved; }
        public String numDataRecords() { return numDataRecords; }
        public String dataDuration() { return dataDuration; }
        public String numSignals() { return numSignals; }
        public ArrayList<String> labels() { return labels; }
        public ArrayList<String> transducers() { return transducers; }
        public ArrayList<String> physDimensions() { return physDimensions; }
        public ArrayList<String> physMins() { return physMins; }
        public ArrayList<String> physMaxes() { return physMaxes; }
        public ArrayList<String> digMins() { return digMins; }
        public ArrayList<String> digMaxes() { return digMaxes; }
        public ArrayList<String> prefiltering() { return prefiltering; }
        public ArrayList<String> numSamples() { return numSamples; }
        public ArrayList<String> signalsReserved() { return signalsReserved; }
        public Edf _root() { return _root; }
        public Edf _parent() { return _parent; }
    }
    public static class Body extends KaitaiStruct {
        public static Body fromFile(String fileName) throws IOException {
            return new Body(new ByteBufferKaitaiStream(fileName));
        }

        public Body(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Body(KaitaiStream _io, Edf _parent) {
            this(_io, _parent, null);
        }

        public Body(KaitaiStream _io, Edf _parent, Edf _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            signals = new ArrayList<Signal>(((Number) (_root.header().ns())).intValue());
            for (int i = 0; i < _root.header().ns(); i++) {
                this.signals.add(new Signal(this._io, this, _root, i));
            }
        }
        public static class DataRecording extends KaitaiStruct {
            public static DataRecording fromFile(String fileName) throws IOException {
                return new DataRecording(new ByteBufferKaitaiStream(fileName));
            }

            public DataRecording(KaitaiStream _io) {
                this(_io, null, null);
            }

            public DataRecording(KaitaiStream _io, Edf.Body.Signal _parent) {
                this(_io, _parent, null);
            }

            public DataRecording(KaitaiStream _io, Edf.Body.Signal _parent, Edf _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
                _read();
            }
            private void _read() {
                data = new ArrayList<Integer>(((Number) (Long.parseLong(_root.header().numSamples().get((int) _parent().signalIndex()), 10))).intValue());
                for (int i = 0; i < Long.parseLong(_root.header().numSamples().get((int) _parent().signalIndex()), 10); i++) {
                    this.data.add(this._io.readU2le());
                }
            }
            private ArrayList<Integer> data;
            private Edf _root;
            private Edf.Body.Signal _parent;
            public ArrayList<Integer> data() { return data; }
            public Edf _root() { return _root; }
            public Edf.Body.Signal _parent() { return _parent; }
        }
        public static class Signal extends KaitaiStruct {

            public Signal(KaitaiStream _io, int signalIndex) {
                this(_io, null, null, signalIndex);
            }

            public Signal(KaitaiStream _io, Edf.Body _parent, int signalIndex) {
                this(_io, _parent, null, signalIndex);
            }

            public Signal(KaitaiStream _io, Edf.Body _parent, Edf _root, int signalIndex) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
                this.signalIndex = signalIndex;
                _read();
            }
            private void _read() {
                recordings = new ArrayList<DataRecording>(((Number) (_root.header().ndr())).intValue());
                for (int i = 0; i < _root.header().ndr(); i++) {
                    this.recordings.add(new DataRecording(this._io, this, _root));
                }
            }
            private ArrayList<DataRecording> recordings;
            private int signalIndex;
            private Edf _root;
            private Edf.Body _parent;
            public ArrayList<DataRecording> recordings() { return recordings; }
            public int signalIndex() { return signalIndex; }
            public Edf _root() { return _root; }
            public Edf.Body _parent() { return _parent; }
        }
        private ArrayList<Signal> signals;
        private Edf _root;
        private Edf _parent;
        public ArrayList<Signal> signals() { return signals; }
        public Edf _root() { return _root; }
        public Edf _parent() { return _parent; }
    }
    private Header header;
    private Body body;
    private Edf _root;
    private KaitaiStruct _parent;
    public Header header() { return header; }
    public Body body() { return body; }
    public Edf _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
