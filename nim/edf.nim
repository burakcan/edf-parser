import kaitai_struct_nim_runtime
import options

type
  Edf* = ref object of KaitaiStruct
    `header`*: Edf_Header
    `body`*: Edf_Body
    `parent`*: KaitaiStruct
  Edf_Header* = ref object of KaitaiStruct
    `version`*: string
    `patientId`*: string
    `recordingId`*: string
    `startDate`*: string
    `startTime`*: string
    `headerNumBytes`*: string
    `reserved`*: string
    `numDataRecords`*: string
    `dataDuration`*: string
    `numSignals`*: string
    `labels`*: seq[string]
    `transducers`*: seq[string]
    `physDimensions`*: seq[string]
    `physMins`*: seq[string]
    `physMaxes`*: seq[string]
    `digMins`*: seq[string]
    `digMaxes`*: seq[string]
    `prefiltering`*: seq[string]
    `numSamples`*: seq[string]
    `signalsReserved`*: seq[string]
    `parent`*: Edf
    `nsInst`*: int
    `ndrInst`*: int
  Edf_Body* = ref object of KaitaiStruct
    `signals`*: seq[Edf_Body_Signal]
    `parent`*: Edf
  Edf_Body_DataRecording* = ref object of KaitaiStruct
    `data`*: seq[uint16]
    `parent`*: Edf_Body_Signal
  Edf_Body_Signal* = ref object of KaitaiStruct
    `recordings`*: seq[Edf_Body_DataRecording]
    `signalIndex`*: int32
    `parent`*: Edf_Body

proc read*(_: typedesc[Edf], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): Edf
proc read*(_: typedesc[Edf_Header], io: KaitaiStream, root: KaitaiStruct, parent: Edf): Edf_Header
proc read*(_: typedesc[Edf_Body], io: KaitaiStream, root: KaitaiStruct, parent: Edf): Edf_Body
proc read*(_: typedesc[Edf_Body_DataRecording], io: KaitaiStream, root: KaitaiStruct, parent: Edf_Body_Signal): Edf_Body_DataRecording
proc read*(_: typedesc[Edf_Body_Signal], io: KaitaiStream, root: KaitaiStruct, parent: Edf_Body, signalIndex: any): Edf_Body_Signal

proc ns*(this: Edf_Header): int
proc ndr*(this: Edf_Header): int

proc read*(_: typedesc[Edf], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): Edf =
  template this: untyped = result
  this = new(Edf)
  let root = if root == nil: cast[Edf](this) else: cast[Edf](root)
  this.io = io
  this.root = root
  this.parent = parent

  let headerExpr = Edf_Header.read(this.io, this.root, this)
  this.header = headerExpr
  let bodyExpr = Edf_Body.read(this.io, this.root, this)
  this.body = bodyExpr

proc fromFile*(_: typedesc[Edf], filename: string): Edf =
  Edf.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[Edf_Header], io: KaitaiStream, root: KaitaiStruct, parent: Edf): Edf_Header =
  template this: untyped = result
  this = new(Edf_Header)
  let root = if root == nil: cast[Edf](this) else: cast[Edf](root)
  this.io = io
  this.root = root
  this.parent = parent

  let versionExpr = encode(this.io.readBytes(int(8)).bytesStripRight(32), "ASCII")
  this.version = versionExpr
  let patientIdExpr = encode(this.io.readBytes(int(80)), "ASCII")
  this.patientId = patientIdExpr
  let recordingIdExpr = encode(this.io.readBytes(int(80)), "ASCII")
  this.recordingId = recordingIdExpr
  let startDateExpr = encode(this.io.readBytes(int(8)), "ASCII")
  this.startDate = startDateExpr
  let startTimeExpr = encode(this.io.readBytes(int(8)), "ASCII")
  this.startTime = startTimeExpr
  let headerNumBytesExpr = encode(this.io.readBytes(int(8)).bytesStripRight(32), "ASCII")
  this.headerNumBytes = headerNumBytesExpr
  let reservedExpr = encode(this.io.readBytes(int(44)), "ASCII")
  this.reserved = reservedExpr
  let numDataRecordsExpr = encode(this.io.readBytes(int(8)).bytesStripRight(32), "ASCII")
  this.numDataRecords = numDataRecordsExpr
  let dataDurationExpr = encode(this.io.readBytes(int(8)).bytesStripRight(32), "ASCII")
  this.dataDuration = dataDurationExpr
  let numSignalsExpr = encode(this.io.readBytes(int(4)).bytesStripRight(32), "ASCII")
  this.numSignals = numSignalsExpr
  for i in 0 ..< int(this.ns):
    let it = encode(this.io.readBytes(int(16)).bytesStripRight(32), "ASCII")
    this.labels.add(it)
  for i in 0 ..< int(this.ns):
    let it = encode(this.io.readBytes(int(80)).bytesStripRight(32), "ASCII")
    this.transducers.add(it)
  for i in 0 ..< int(this.ns):
    let it = encode(this.io.readBytes(int(8)).bytesStripRight(32), "ASCII")
    this.physDimensions.add(it)
  for i in 0 ..< int(this.ns):
    let it = encode(this.io.readBytes(int(8)).bytesStripRight(32), "ASCII")
    this.physMins.add(it)
  for i in 0 ..< int(this.ns):
    let it = encode(this.io.readBytes(int(8)).bytesStripRight(32), "ASCII")
    this.physMaxes.add(it)
  for i in 0 ..< int(this.ns):
    let it = encode(this.io.readBytes(int(8)).bytesStripRight(32), "ASCII")
    this.digMins.add(it)
  for i in 0 ..< int(this.ns):
    let it = encode(this.io.readBytes(int(8)).bytesStripRight(32), "ASCII")
    this.digMaxes.add(it)
  for i in 0 ..< int(this.ns):
    let it = encode(this.io.readBytes(int(80)).bytesStripRight(32), "ASCII")
    this.prefiltering.add(it)
  for i in 0 ..< int(this.ns):
    let it = encode(this.io.readBytes(int(8)).bytesStripRight(32), "ASCII")
    this.numSamples.add(it)
  for i in 0 ..< int(this.ns):
    let it = encode(this.io.readBytes(int(32)).bytesStripRight(32), "ASCII")
    this.signalsReserved.add(it)

