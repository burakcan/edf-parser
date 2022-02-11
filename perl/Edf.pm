# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.009_000;
use Encode;

########################################################################
package Edf;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root || $self;;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{header} = Edf::Header->new($self->{_io}, $self, $self->{_root});
    $self->{body} = Edf::Body->new($self->{_io}, $self, $self->{_root});
}

sub header {
    my ($self) = @_;
    return $self->{header};
}

sub body {
    my ($self) = @_;
    return $self->{body};
}

########################################################################
package Edf::Header;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root || $self;;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{version} = Encode::decode("ASCII", IO::KaitaiStruct::Stream::bytes_strip_right($self->{_io}->read_bytes(8), 32));
    $self->{patient_id} = Encode::decode("ASCII", $self->{_io}->read_bytes(80));
    $self->{recording_id} = Encode::decode("ASCII", $self->{_io}->read_bytes(80));
    $self->{start_date} = Encode::decode("ASCII", $self->{_io}->read_bytes(8));
    $self->{start_time} = Encode::decode("ASCII", $self->{_io}->read_bytes(8));
    $self->{header_num_bytes} = Encode::decode("ASCII", IO::KaitaiStruct::Stream::bytes_strip_right($self->{_io}->read_bytes(8), 32));
    $self->{reserved} = Encode::decode("ASCII", $self->{_io}->read_bytes(44));
    $self->{num_data_records} = Encode::decode("ASCII", IO::KaitaiStruct::Stream::bytes_strip_right($self->{_io}->read_bytes(8), 32));
    $self->{data_duration} = Encode::decode("ASCII", IO::KaitaiStruct::Stream::bytes_strip_right($self->{_io}->read_bytes(8), 32));
    $self->{num_signals} = Encode::decode("ASCII", IO::KaitaiStruct::Stream::bytes_strip_right($self->{_io}->read_bytes(4), 32));
    $self->{labels} = ();
    my $n_labels = $self->ns();
    for (my $i = 0; $i < $n_labels; $i++) {
        $self->{labels}[$i] = Encode::decode("ASCII", IO::KaitaiStruct::Stream::bytes_strip_right($self->{_io}->read_bytes(16), 32));
    }
    $self->{transducers} = ();
    my $n_transducers = $self->ns();
    for (my $i = 0; $i < $n_transducers; $i++) {
        $self->{transducers}[$i] = Encode::decode("ASCII", IO::KaitaiStruct::Stream::bytes_strip_right($self->{_io}->read_bytes(80), 32));
    }
    $self->{phys_dimensions} = ();
    my $n_phys_dimensions = $self->ns();
    for (my $i = 0; $i < $n_phys_dimensions; $i++) {
        $self->{phys_dimensions}[$i] = Encode::decode("ASCII", IO::KaitaiStruct::Stream::bytes_strip_right($self->{_io}->read_bytes(8), 32));
    }
    $self->{phys_mins} = ();
    my $n_phys_mins = $self->ns();
    for (my $i = 0; $i < $n_phys_mins; $i++) {
        $self->{phys_mins}[$i] = Encode::decode("ASCII", IO::KaitaiStruct::Stream::bytes_strip_right($self->{_io}->read_bytes(8), 32));
    }
    $self->{phys_maxes} = ();
    my $n_phys_maxes = $self->ns();
    for (my $i = 0; $i < $n_phys_maxes; $i++) {
        $self->{phys_maxes}[$i] = Encode::decode("ASCII", IO::KaitaiStruct::Stream::bytes_strip_right($self->{_io}->read_bytes(8), 32));
    }
    $self->{dig_mins} = ();
    my $n_dig_mins = $self->ns();
    for (my $i = 0; $i < $n_dig_mins; $i++) {
        $self->{dig_mins}[$i] = Encode::decode("ASCII", IO::KaitaiStruct::Stream::bytes_strip_right($self->{_io}->read_bytes(8), 32));
    }
    $self->{dig_maxes} = ();
    my $n_dig_maxes = $self->ns();
    for (my $i = 0; $i < $n_dig_maxes; $i++) {
        $self->{dig_maxes}[$i] = Encode::decode("ASCII", IO::KaitaiStruct::Stream::bytes_strip_right($self->{_io}->read_bytes(8), 32));
    }
    $self->{prefiltering} = ();
    my $n_prefiltering = $self->ns();
    for (my $i = 0; $i < $n_prefiltering; $i++) {
        $self->{prefiltering}[$i] = Encode::decode("ASCII", IO::KaitaiStruct::Stream::bytes_strip_right($self->{_io}->read_bytes(80), 32));
    }
    $self->{num_samples} = ();
    my $n_num_samples = $self->ns();
    for (my $i = 0; $i < $n_num_samples; $i++) {
        $self->{num_samples}[$i] = Encode::decode("ASCII", IO::KaitaiStruct::Stream::bytes_strip_right($self->{_io}->read_bytes(8), 32));
    }
    $self->{signals_reserved} = ();
    my $n_signals_reserved = $self->ns();
    for (my $i = 0; $i < $n_signals_reserved; $i++) {
        $self->{signals_reserved}[$i] = Encode::decode("ASCII", IO::KaitaiStruct::Stream::bytes_strip_right($self->{_io}->read_bytes(32), 32));
    }
}

