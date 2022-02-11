// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import (
	"github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"
	"strconv"
)

type Edf struct {
	Header *Edf_Header
	Body *Edf_Body
	_io *kaitai.Stream
	_root *Edf
	_parent interface{}
}
func NewEdf() *Edf {
	return &Edf{
	}
}

func (this *Edf) Read(io *kaitai.Stream, parent interface{}, root *Edf) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1 := NewEdf_Header()
	err = tmp1.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.Header = tmp1
	tmp2 := NewEdf_Body()
	err = tmp2.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.Body = tmp2
	return err
}
type Edf_Header struct {
	Version string
	PatientId string
	RecordingId string
	StartDate string
	StartTime string
	HeaderNumBytes string
	Reserved string
	NumDataRecords string
	DataDuration string
	NumSignals string
	Labels []string
	Transducers []string
	PhysDimensions []string
	PhysMins []string
	PhysMaxes []string
	DigMins []string
	DigMaxes []string
	Prefiltering []string
	NumSamples []string
	SignalsReserved []string
	_io *kaitai.Stream
	_root *Edf
	_parent *Edf
	_f_ns bool
	ns int
	_f_ndr bool
	ndr int
}
func NewEdf_Header() *Edf_Header {
	return &Edf_Header{
	}
}

func (this *Edf_Header) Read(io *kaitai.Stream, parent *Edf, root *Edf) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp3, err := this._io.ReadBytes(int(8))
	if err != nil {
		return err
	}
	tmp3 = kaitai.BytesStripRight(tmp3, 32)
	this.Version = string(tmp3)
	tmp4, err := this._io.ReadBytes(int(80))
	if err != nil {
		return err
	}
	tmp4 = tmp4
	this.PatientId = string(tmp4)
	tmp5, err := this._io.ReadBytes(int(80))
	if err != nil {
		return err
	}
	tmp5 = tmp5
	this.RecordingId = string(tmp5)
	tmp6, err := this._io.ReadBytes(int(8))
	if err != nil {
		return err
	}
	tmp6 = tmp6
	this.StartDate = string(tmp6)
	tmp7, err := this._io.ReadBytes(int(8))
	if err != nil {
		return err
	}
	tmp7 = tmp7
	this.StartTime = string(tmp7)
	tmp8, err := this._io.ReadBytes(int(8))
	if err != nil {
		return err
	}
	tmp8 = kaitai.BytesStripRight(tmp8, 32)
	this.HeaderNumBytes = string(tmp8)
	tmp9, err := this._io.ReadBytes(int(44))
	if err != nil {
		return err
	}
	tmp9 = tmp9
	this.Reserved = string(tmp9)
	tmp10, err := this._io.ReadBytes(int(8))
	if err != nil {
		return err
	}
	tmp10 = kaitai.BytesStripRight(tmp10, 32)
	this.NumDataRecords = string(tmp10)
	tmp11, err := this._io.ReadBytes(int(8))
	if err != nil {
		return err
	}
	tmp11 = kaitai.BytesStripRight(tmp11, 32)
	this.DataDuration = string(tmp11)
	tmp12, err := this._io.ReadBytes(int(4))
	if err != nil {
		return err
	}
	tmp12 = kaitai.BytesStripRight(tmp12, 32)
	this.NumSignals = string(tmp12)
	tmp13, err := this.Ns()
	if err != nil {
		return err
	}
	this.Labels = make([]string, tmp13)
	for i := range this.Labels {
		tmp14, err := this._io.ReadBytes(int(16))
		if err != nil {
			return err
		}
		tmp14 = kaitai.BytesStripRight(tmp14, 32)
		this.Labels[i] = string(tmp14)
	}
	tmp15, err := this.Ns()
	if err != nil {
		return err
	}
	this.Transducers = make([]string, tmp15)
	for i := range this.Transducers {
		tmp16, err := this._io.ReadBytes(int(80))
		if err != nil {
			return err
		}
		tmp16 = kaitai.BytesStripRight(tmp16, 32)
		this.Transducers[i] = string(tmp16)
	}
	tmp17, err := this.Ns()
	if err != nil {
		return err
	}
	this.PhysDimensions = make([]string, tmp17)
	for i := range this.PhysDimensions {
		tmp18, err := this._io.ReadBytes(int(8))
		if err != nil {
			return err
		}
		tmp18 = kaitai.BytesStripRight(tmp18, 32)
		this.PhysDimensions[i] = string(tmp18)
	}
	tmp19, err := this.Ns()
	if err != nil {
		return err
	}
	this.PhysMins = make([]string, tmp19)
	for i := range this.PhysMins {
		tmp20, err := this._io.ReadBytes(int(8))
		if err != nil {
			return err
		}
		tmp20 = kaitai.BytesStripRight(tmp20, 32)
		this.PhysMins[i] = string(tmp20)
	}
	tmp21, err := this.Ns()
	if err != nil {
		return err
	}
	this.PhysMaxes = make([]string, tmp21)
	for i := range this.PhysMaxes {
		tmp22, err := this._io.ReadBytes(int(8))
		if err != nil {
			return err
		}
		tmp22 = kaitai.BytesStripRight(tmp22, 32)
		this.PhysMaxes[i] = string(tmp22)
	}
	tmp23, err := this.Ns()
	if err != nil {
		return err
	}
	this.DigMins = make([]string, tmp23)
	for i := range this.DigMins {
		tmp24, err := this._io.ReadBytes(int(8))
		if err != nil {
			return err
		}
		tmp24 = kaitai.BytesStripRight(tmp24, 32)
		this.DigMins[i] = string(tmp24)
	}
	tmp25, err := this.Ns()
	if err != nil {
		return err
	}
	this.DigMaxes = make([]string, tmp25)
	for i := range this.DigMaxes {
		tmp26, err := this._io.ReadBytes(int(8))
		if err != nil {
			return err
		}
		tmp26 = kaitai.BytesStripRight(tmp26, 32)
		this.DigMaxes[i] = string(tmp26)
	}
	tmp27, err := this.Ns()
	if err != nil {
		return err
	}
	this.Prefiltering = make([]string, tmp27)
	for i := range this.Prefiltering {
		tmp28, err := this._io.ReadBytes(int(80))
		if err != nil {
			return err
		}
		tmp28 = kaitai.BytesStripRight(tmp28, 32)
		this.Prefiltering[i] = string(tmp28)
	}
	tmp29, err := this.Ns()
	if err != nil {
		return err
	}
	this.NumSamples = make([]string, tmp29)
	for i := range this.NumSamples {
		tmp30, err := this._io.ReadBytes(int(8))
		if err != nil {
			return err
		}
		tmp30 = kaitai.BytesStripRight(tmp30, 32)
		this.NumSamples[i] = string(tmp30)
	}
	tmp31, err := this.Ns()
	if err != nil {
		return err
	}
	this.SignalsReserved = make([]string, tmp31)
	for i := range this.SignalsReserved {
		tmp32, err := this._io.ReadBytes(int(32))
		if err != nil {
			return err
		}
		tmp32 = kaitai.BytesStripRight(tmp32, 32)
		this.SignalsReserved[i] = string(tmp32)
	}
	return err
}
func (this *Edf_Header) Ns() (v int, err error) {
	if (this._f_ns) {
		return this.ns, nil
	}
	tmp33, err := strconv.ParseInt(this.NumSignals, 10, 0)
	if err != nil {
		return 0, err
	}
	this.ns = int(tmp33)
	this._f_ns = true
	return this.ns, nil
}
func (this *Edf_Header) Ndr() (v int, err error) {
	if (this._f_ndr) {
		return this.ndr, nil
	}
	tmp34, err := strconv.ParseInt(this.NumDataRecords, 10, 0)
	if err != nil {
		return 0, err
	}
	this.ndr = int(tmp34)
	this._f_ndr = true
	return this.ndr, nil
}
type Edf_Body struct {
	Signals []*Edf_Body_Signal
	_io *kaitai.Stream
	_root *Edf
	_parent *Edf
}
func NewEdf_Body() *Edf_Body {
	return &Edf_Body{
	}
}