proc ns(this: Edf_Header): int = 
  if this.nsInst != nil:
    return this.nsInst
  let nsInstExpr = int(this.numSignals.parseInt(10))
  this.nsInst = nsInstExpr
  if this.nsInst != nil:
    return this.nsInst

proc ndr(this: Edf_Header): int = 
  if this.ndrInst != nil:
    return this.ndrInst
  let ndrInstExpr = int(this.numDataRecords.parseInt(10))
  this.ndrInst = ndrInstExpr
  if this.ndrInst != nil:
    return this.ndrInst

proc fromFile*(_: typedesc[Edf_Header], filename: string): Edf_Header =
  Edf_Header.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[Edf_Body], io: KaitaiStream, root: KaitaiStruct, parent: Edf): Edf_Body =
  template this: untyped = result
  this = new(Edf_Body)
  let root = if root == nil: cast[Edf](this) else: cast[Edf](root)
  this.io = io
  this.root = root
  this.parent = parent

  for i in 0 ..< int(Edf(this.root).header.ns):
    let it = Edf_Body_Signal.read(this.io, this.root, this, i)
    this.signals.add(it)

proc fromFile*(_: typedesc[Edf_Body], filename: string): Edf_Body =
  Edf_Body.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[Edf_Body_DataRecording], io: KaitaiStream, root: KaitaiStruct, parent: Edf_Body_Signal): Edf_Body_DataRecording =
  template this: untyped = result
  this = new(Edf_Body_DataRecording)
  let root = if root == nil: cast[Edf](this) else: cast[Edf](root)
  this.io = io
  this.root = root
  this.parent = parent

  for i in 0 ..< int(Edf(this.root).header.numSamples[this.parent.signalIndex].parseInt(10)):
    let it = this.io.readU2le()
    this.data.add(it)

proc fromFile*(_: typedesc[Edf_Body_DataRecording], filename: string): Edf_Body_DataRecording =
  Edf_Body_DataRecording.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[Edf_Body_Signal], io: KaitaiStream, root: KaitaiStruct, parent: Edf_Body, signalIndex: any): Edf_Body_Signal =
  template this: untyped = result
  this = new(Edf_Body_Signal)
  let root = if root == nil: cast[Edf](this) else: cast[Edf](root)
  this.io = io
  this.root = root
  this.parent = parent
  let signalIndexExpr = int32(signalIndex)
  this.signalIndex = signalIndexExpr

  for i in 0 ..< int(Edf(this.root).header.ndr):
    let it = Edf_Body_DataRecording.read(this.io, this.root, this)
    this.recordings.add(it)

proc fromFile*(_: typedesc[Edf_Body_Signal], filename: string): Edf_Body_Signal =
  Edf_Body_Signal.read(newKaitaiFileStream(filename), nil, nil)

