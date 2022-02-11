from construct import *
from construct.lib import *

edf__header = Struct(
	'version' / FixedSized(8, NullStripped(GreedyString(encoding='ASCII'), pad=b'\x20')),
	'patient_id' / FixedSized(80, GreedyString(encoding='ASCII')),
	'recording_id' / FixedSized(80, GreedyString(encoding='ASCII')),
	'start_date' / FixedSized(8, GreedyString(encoding='ASCII')),
	'start_time' / FixedSized(8, GreedyString(encoding='ASCII')),
	'header_num_bytes' / FixedSized(8, NullStripped(GreedyString(encoding='ASCII'), pad=b'\x20')),
	'reserved' / FixedSized(44, GreedyString(encoding='ASCII')),
	'num_data_records' / FixedSized(8, NullStripped(GreedyString(encoding='ASCII'), pad=b'\x20')),
	'data_duration' / FixedSized(8, NullStripped(GreedyString(encoding='ASCII'), pad=b'\x20')),
	'num_signals' / FixedSized(4, NullStripped(GreedyString(encoding='ASCII'), pad=b'\x20')),
	'labels' / Array(this.ns, FixedSized(16, NullStripped(GreedyString(encoding='ASCII'), pad=b'\x20'))),
	'transducers' / Array(this.ns, FixedSized(80, NullStripped(GreedyString(encoding='ASCII'), pad=b'\x20'))),
	'phys_dimensions' / Array(this.ns, FixedSized(8, NullStripped(GreedyString(encoding='ASCII'), pad=b'\x20'))),
	'phys_mins' / Array(this.ns, FixedSized(8, NullStripped(GreedyString(encoding='ASCII'), pad=b'\x20'))),
	'phys_maxes' / Array(this.ns, FixedSized(8, NullStripped(GreedyString(encoding='ASCII'), pad=b'\x20'))),
	'dig_mins' / Array(this.ns, FixedSized(8, NullStripped(GreedyString(encoding='ASCII'), pad=b'\x20'))),
	'dig_maxes' / Array(this.ns, FixedSized(8, NullStripped(GreedyString(encoding='ASCII'), pad=b'\x20'))),
	'prefiltering' / Array(this.ns, FixedSized(80, NullStripped(GreedyString(encoding='ASCII'), pad=b'\x20'))),
	'num_samples' / Array(this.ns, FixedSized(8, NullStripped(GreedyString(encoding='ASCII'), pad=b'\x20'))),
	'signals_reserved' / Array(this.ns, FixedSized(32, NullStripped(GreedyString(encoding='ASCII'), pad=b'\x20'))),
	'ns' / Computed(lambda this: int(this.num_signals)),
	'ndr' / Computed(lambda this: int(this.num_data_records)),
)

edf__body__data_recording = Struct(
	'data' / Array(int(this._root.header.num_samples[this._.signal_index]), Int16ul),
)

edf__body__signal = Struct(
	'recordings' / Array(this._root.header.ndr, LazyBound(lambda: edf__body__data_recording)),
)

edf__body = Struct(
	'signals' / Array(this._root.header.ns, LazyBound(lambda: edf__body__signal)),
)

edf = Struct(
	'header' / LazyBound(lambda: edf__header),
	'body' / LazyBound(lambda: edf__body),
)

_schema = edf
