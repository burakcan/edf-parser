// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "edf.h"

edf_t::edf_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, edf_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_header = nullptr;
    m_body = nullptr;
    _read();
}

void edf_t::_read() {
    m_header = std::unique_ptr<header_t>(new header_t(m__io, this, m__root));
    m_body = std::unique_ptr<body_t>(new body_t(m__io, this, m__root));
}

edf_t::~edf_t() {
    _clean_up();
}

void edf_t::_clean_up() {
}

edf_t::header_t::header_t(kaitai::kstream* p__io, edf_t* p__parent, edf_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_labels = nullptr;
    m_transducers = nullptr;
    m_phys_dimensions = nullptr;
    m_phys_mins = nullptr;
    m_phys_maxes = nullptr;
    m_dig_mins = nullptr;
    m_dig_maxes = nullptr;
    m_prefiltering = nullptr;
    m_num_samples = nullptr;
    m_signals_reserved = nullptr;
    f_ns = false;
    f_ndr = false;
    _read();
}

void edf_t::header_t::_read() {
    m_version = kaitai::kstream::bytes_to_str(kaitai::kstream::bytes_strip_right(m__io->read_bytes(8), 32), std::string("ASCII"));
    m_patient_id = kaitai::kstream::bytes_to_str(m__io->read_bytes(80), std::string("ASCII"));
    m_recording_id = kaitai::kstream::bytes_to_str(m__io->read_bytes(80), std::string("ASCII"));
    m_start_date = kaitai::kstream::bytes_to_str(m__io->read_bytes(8), std::string("ASCII"));
    m_start_time = kaitai::kstream::bytes_to_str(m__io->read_bytes(8), std::string("ASCII"));
    m_header_num_bytes = kaitai::kstream::bytes_to_str(kaitai::kstream::bytes_strip_right(m__io->read_bytes(8), 32), std::string("ASCII"));
    m_reserved = kaitai::kstream::bytes_to_str(m__io->read_bytes(44), std::string("ASCII"));
    m_num_data_records = kaitai::kstream::bytes_to_str(kaitai::kstream::bytes_strip_right(m__io->read_bytes(8), 32), std::string("ASCII"));
    m_data_duration = kaitai::kstream::bytes_to_str(kaitai::kstream::bytes_strip_right(m__io->read_bytes(8), 32), std::string("ASCII"));
    m_num_signals = kaitai::kstream::bytes_to_str(kaitai::kstream::bytes_strip_right(m__io->read_bytes(4), 32), std::string("ASCII"));
    int l_labels = ns();
    m_labels = std::unique_ptr<std::vector<std::string>>(new std::vector<std::string>());
    m_labels->reserve(l_labels);
    for (int i = 0; i < l_labels; i++) {
        m_labels->push_back(std::move(kaitai::kstream::bytes_to_str(kaitai::kstream::bytes_strip_right(m__io->read_bytes(16), 32), std::string("ASCII"))));
    }
    int l_transducers = ns();
    m_transducers = std::unique_ptr<std::vector<std::string>>(new std::vector<std::string>());
    m_transducers->reserve(l_transducers);
    for (int i = 0; i < l_transducers; i++) {
        m_transducers->push_back(std::move(kaitai::kstream::bytes_to_str(kaitai::kstream::bytes_strip_right(m__io->read_bytes(80), 32), std::string("ASCII"))));
    }
    int l_phys_dimensions = ns();
    m_phys_dimensions = std::unique_ptr<std::vector<std::string>>(new std::vector<std::string>());
    m_phys_dimensions->reserve(l_phys_dimensions);
    for (int i = 0; i < l_phys_dimensions; i++) {
        m_phys_dimensions->push_back(std::move(kaitai::kstream::bytes_to_str(kaitai::kstream::bytes_strip_right(m__io->read_bytes(8), 32), std::string("ASCII"))));
    }
    int l_phys_mins = ns();
    m_phys_mins = std::unique_ptr<std::vector<std::string>>(new std::vector<std::string>());
    m_phys_mins->reserve(l_phys_mins);
    for (int i = 0; i < l_phys_mins; i++) {
        m_phys_mins->push_back(std::move(kaitai::kstream::bytes_to_str(kaitai::kstream::bytes_strip_right(m__io->read_bytes(8), 32), std::string("ASCII"))));
    }
    int l_phys_maxes = ns();
    m_phys_maxes = std::unique_ptr<std::vector<std::string>>(new std::vector<std::string>());
    m_phys_maxes->reserve(l_phys_maxes);
    for (int i = 0; i < l_phys_maxes; i++) {
        m_phys_maxes->push_back(std::move(kaitai::kstream::bytes_to_str(kaitai::kstream::bytes_strip_right(m__io->read_bytes(8), 32), std::string("ASCII"))));
    }
    int l_dig_mins = ns();
    m_dig_mins = std::unique_ptr<std::vector<std::string>>(new std::vector<std::string>());
    m_dig_mins->reserve(l_dig_mins);
    for (int i = 0; i < l_dig_mins; i++) {
        m_dig_mins->push_back(std::move(kaitai::kstream::bytes_to_str(kaitai::kstream::bytes_strip_right(m__io->read_bytes(8), 32), std::string("ASCII"))));
    }
    int l_dig_maxes = ns();
    m_dig_maxes = std::unique_ptr<std::vector<std::string>>(new std::vector<std::string>());
    m_dig_maxes->reserve(l_dig_maxes);
    for (int i = 0; i < l_dig_maxes; i++) {
        m_dig_maxes->push_back(std::move(kaitai::kstream::bytes_to_str(kaitai::kstream::bytes_strip_right(m__io->read_bytes(8), 32), std::string("ASCII"))));
    }
    int l_prefiltering = ns();
    m_prefiltering = std::unique_ptr<std::vector<std::string>>(new std::vector<std::string>());
    m_prefiltering->reserve(l_prefiltering);
    for (int i = 0; i < l_prefiltering; i++) {
        m_prefiltering->push_back(std::move(kaitai::kstream::bytes_to_str(kaitai::kstream::bytes_strip_right(m__io->read_bytes(80), 32), std::string("ASCII"))));
    }
    int l_num_samples = ns();
    m_num_samples = std::unique_ptr<std::vector<std::string>>(new std::vector<std::string>());
    m_num_samples->reserve(l_num_samples);
    for (int i = 0; i < l_num_samples; i++) {
        m_num_samples->push_back(std::move(kaitai::kstream::bytes_to_str(kaitai::kstream::bytes_strip_right(m__io->read_bytes(8), 32), std::string("ASCII"))));
    }
    int l_signals_reserved = ns();
    m_signals_reserved = std::unique_ptr<std::vector<std::string>>(new std::vector<std::string>());
    m_signals_reserved->reserve(l_signals_reserved);
    for (int i = 0; i < l_signals_reserved; i++) {
        m_signals_reserved->push_back(std::move(kaitai::kstream::bytes_to_str(kaitai::kstream::bytes_strip_right(m__io->read_bytes(32), 32), std::string("ASCII"))));
    }
}

