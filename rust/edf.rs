// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use std::option::Option;
use std::boxed::Box;
use std::io::Result;
use std::io::Cursor;
use std::vec::Vec;
use std::default::Default;
use kaitai_struct::KaitaiStream;
use kaitai_struct::KaitaiStruct;

#[derive(Default)]
pub struct Edf {
    pub header: Box<Edf__Header>,
    pub body: Box<Edf__Body>,
}

impl KaitaiStruct for Edf {
    fn new<S: KaitaiStream>(stream: &mut S,
                            _parent: &Option<Box<KaitaiStruct>>,
                            _root: &Option<Box<KaitaiStruct>>)
                            -> Result<Self>
        where Self: Sized {
        let mut s: Self = Default::default();

        s.stream = stream;
        s.read(stream, _parent, _root)?;

        Ok(s)
    }


    fn read<S: KaitaiStream>(&mut self,
                             stream: &mut S,
                             _parent: &Option<Box<KaitaiStruct>>,
                             _root: &Option<Box<KaitaiStruct>>)
                             -> Result<()>
        where Self: Sized {
        self.header = Box::new(Edf__Header::new(self.stream, self, _root)?);
        self.body = Box::new(Edf__Body::new(self.stream, self, _root)?);
    }
}

impl Edf {
}
#[derive(Default)]
pub struct Edf__Header {
    pub version: String,
    pub patientId: String,
    pub recordingId: String,
    pub startDate: String,
    pub startTime: String,
    pub headerNumBytes: String,
    pub reserved: String,
    pub numDataRecords: String,
    pub dataDuration: String,
    pub numSignals: String,
    pub labels: Vec<String>,
    pub transducers: Vec<String>,
    pub physDimensions: Vec<String>,
    pub physMins: Vec<String>,
    pub physMaxes: Vec<String>,
    pub digMins: Vec<String>,
    pub digMaxes: Vec<String>,
    pub prefiltering: Vec<String>,
    pub numSamples: Vec<String>,
    pub signalsReserved: Vec<String>,
    pub ns: Option<i32>,
    pub ndr: Option<i32>,
}

impl KaitaiStruct for Edf__Header {
    fn new<S: KaitaiStream>(stream: &mut S,
                            _parent: &Option<Box<KaitaiStruct>>,
                            _root: &Option<Box<KaitaiStruct>>)
                            -> Result<Self>
        where Self: Sized {
        let mut s: Self = Default::default();

        s.stream = stream;
        s.read(stream, _parent, _root)?;

        Ok(s)
    }


    fn read<S: KaitaiStream>(&mut self,
                             stream: &mut S,
                             _parent: &Option<Box<KaitaiStruct>>,
                             _root: &Option<Box<KaitaiStruct>>)
                             -> Result<()>
        where Self: Sized {
        self.version = String::from_utf8_lossy(&mut S::bytesStripRight(self.stream.read_bytes(8)?, 32));
        self.patientId = String::from_utf8_lossy(self.stream.read_bytes(80)?);
        self.recordingId = String::from_utf8_lossy(self.stream.read_bytes(80)?);
        self.startDate = String::from_utf8_lossy(self.stream.read_bytes(8)?);
        self.startTime = String::from_utf8_lossy(self.stream.read_bytes(8)?);
        self.headerNumBytes = String::from_utf8_lossy(&mut S::bytesStripRight(self.stream.read_bytes(8)?, 32));
        self.reserved = String::from_utf8_lossy(self.stream.read_bytes(44)?);
        self.numDataRecords = String::from_utf8_lossy(&mut S::bytesStripRight(self.stream.read_bytes(8)?, 32));
        self.dataDuration = String::from_utf8_lossy(&mut S::bytesStripRight(self.stream.read_bytes(8)?, 32));
        self.numSignals = String::from_utf8_lossy(&mut S::bytesStripRight(self.stream.read_bytes(4)?, 32));
        self.labels = vec!();
        for i in 0..self.ns {
            self.labels.push(String::from_utf8_lossy(&mut S::bytesStripRight(self.stream.read_bytes(16)?, 32)));
        }
        self.transducers = vec!();
        for i in 0..self.ns {
            self.transducers.push(String::from_utf8_lossy(&mut S::bytesStripRight(self.stream.read_bytes(80)?, 32)));
        }
        self.physDimensions = vec!();
        for i in 0..self.ns {
            self.physDimensions.push(String::from_utf8_lossy(&mut S::bytesStripRight(self.stream.read_bytes(8)?, 32)));
        }
        self.physMins = vec!();
        for i in 0..self.ns {
            self.physMins.push(String::from_utf8_lossy(&mut S::bytesStripRight(self.stream.read_bytes(8)?, 32)));
        }
        self.physMaxes = vec!();
        for i in 0..self.ns {
            self.physMaxes.push(String::from_utf8_lossy(&mut S::bytesStripRight(self.stream.read_bytes(8)?, 32)));
        }
        self.digMins = vec!();
        for i in 0..self.ns {
            self.digMins.push(String::from_utf8_lossy(&mut S::bytesStripRight(self.stream.read_bytes(8)?, 32)));
        }
        self.digMaxes = vec!();
        for i in 0..self.ns {
            self.digMaxes.push(String::from_utf8_lossy(&mut S::bytesStripRight(self.stream.read_bytes(8)?, 32)));
        }
        self.prefiltering = vec!();
        for i in 0..self.ns {
            self.prefiltering.push(String::from_utf8_lossy(&mut S::bytesStripRight(self.stream.read_bytes(80)?, 32)));
        }
        self.numSamples = vec!();
        for i in 0..self.ns {
            self.numSamples.push(String::from_utf8_lossy(&mut S::bytesStripRight(self.stream.read_bytes(8)?, 32)));
        }
        self.signalsReserved = vec!();
        for i in 0..self.ns {
            self.signalsReserved.push(String::from_utf8_lossy(&mut S::bytesStripRight(self.stream.read_bytes(32)?, 32)));
        }
    }
}

