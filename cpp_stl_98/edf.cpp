// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "edf.h"

edf_t::edf_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, edf_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_header = 0;
    m_body = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void edf_t::_read() {
    m_header = new header_t(m__io, this, m__root);
    m_body = new body_t(m__io, this, m__root);
}

edf_t::~edf_t() {
    _clean_up();
}

void edf_t::_clean_up() {
    if (m_header) {
        delete m_header; m_header = 0;
    }
    if (m_body) {
        delete m_body; m_body = 0;
    }
}

edf_t::header_t::header_t(kaitai::kstream* p__io, edf_t* p__parent, edf_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_labels = 0;
    m_transducers = 0;
    m_phys_dimensions = 0;
    m_phys_mins = 0;
    m_phys_maxes = 0;
    m_dig_mins = 0;
    m_dig_maxes = 0;
    m_prefiltering = 0;
    m_num_samples = 0;
    m_signals_reserved = 0;
    f_ns = false;
    f_ndr = false;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
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
    m_labels = new std::vector<std::string>();
    m_labels->reserve(l_labels);
    for (int i = 0; i < l_labels; i++) {
        m_labels->push_back(kaitai::kstream::bytes_to_str(kaitai::kstream::bytes_strip_right(m__io->read_bytes(16), 32), std::string("ASCII")));
    }
    int l_transducers = ns();
    m_transducers = new std::vector<std::string>();
    m_transducers->reserve(l_transducers);
    for (int i = 0; i < l_transducers; i++) {
        m_transducers->push_back(kaitai::kstream::bytes_to_str(kaitai::kstream::bytes_strip_right(m__io->read_bytes(80), 32), std::string("ASCII")));
    }
    int l_phys_dimensions = ns();
    m_phys_dimensions = new std::vector<std::string>();
    m_phys_dimensions->reserve(l_phys_dimensions);
    for (int i = 0; i < l_phys_dimensions; i++) {
        m_phys_dimensions->push_back(kaitai::kstream::bytes_to_str(kaitai::kstream::bytes_strip_right(m__io->read_bytes(8), 32), std::string("ASCII")));
    }
    int l_phys_mins = ns();
    m_phys_mins = new std::vector<std::string>();
    m_phys_mins->reserve(l_phys_mins);
    for (int i = 0; i < l_phys_mins; i++) {
        m_phys_mins->push_back(kaitai::kstream::bytes_to_str(kaitai::kstream::bytes_strip_right(m__io->read_bytes(8), 32), std::string("ASCII")));
    }
    int l_phys_maxes = ns();
    m_phys_maxes = new std::vector<std::string>();
    m_phys_maxes->reserve(l_phys_maxes);
    for (int i = 0; i < l_phys_maxes; i++) {
        m_phys_maxes->push_back(kaitai::kstream::bytes_to_str(kaitai::kstream::bytes_strip_right(m__io->read_bytes(8), 32), std::string("ASCII")));
    }
    int l_dig_mins = ns();
    m_dig_mins = new std::vector<std::string>();
    m_dig_mins->reserve(l_dig_mins);
    for (int i = 0; i < l_dig_mins; i++) {
        m_dig_mins->push_back(kaitai::kstream::bytes_to_str(kaitai::kstream::bytes_strip_right(m__io->read_bytes(8), 32), std::string("ASCII")));
    }
    int l_dig_maxes = ns();
    m_dig_maxes = new std::vector<std::string>();
    m_dig_maxes->reserve(l_dig_maxes);
    for (int i = 0; i < l_dig_maxes; i++) {
        m_dig_maxes->push_back(kaitai::kstream::bytes_to_str(kaitai::kstream::bytes_strip_right(m__io->read_bytes(8), 32), std::string("ASCII")));
    }
    int l_prefiltering = ns();
    m_prefiltering = new std::vector<std::string>();
    m_prefiltering->reserve(l_prefiltering);
    for (int i = 0; i < l_prefiltering; i++) {
        m_prefiltering->push_back(kaitai::kstream::bytes_to_str(kaitai::kstream::bytes_strip_right(m__io->read_bytes(80), 32), std::string("ASCII")));
    }
    int l_num_samples = ns();
    m_num_samples = new std::vector<std::string>();
    m_num_samples->reserve(l_num_samples);
    for (int i = 0; i < l_num_samples; i++) {
        m_num_samples->push_back(kaitai::kstream::bytes_to_str(kaitai::kstream::bytes_strip_right(m__io->read_bytes(8), 32), std::string("ASCII")));
    }
    int l_signals_reserved = ns();
    m_signals_reserved = new std::vector<std::string>();
    m_signals_reserved->reserve(l_signals_reserved);
    for (int i = 0; i < l_signals_reserved; i++) {
        m_signals_reserved->push_back(kaitai::kstream::bytes_to_str(kaitai::kstream::bytes_strip_right(m__io->read_bytes(32), 32), std::string("ASCII")));
    }
}

