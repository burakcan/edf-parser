#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>
#include <vector>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class edf_t : public kaitai::kstruct {

public:
    class header_t;
    class body_t;

    edf_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, edf_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~edf_t();

    class header_t : public kaitai::kstruct {

    public:

        header_t(kaitai::kstream* p__io, edf_t* p__parent = nullptr, edf_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~header_t();

    private:
        bool f_ns;
        int32_t m_ns;

    public:
        int32_t ns();

    private:
        bool f_ndr;
        int32_t m_ndr;

    public:
        int32_t ndr();

    private:
        std::string m_version;
        std::string m_patient_id;
        std::string m_recording_id;
        std::string m_start_date;
        std::string m_start_time;
        std::string m_header_num_bytes;
        std::string m_reserved;
        std::string m_num_data_records;
        std::string m_data_duration;
        std::string m_num_signals;
        std::unique_ptr<std::vector<std::string>> m_labels;
        std::unique_ptr<std::vector<std::string>> m_transducers;
        std::unique_ptr<std::vector<std::string>> m_phys_dimensions;
        std::unique_ptr<std::vector<std::string>> m_phys_mins;
        std::unique_ptr<std::vector<std::string>> m_phys_maxes;
        std::unique_ptr<std::vector<std::string>> m_dig_mins;
        std::unique_ptr<std::vector<std::string>> m_dig_maxes;
        std::unique_ptr<std::vector<std::string>> m_prefiltering;
        std::unique_ptr<std::vector<std::string>> m_num_samples;
        std::unique_ptr<std::vector<std::string>> m_signals_reserved;
        edf_t* m__root;
        edf_t* m__parent;

    public:
        std::string version() const { return m_version; }
        std::string patient_id() const { return m_patient_id; }
        std::string recording_id() const { return m_recording_id; }
        std::string start_date() const { return m_start_date; }
        std::string start_time() const { return m_start_time; }
        std::string header_num_bytes() const { return m_header_num_bytes; }
        std::string reserved() const { return m_reserved; }
        std::string num_data_records() const { return m_num_data_records; }
        std::string data_duration() const { return m_data_duration; }
        std::string num_signals() const { return m_num_signals; }
        std::vector<std::string>* labels() const { return m_labels.get(); }
        std::vector<std::string>* transducers() const { return m_transducers.get(); }
        std::vector<std::string>* phys_dimensions() const { return m_phys_dimensions.get(); }
        std::vector<std::string>* phys_mins() const { return m_phys_mins.get(); }
        std::vector<std::string>* phys_maxes() const { return m_phys_maxes.get(); }
        std::vector<std::string>* dig_mins() const { return m_dig_mins.get(); }
        std::vector<std::string>* dig_maxes() const { return m_dig_maxes.get(); }
        std::vector<std::string>* prefiltering() const { return m_prefiltering.get(); }
        std::vector<std::string>* num_samples() const { return m_num_samples.get(); }
        std::vector<std::string>* signals_reserved() const { return m_signals_reserved.get(); }
        edf_t* _root() const { return m__root; }
        edf_t* _parent() const { return m__parent; }
    };

    class body_t : public kaitai::kstruct {

    public:
        class data_recording_t;
        class signal_t;

        body_t(kaitai::kstream* p__io, edf_t* p__parent = nullptr, edf_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~body_t();

        class data_recording_t : public kaitai::kstruct {

        public:

            data_recording_t(kaitai::kstream* p__io, edf_t::body_t::signal_t* p__parent = nullptr, edf_t* p__root = nullptr);

        private:
            void _read();
            void _clean_up();

        public:
            ~data_recording_t();

        private:
            std::unique_ptr<std::vector<uint16_t>> m_data;
            edf_t* m__root;
            edf_t::body_t::signal_t* m__parent;

        public:
            std::vector<uint16_t>* data() const { return m_data.get(); }
            edf_t* _root() const { return m__root; }
            edf_t::body_t::signal_t* _parent() const { return m__parent; }
        };

        class signal_t : public kaitai::kstruct {

        public:

            signal_t(int32_t p_signal_index, kaitai::kstream* p__io, edf_t::body_t* p__parent = nullptr, edf_t* p__root = nullptr);

        private:
            void _read();
            void _clean_up();

        public:
            ~signal_t();

        private:
            std::unique_ptr<std::vector<std::unique_ptr<data_recording_t>>> m_recordings;
            int32_t m_signal_index;
            edf_t* m__root;
            edf_t::body_t* m__parent;

        public:
            std::vector<std::unique_ptr<data_recording_t>>* recordings() const { return m_recordings.get(); }
            int32_t signal_index() const { return m_signal_index; }
            edf_t* _root() const { return m__root; }
            edf_t::body_t* _parent() const { return m__parent; }
        };

    private:
        std::unique_ptr<std::vector<std::unique_ptr<signal_t>>> m_signals;
        edf_t* m__root;
        edf_t* m__parent;

    public:
        std::vector<std::unique_ptr<signal_t>>* signals() const { return m_signals.get(); }
        edf_t* _root() const { return m__root; }
        edf_t* _parent() const { return m__parent; }
    };

private:
    std::unique_ptr<header_t> m_header;
    std::unique_ptr<body_t> m_body;
    edf_t* m__root;
    kaitai::kstruct* m__parent;

public:
    header_t* header() const { return m_header.get(); }
    body_t* body() const { return m_body.get(); }
    edf_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