sub ns {
    my ($self) = @_;
    return $self->{ns} if ($self->{ns});
    $self->{ns} = $self->num_signals();
    return $self->{ns};
}

sub ndr {
    my ($self) = @_;
    return $self->{ndr} if ($self->{ndr});
    $self->{ndr} = $self->num_data_records();
    return $self->{ndr};
}

sub version {
    my ($self) = @_;
    return $self->{version};
}

sub patient_id {
    my ($self) = @_;
    return $self->{patient_id};
}

sub recording_id {
    my ($self) = @_;
    return $self->{recording_id};
}

sub start_date {
    my ($self) = @_;
    return $self->{start_date};
}

sub start_time {
    my ($self) = @_;
    return $self->{start_time};
}

sub header_num_bytes {
    my ($self) = @_;
    return $self->{header_num_bytes};
}

sub reserved {
    my ($self) = @_;
    return $self->{reserved};
}

sub num_data_records {
    my ($self) = @_;
    return $self->{num_data_records};
}

sub data_duration {
    my ($self) = @_;
    return $self->{data_duration};
}

sub num_signals {
    my ($self) = @_;
    return $self->{num_signals};
}

sub labels {
    my ($self) = @_;
    return $self->{labels};
}

sub transducers {
    my ($self) = @_;
    return $self->{transducers};
}

sub phys_dimensions {
    my ($self) = @_;
    return $self->{phys_dimensions};
}

sub phys_mins {
    my ($self) = @_;
    return $self->{phys_mins};
}

sub phys_maxes {
    my ($self) = @_;
    return $self->{phys_maxes};
}

sub dig_mins {
    my ($self) = @_;
    return $self->{dig_mins};
}

sub dig_maxes {
    my ($self) = @_;
    return $self->{dig_maxes};
}

sub prefiltering {
    my ($self) = @_;
    return $self->{prefiltering};
}

sub num_samples {
    my ($self) = @_;
    return $self->{num_samples};
}

sub signals_reserved {
    my ($self) = @_;
    return $self->{signals_reserved};
}

########################################################################
package Edf::Body;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root || $self;;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{signals} = ();
    my $n_signals = $self->_root()->header()->ns();
    for (my $i = 0; $i < $n_signals; $i++) {
        $self->{signals}[$i] = Edf::Body::Signal->new($self->{_io}, $self, $self->{_root});
    }
}

sub signals {
    my ($self) = @_;
    return $self->{signals};
}

########################################################################
package Edf::Body::DataRecording;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root || $self;;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{data} = ();
    my $n_data = @{$self->_root()->header()->num_samples()}[$self->_parent()->signal_index()];
    for (my $i = 0; $i < $n_data; $i++) {
        $self->{data}[$i] = $self->{_io}->read_u2le();
    }
}

sub data {
    my ($self) = @_;
    return $self->{data};
}

########################################################################
package Edf::Body::Signal;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root || $self;;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{recordings} = ();
    my $n_recordings = $self->_root()->header()->ndr();
    for (my $i = 0; $i < $n_recordings; $i++) {
        $self->{recordings}[$i] = Edf::Body::DataRecording->new($self->{_io}, $self, $self->{_root});
    }
}

sub recordings {
    my ($self) = @_;
    return $self->{recordings};
}

sub signal_index {
    my ($self) = @_;
    return $self->{signal_index};
}

1;
