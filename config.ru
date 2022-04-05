require "./config/application"

use OTR::ActiveRecord::ConnectionManagement

StatsService.compile!
run StatsService
