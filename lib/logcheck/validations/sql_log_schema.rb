# frozen_string_literal: true

module LogcheckApp
  SqlLogSchema = Dry::Validation.Params do # rubocop:disable Metrics/BlockLength
    configure { config.type_specs = true }

    optional(:id, :integer).filled(:int?)
    required(:action_type, Types::StrippedString).maybe(:str?)
    required(:duration_in_ms, :decimal).maybe(:decimal?)
    required(:duration_in_secs, :decimal).maybe(:decimal?)
    required(:duration_in_minutes, :decimal).maybe(:decimal?)
    required(:csv_row_no, :integer).maybe(:int?)
    required(:sql_query, Types::StrippedString).maybe(:str?)
    required(:query_fingerprint, Types::StrippedString).maybe(:str?)
    required(:log_message, Types::StrippedString).maybe(:str?)
    required(:holding_process_id, :integer).maybe(:int?)
    required(:waiting_process_id, :integer).maybe(:int?)
    required(:holding_transaction_id, :integer).maybe(:int?)
    required(:lock_wait_duration, :decimal).maybe(:decimal?)
    required(:lock_acquired, :bool).maybe(:bool?)
    required(:lock_waiting, :bool).maybe(:bool?)
    required(:time_stamp, :date_time).maybe(:date_time?)
    required(:user_name, Types::StrippedString).maybe(:str?)
    required(:database_name, Types::StrippedString).maybe(:str?)
    required(:process_id, :integer).maybe(:int?)
    required(:host_port, Types::StrippedString).maybe(:str?)
    required(:session_id, Types::StrippedString).maybe(:str?)
    required(:line_no, :integer).maybe(:int?)
    required(:command_tag, Types::StrippedString).maybe(:str?)
    required(:session_start_time, :date_time).maybe(:date_time?)
    required(:virtual_transaction_id, Types::StrippedString).maybe(:str?)
    required(:regular_transaction_id, :integer).maybe(:int?)
    required(:error_severity, Types::StrippedString).maybe(:str?)
    required(:sqlstate_code, :integer).maybe(:int?)
    required(:error_message, Types::StrippedString).maybe(:str?)
    required(:error_message_detail, Types::StrippedString).maybe(:str?)
    required(:hint, Types::StrippedString).maybe(:str?)
    required(:internal_query, Types::StrippedString).maybe(:str?)
    required(:char_cnt_int_query, Types::StrippedString).maybe(:str?)
    required(:error_context, Types::StrippedString).maybe(:str?)
    required(:user_query, Types::StrippedString).maybe(:str?)
    required(:char_cnt_usr_query, Types::StrippedString).maybe(:str?)
    required(:pg_err_loc, Types::StrippedString).maybe(:str?)
    required(:application_name, Types::StrippedString).maybe(:str?)
  end
end