edf_t::header_t::~header_t() {
    _clean_up();
}

void edf_t::header_t::_clean_up() {
}

int32_t edf_t::header_t::ns() {
    if (f_ns)
        return m_ns;
    m_ns = std::stoi(num_signals());
    f_ns = true;
    return m_ns;
}

int32_t edf_t::header_t::ndr() {
    if (f_ndr)
        return m_ndr;
    m_ndr = std::stoi(num_data_records());
    f_ndr = true;
    return m_ndr;
}

edf_t::body_t::body_t(kaitai::kstream* p__io, edf_t* p__parent, edf_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_signals = nullptr;
    _read();
}

void edf_t::body_t::_read() {
    int l_signals = _root()->header()->ns();
    m_signals = std::unique_ptr<std::vector<std::unique_ptr<signal_t>>>(new std::vector<std::unique_ptr<signal_t>>());
    m_signals->reserve(l_signals);
    for (int i = 0; i < l_signals; i++) {
        m_signals->push_back(std::move(std::unique_ptr<signal_t>(new signal_t(i, m__io, this, m__root))));
    }
}

edf_t::body_t::~body_t() {
    _clean_up();
}

void edf_t::body_t::_clean_up() {
}

edf_t::body_t::data_recording_t::data_recording_t(kaitai::kstream* p__io, edf_t::body_t::signal_t* p__parent, edf_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_data = nullptr;
    _read();
}

void edf_t::body_t::data_recording_t::_read() {
    int l_data = std::stoi(_root()->header()->num_samples()->at(_parent()->signal_index()));
    m_data = std::unique_ptr<std::vector<uint16_t>>(new std::vector<uint16_t>());
    m_data->reserve(l_data);
    for (int i = 0; i < l_data; i++) {
        m_data->push_back(std::move(m__io->read_u2le()));
    }
}

edf_t::body_t::data_recording_t::~data_recording_t() {
    _clean_up();
}

void edf_t::body_t::data_recording_t::_clean_up() {
}

edf_t::body_t::signal_t::signal_t(int32_t p_signal_index, kaitai::kstream* p__io, edf_t::body_t* p__parent, edf_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_signal_index = p_signal_index;
    m_recordings = nullptr;
    _read();
}

void edf_t::body_t::signal_t::_read() {
    int l_recordings = _root()->header()->ndr();
    m_recordings = std::unique_ptr<std::vector<std::unique_ptr<data_recording_t>>>(new std::vector<std::unique_ptr<data_recording_t>>());
    m_recordings->reserve(l_recordings);
    for (int i = 0; i < l_recordings; i++) {
        m_recordings->push_back(std::move(std::unique_ptr<data_recording_t>(new data_recording_t(m__io, this, m__root))));
    }
}

edf_t::body_t::signal_t::~signal_t() {
    _clean_up();
}

void edf_t::body_t::signal_t::_clean_up() {
}
