// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;
using System;

namespace Kaitai
{
    public partial class Edf : KaitaiStruct
    {
        public static Edf FromFile(string fileName)
        {
            return new Edf(new KaitaiStream(fileName));
        }

        public Edf(KaitaiStream p__io, KaitaiStruct p__parent = null, Edf p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _header = new Header(m_io, this, m_root);
            _body = new Body(m_io, this, m_root);
        }
        public partial class Header : KaitaiStruct
        {
            public static Header FromFile(string fileName)
            {
                return new Header(new KaitaiStream(fileName));
            }

            public Header(KaitaiStream p__io, Edf p__parent = null, Edf p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                f_ns = false;
                f_ndr = false;
                _read();
            }
            private void _read()
            {
                _version = System.Text.Encoding.GetEncoding("ASCII").GetString(KaitaiStream.BytesStripRight(m_io.ReadBytes(8), 32));
                _patientId = System.Text.Encoding.GetEncoding("ASCII").GetString(m_io.ReadBytes(80));
                _recordingId = System.Text.Encoding.GetEncoding("ASCII").GetString(m_io.ReadBytes(80));
                _startDate = System.Text.Encoding.GetEncoding("ASCII").GetString(m_io.ReadBytes(8));
                _startTime = System.Text.Encoding.GetEncoding("ASCII").GetString(m_io.ReadBytes(8));
                _headerNumBytes = System.Text.Encoding.GetEncoding("ASCII").GetString(KaitaiStream.BytesStripRight(m_io.ReadBytes(8), 32));
                _reserved = System.Text.Encoding.GetEncoding("ASCII").GetString(m_io.ReadBytes(44));
                _numDataRecords = System.Text.Encoding.GetEncoding("ASCII").GetString(KaitaiStream.BytesStripRight(m_io.ReadBytes(8), 32));
                _dataDuration = System.Text.Encoding.GetEncoding("ASCII").GetString(KaitaiStream.BytesStripRight(m_io.ReadBytes(8), 32));
                _numSignals = System.Text.Encoding.GetEncoding("ASCII").GetString(KaitaiStream.BytesStripRight(m_io.ReadBytes(4), 32));
                _labels = new List<string>((int) (Ns));
                for (var i = 0; i < Ns; i++)
                {
                    _labels.Add(System.Text.Encoding.GetEncoding("ASCII").GetString(KaitaiStream.BytesStripRight(m_io.ReadBytes(16), 32)));
                }
                _transducers = new List<string>((int) (Ns));
                for (var i = 0; i < Ns; i++)
                {
                    _transducers.Add(System.Text.Encoding.GetEncoding("ASCII").GetString(KaitaiStream.BytesStripRight(m_io.ReadBytes(80), 32)));
                }
                _physDimensions = new List<string>((int) (Ns));
                for (var i = 0; i < Ns; i++)
                {
                    _physDimensions.Add(System.Text.Encoding.GetEncoding("ASCII").GetString(KaitaiStream.BytesStripRight(m_io.ReadBytes(8), 32)));
                }
                _physMins = new List<string>((int) (Ns));
                for (var i = 0; i < Ns; i++)
                {
                    _physMins.Add(System.Text.Encoding.GetEncoding("ASCII").GetString(KaitaiStream.BytesStripRight(m_io.ReadBytes(8), 32)));
                }
                _physMaxes = new List<string>((int) (Ns));
                for (var i = 0; i < Ns; i++)
                {
                    _physMaxes.Add(System.Text.Encoding.GetEncoding("ASCII").GetString(KaitaiStream.BytesStripRight(m_io.ReadBytes(8), 32)));
                }
                _digMins = new List<string>((int) (Ns));
                for (var i = 0; i < Ns; i++)
                {
                    _digMins.Add(System.Text.Encoding.GetEncoding("ASCII").GetString(KaitaiStream.BytesStripRight(m_io.ReadBytes(8), 32)));
                }
                _digMaxes = new List<string>((int) (Ns));
                for (var i = 0; i < Ns; i++)
                {
                    _digMaxes.Add(System.Text.Encoding.GetEncoding("ASCII").GetString(KaitaiStream.BytesStripRight(m_io.ReadBytes(8), 32)));
                }
                _prefiltering = new List<string>((int) (Ns));
                for (var i = 0; i < Ns; i++)
                {
                    _prefiltering.Add(System.Text.Encoding.GetEncoding("ASCII").GetString(KaitaiStream.BytesStripRight(m_io.ReadBytes(80), 32)));
                }
                _numSamples = new List<string>((int) (Ns));
                for (var i = 0; i < Ns; i++)
                {
                    _numSamples.Add(System.Text.Encoding.GetEncoding("ASCII").GetString(KaitaiStream.BytesStripRight(m_io.ReadBytes(8), 32)));
                }
                _signalsReserved = new List<string>((int) (Ns));
                for (var i = 0; i < Ns; i++)
                {
                    _signalsReserved.Add(System.Text.Encoding.GetEncoding("ASCII").GetString(KaitaiStream.BytesStripRight(m_io.ReadBytes(32), 32)));
                }
            }
            private bool f_ns;
            private int _ns;
            public int Ns
            {
                get
                {
                    if (f_ns)
                        return _ns;
                    _ns = (int) (Convert.ToInt64(NumSignals, 10));
                    f_ns = true;
                    return _ns;
                }
            }
            private bool f_ndr;
            private int _ndr;
            public int Ndr
            {
                get
                {
                    if (f_ndr)
                        return _ndr;
                    _ndr = (int) (Convert.ToInt64(NumDataRecords, 10));
                    f_ndr = true;
                    return _ndr;
                }
            }
            private string _version;
            private string _patientId;
            private string _recordingId;
            private string _startDate;
            private string _startTime;
            private string _headerNumBytes;
            private string _reserved;
            private string _numDataRecords;
            private string _dataDuration;
            private string _numSignals;
            private List<string> _labels;
            private List<string> _transducers;
            private List<string> _physDimensions;
            private List<string> _physMins;
            private List<string> _physMaxes;
            private List<string> _digMins;
            private List<string> _digMaxes;
            private List<string> _prefiltering;
            private List<string> _numSamples;
            private List<string> _signalsReserved;
            private Edf m_root;
            private Edf m_parent;
            public string Version { get { return _version; } }
            public string PatientId { get { return _patientId; } }
            public string RecordingId { get { return _recordingId; } }
            public string StartDate { get { return _startDate; } }
            public string StartTime { get { return _startTime; } }
            public string HeaderNumBytes { get { return _headerNumBytes; } }
            public string Reserved { get { return _reserved; } }
            public string NumDataRecords { get { return _numDataRecords; } }
            public string DataDuration { get { return _dataDuration; } }
            public string NumSignals { get { return _numSignals; } }
            public List<string> Labels { get { return _labels; } }
            public List<string> Transducers { get { return _transducers; } }
            public List<string> PhysDimensions { get { return _physDimensions; } }
            public List<string> PhysMins { get { return _physMins; } }
            public List<string> PhysMaxes { get { return _physMaxes; } }
            public List<string> DigMins { get { return _digMins; } }
            public List<string> DigMaxes { get { return _digMaxes; } }
            public List<string> Prefiltering { get { return _prefiltering; } }
            public List<string> NumSamples { get { return _numSamples; } }
            public List<string> SignalsReserved { get { return _signalsReserved; } }
            public Edf M_Root { get { return m_root; } }
            public Edf M_Parent { get { return m_parent; } }
        }
        public partial class Body : KaitaiStruct
        {
            public static Body FromFile(string fileName)
            {
                return new Body(new KaitaiStream(fileName));
            }