impl Edf__Header {
    fn ns(&mut self) -> i32 {
        if let Some(x) = self.ns {
            return x;
        }

        self.ns = self.num_signals.parse().unwrap();
        return self.ns;
    }
    fn ndr(&mut self) -> i32 {
        if let Some(x) = self.ndr {
            return x;
        }

        self.ndr = self.num_data_records.parse().unwrap();
        return self.ndr;
    }
}
#[derive(Default)]
pub struct Edf__Body {
    pub signals: Vec<Box<Edf__Body__Signal>>,
}

impl KaitaiStruct for Edf__Body {
    fn new<S: KaitaiStream>(stream: &mut S,
                            _parent: &Option<Box<KaitaiStruct>>,
                            _root: &Option<Box<KaitaiStruct>>)
                            -> Result<Self>
        where Self: Sized {
        let mut s: Self = Default::default();

        s.stream = stream;
        s.read(stream, _parent, _root)?;

        Ok(s)
    }


    fn read<S: KaitaiStream>(&mut self,
                             stream: &mut S,
                             _parent: &Option<Box<KaitaiStruct>>,
                             _root: &Option<Box<KaitaiStruct>>)
                             -> Result<()>
        where Self: Sized {
        self.signals = vec!();
        for i in 0..self._root.header.ns {
            self.signals.push(Box::new(Edf__Body__Signal::new(self.stream, self, _root)?));
        }
    }
}

impl Edf__Body {
}
#[derive(Default)]
pub struct Edf__Body__DataRecording {
    pub data: Vec<u16>,
}

impl KaitaiStruct for Edf__Body__DataRecording {
    fn new<S: KaitaiStream>(stream: &mut S,
                            _parent: &Option<Box<KaitaiStruct>>,
                            _root: &Option<Box<KaitaiStruct>>)
                            -> Result<Self>
        where Self: Sized {
        let mut s: Self = Default::default();

        s.stream = stream;
        s.read(stream, _parent, _root)?;

        Ok(s)
    }


    fn read<S: KaitaiStream>(&mut self,
                             stream: &mut S,
                             _parent: &Option<Box<KaitaiStruct>>,
                             _root: &Option<Box<KaitaiStruct>>)
                             -> Result<()>
        where Self: Sized {
        self.data = vec!();
        for i in 0..self._root.header.num_samples[self._parent.signal_index].parse().unwrap() {
            self.data.push(self.stream.read_u2le()?);
        }
    }
}

impl Edf__Body__DataRecording {
}
#[derive(Default)]
pub struct Edf__Body__Signal {
    pub recordings: Vec<Box<Edf__Body__DataRecording>>,
}

impl KaitaiStruct for Edf__Body__Signal {
    fn new<S: KaitaiStream>(stream: &mut S,
                            _parent: &Option<Box<KaitaiStruct>>,
                            _root: &Option<Box<KaitaiStruct>>)
                            -> Result<Self>
        where Self: Sized {
        let mut s: Self = Default::default();

        s.stream = stream;
        s.read(stream, _parent, _root)?;

        Ok(s)
    }


    fn read<S: KaitaiStream>(&mut self,
                             stream: &mut S,
                             _parent: &Option<Box<KaitaiStruct>>,
                             _root: &Option<Box<KaitaiStruct>>)
                             -> Result<()>
        where Self: Sized {
        self.recordings = vec!();
        for i in 0..self._root.header.ndr {
            self.recordings.push(Box::new(Edf__Body__DataRecording::new(self.stream, self, _root)?));
        }
    }
}

impl Edf__Body__Signal {
}