func (this *Edf_Body) Read(io *kaitai.Stream, parent *Edf, root *Edf) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp35, err := this._root.Header.Ns()
	if err != nil {
		return err
	}
	this.Signals = make([]*Edf_Body_Signal, tmp35)
	for i := range this.Signals {
		tmp36 := NewEdf_Body_Signal(i)
		err = tmp36.Read(this._io, this, this._root)
		if err != nil {
			return err
		}
		this.Signals[i] = tmp36
	}
	return err
}
type Edf_Body_DataRecording struct {
	Data []uint16
	_io *kaitai.Stream
	_root *Edf
	_parent *Edf_Body_Signal
}
func NewEdf_Body_DataRecording() *Edf_Body_DataRecording {
	return &Edf_Body_DataRecording{
	}
}

func (this *Edf_Body_DataRecording) Read(io *kaitai.Stream, parent *Edf_Body_Signal, root *Edf) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp37, err := strconv.ParseInt(this._root.Header.NumSamples[this._parent.SignalIndex], 10, 0)
	if err != nil {
		return err
	}
	this.Data = make([]uint16, tmp37)
	for i := range this.Data {
		tmp38, err := this._io.ReadU2le()
		if err != nil {
			return err
		}
		this.Data[i] = tmp38
	}
	return err
}
type Edf_Body_Signal struct {
	Recordings []*Edf_Body_DataRecording
	SignalIndex int32
	_io *kaitai.Stream
	_root *Edf
	_parent *Edf_Body
}
func NewEdf_Body_Signal(signalIndex int32) *Edf_Body_Signal {
	return &Edf_Body_Signal{
		SignalIndex: signalIndex,
	}
}

func (this *Edf_Body_Signal) Read(io *kaitai.Stream, parent *Edf_Body, root *Edf) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp39, err := this._root.Header.Ndr()
	if err != nil {
		return err
	}
	this.Recordings = make([]*Edf_Body_DataRecording, tmp39)
	for i := range this.Recordings {
		tmp40 := NewEdf_Body_DataRecording()
		err = tmp40.Read(this._io, this, this._root)
		if err != nil {
			return err
		}
		this.Recordings[i] = tmp40
	}
	return err
}