edf_t::header_t::~header_t() {
    _clean_up();
}

void edf_t::header_t::_clean_up() {
    if (m_labels) {
        delete m_labels; m_labels = 0;
    }
    if (m_transducers) {
        delete m_transducers; m_transducers = 0;
    }
    if (m_phys_dimensions) {
        delete m_phys_dimensions; m_phys_dimensions = 0;
    }
    if (m_phys_mins) {
        delete m_phys_mins; m_phys_mins = 0;
    }
    if (m_phys_maxes) {
        delete m_phys_maxes; m_phys_maxes = 0;
    }
    if (m_dig_mins) {
        delete m_dig_mins; m_dig_mins = 0;
    }
    if (m_dig_maxes) {
        delete m_dig_maxes; m_dig_maxes = 0;
    }
    if (m_prefiltering) {
        delete m_prefiltering; m_prefiltering = 0;
    }
    if (m_num_samples) {
        delete m_num_samples; m_num_samples = 0;
    }
    if (m_signals_reserved) {
        delete m_signals_reserved; m_signals_reserved = 0;
    }
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
    m_signals = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void edf_t::body_t::_read() {
    int l_signals = _root()->header()->ns();
    m_signals = new std::vector<signal_t*>();
    m_signals->reserve(l_signals);
    for (int i = 0; i < l_signals; i++) {
        m_signals->push_back(new signal_t(i, m__io, this, m__root));
    }
}

edf_t::body_t::~body_t() {
    _clean_up();
}

void edf_t::body_t::_clean_up() {
    if (m_signals) {
        for (std::vector<signal_t*>::iterator it = m_signals->begin(); it != m_signals->end(); ++it) {
            delete *it;
        }
        delete m_signals; m_signals = 0;
    }
}

edf_t::body_t::data_recording_t::data_recording_t(kaitai::kstream* p__io, edf_t::body_t::signal_t* p__parent, edf_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_data = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void edf_t::body_t::data_recording_t::_read() {
    int l_data = std::stoi(_root()->header()->num_samples()->at(_parent()->signal_index()));
    m_data = new std::vector<uint16_t>();
    m_data->reserve(l_data);
    for (int i = 0; i < l_data; i++) {
        m_data->push_back(m__io->read_u2le());
    }
}

edf_t::body_t::data_recording_t::~data_recording_t() {
    _clean_up();
}

void edf_t::body_t::data_recording_t::_clean_up() {
    if (m_data) {
        delete m_data; m_data = 0;
    }
}

edf_t::body_t::signal_t::signal_t(int32_t p_signal_index, kaitai::kstream* p__io, edf_t::body_t* p__parent, edf_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_signal_index = p_signal_index;
    m_recordings = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void edf_t::body_t::signal_t::_read() {
    int l_recordings = _root()->header()->ndr();
    m_recordings = new std::vector<data_recording_t*>();
    m_recordings->reserve(l_recordings);
    for (int i = 0; i < l_recordings; i++) {
        m_recordings->push_back(new data_recording_t(m__io, this, m__root));
    }
}

edf_t::body_t::signal_t::~signal_t() {
    _clean_up();
}

void edf_t::body_t::signal_t::_clean_up() {
    if (m_recordings) {
        for (std::vector<data_recording_t*>::iterator it = m_recordings->begin(); it != m_recordings->end(); ++it) {
            delete *it;
        }
        delete m_recordings; m_recordings = 0;
    }
}
