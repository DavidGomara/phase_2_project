require './config/environment'

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

Sinatra::NotFound

use Rack::MethodOverride
use ArtworksController
use UsersController
use AuthorsController
use MusiciansController
use PaintersController
run ApplicationController
