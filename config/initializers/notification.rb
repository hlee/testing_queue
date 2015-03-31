require 'acapi/publishers/logger'
require 'acapi/subscribers/logger'

Acapi::Publishers::Logger.listen_queue("acapi.logger", "logger")
Acapi::Subscribers::Logger.register("acapi.re.logger")