            public Body(KaitaiStream p__io, Edf p__parent = null, Edf p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _signals = new List<Signal>((int) (M_Root.Header.Ns));
                for (var i = 0; i < M_Root.Header.Ns; i++)
                {
                    _signals.Add(new Signal(i, m_io, this, m_root));
                }
            }
            public partial class DataRecording : KaitaiStruct
            {
                public static DataRecording FromFile(string fileName)
                {
                    return new DataRecording(new KaitaiStream(fileName));
                }

                public DataRecording(KaitaiStream p__io, Edf.Body.Signal p__parent = null, Edf p__root = null) : base(p__io)
                {
                    m_parent = p__parent;
                    m_root = p__root;
                    _read();
                }
                private void _read()
                {
                    _data = new List<ushort>((int) (Convert.ToInt64(M_Root.Header.NumSamples[M_Parent.SignalIndex], 10)));
                    for (var i = 0; i < Convert.ToInt64(M_Root.Header.NumSamples[M_Parent.SignalIndex], 10); i++)
                    {
                        _data.Add(m_io.ReadU2le());
                    }
                }
                private List<ushort> _data;
                private Edf m_root;
                private Edf.Body.Signal m_parent;
                public List<ushort> Data { get { return _data; } }
                public Edf M_Root { get { return m_root; } }
                public Edf.Body.Signal M_Parent { get { return m_parent; } }
            }
            public partial class Signal : KaitaiStruct
            {
                public Signal(int p_signalIndex, KaitaiStream p__io, Edf.Body p__parent = null, Edf p__root = null) : base(p__io)
                {
                    m_parent = p__parent;
                    m_root = p__root;
                    _signalIndex = p_signalIndex;
                    _read();
                }
                private void _read()
                {
                    _recordings = new List<DataRecording>((int) (M_Root.Header.Ndr));
                    for (var i = 0; i < M_Root.Header.Ndr; i++)
                    {
                        _recordings.Add(new DataRecording(m_io, this, m_root));
                    }
                }
                private List<DataRecording> _recordings;
                private int _signalIndex;
                private Edf m_root;
                private Edf.Body m_parent;
                public List<DataRecording> Recordings { get { return _recordings; } }
                public int SignalIndex { get { return _signalIndex; } }
                public Edf M_Root { get { return m_root; } }
                public Edf.Body M_Parent { get { return m_parent; } }
            }
            private List<Signal> _signals;
            private Edf m_root;
            private Edf m_parent;
            public List<Signal> Signals { get { return _signals; } }
            public Edf M_Root { get { return m_root; } }
            public Edf M_Parent { get { return m_parent; } }
        }
        private Header _header;
        private Body _body;
        private Edf m_root;
        private KaitaiStruct m_parent;
        public Header Header { get { return _header; } }
        public Body Body { get { return _body; } }
        public Edf M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
