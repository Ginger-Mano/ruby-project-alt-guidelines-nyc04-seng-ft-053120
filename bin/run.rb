require_relative '../config/environment'

interface = Interface.new()
interface.greet
shelter_instance = interface.choose_login_or_register
interface.shelter = shelter_instance


interface.main_menu
# cli = CommandLineInterface.new
# cli.greet

# puts "hello world"
