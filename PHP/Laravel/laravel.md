# Laravel Artisan Commands

Usage:
  command [options] [arguments]

Options:
  -h, --help            Display this help message
  -q, --quiet           Do not output any message
  -V, --version         Display this application version
      --ansi            Force ANSI output
      --no-ansi         Disable ANSI output
  -n, --no-interaction  Do not ask any interactive question
      --env[=ENV]       The environment the command should run under
  -v|vv|vvv, --verbose  Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug

Available commands:
	clear-compiled       Remove the compiled class file
	down                 Put the application into maintenance mode
	dump-server          Start the dump server to collect dump information.
	env                  Display the current framework environment
	help                 Displays help for a command
	inspire              Display an inspiring quote
	list                 Lists commands
	migrate              Run the database migrations
	optimize             Cache the framework bootstrap files
	preset               Swap the front-end scaffolding for the application
	serve                Serve the application on the PHP development server
	tinker               Interact with your application
	up                   Bring the application out of maintenance mode

	app
		app:name             Set the application namespace
	auth
		auth:clear-resets    Flush expired password reset tokens
 	cache
		cache:clear          Flush the application cache
		cache:forget         Remove an item from the cache
		cache:table          Create a migration for the cache database table
 	config
		config:cache         Create a cache file for faster configuration loading
		config:clear         Remove the configuration cache file
 	db
  		db:seed              Seed the database with records
 	event
		event:cache          Discover and cache the application's events and listeners
		event:clear          Clear all cached events and listeners
		event:generate       Generate the missing events and listeners based on registration
		event:list           List the application's events and listeners
 	key
  		key:generate         Set the application key
 	make
		make:auth            Scaffold basic login and registration views and routes
		make:channel         Create a new channel class
		make:command         Create a new Artisan command
		make:controller      Create a new controller class
		make:event           Create a new event class
		make:exception       Create a new custom exception class
		make:factory         Create a new model factory
		make:job             Create a new job class
		make:listener        Create a new event listener class
		make:mail            Create a new email class
		make:middleware      Create a new middleware class
		make:migration       Create a new migration file
		make:model           Create a new Eloquent model class
		make:notification    Create a new notification class
		make:observer        Create a new observer class
		make:policy          Create a new policy class
		make:provider        Create a new service provider class
		make:request         Create a new form request class
		make:resource        Create a new resource
		make:rule            Create a new validation rule
		make:seeder          Create a new seeder class
		make:test            Create a new test class
 	migrate
		migrate:fresh        Drop all tables and re-run all migrations
		migrate:install      Create the migration repository
		migrate:refresh      Reset and re-run all migrations
		migrate:reset        Rollback all database migrations
		migrate:rollback     Rollback the last database migration
		migrate:status       Show the status of each migration
 	notifications
  		notifications:table  Create a migration for the notifications table
 	optimize
  		optimize:clear       Remove the cached bootstrap files
 	package
  		package:discover     Rebuild the cached package manifest
 	queue
		queue:failed         List all of the failed queue jobs
		queue:failed-table   Create a migration for the failed queue jobs database table
		queue:flush          Flush all of the failed queue jobs
		queue:forget         Delete a failed queue job
		queue:listen         Listen to a given queue
		queue:restart        Restart queue worker daemons after their current job
		queue:retry          Retry a failed queue job
		queue:table          Create a migration for the queue jobs database table
		queue:work           Start processing jobs on the queue as a daemon
 	route
		route:cache          Create a route cache file for faster route registration
		route:clear          Remove the route cache file
		route:list           List all registered routes
 	schedule
  		schedule:run         Run the scheduled commands
 	session
  		session:table        Create a migration for the session database table
 	storage
  		storage:link         Create a symbolic link from "public/storage" to "storage/app/public"
 	vendor
  		vendor:publish       Publish any publishable assets from vendor packages
 	view
		view:cache           Compile all of the application's Blade templates
		view:clear           Clear all compiled view files

# Steps to Installation
	1) composer global require laravel/installer (Install Laravel Installer)
	2) laravel new blog OR composer create-project --prefer-dist laravel/laravel blog (Create project)
	3) php artisan serve (Run your Project)
	4) storage and bootstrap/cache (set permissions for these directories)
	5) php artisan key:generate (Generate application key)
	6) Setup configuration files and environment
	7) 

composer create-project --prefer-dist laravel/laravel blog
laravel new blog
Create new ptoject with the name laravel_blog

php artisan serve
	- Serve created project

php artisan make:controller TodosController
	- Create controller

php artisan make:migration create_todos_table --table=todos
	- Create migration

/app/Providers/AppServiceProvider.php
use Illuminate\Support\Facades\Schema;
function boot(){
    Schema::defaultStringLength(191); //NEW: Increase StringLength
}

php artisan make:migration create_todos_table --table=todos
	- Create migration

Todo
	1) Create Todo Controller and add index method and view
	2) Create todo models
	3) Create todo migrations
	4) Create factory
	5) Create seed
	6) Create Model and Get all todos
	7) Link Boostrape Lib
	8) Show Dodo by ID

----------------------------------------------------------------------------------------------------------------
composer create-project --prefer-dist laravel/laravel blog
	- Create Laravel Project

php artisan make:auth
	- Create Auth Functuionality provided by laravel

php artisan route:list
	- Get the lclearist of ROUTES

php artisan migrate
	- Migrate

php artisan make:model Category -m
	- Create Model with Migration

php artisan make:migration create_table_posts --table=posts
php artisan make:migration add_soft_delete_in_posts_table --table=posts
	- Create Migration

Category::create
	- Create records via model

php artisan storage:link
	- Link the Storage directory to Public storage directory

composer dump-autoload
	- This needs to run the Seeder

php artisan vendor:publish --tag=laravel-pagination
	- Publish the laravel view

```sh
function getFeaturedAttribute($featured)
{
	return asset($featured);
}
```

php artisan preset react
npm install
npm run dev
	- Integrate React

SQLSTATE[42000]: Syntax error or access violation: 1071 Specified key was too long; max key length is 767 bytes

```sh
path: mini_task_manager\app\Providers\AppServiceProvider.php
use Illuminate\Support\Facades\Schema;
public function boot()
{
	Schema::defaultStringLength(191);
}
```

composer require laravel/ui --dev
	- install the Bootstrap and Vue scaffolding provided by Laravel which is located in the laravel/ui Composer package. 

php artisan ui bootstrap
php artisan ui vue
php artisan ui react
	- Generate basic frontend scafollding