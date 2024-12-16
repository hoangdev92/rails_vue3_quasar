# RailsVue3Quasar

The rails_vue3_quasar gem is a powerful and straightforward tool designed to integrate Vue 3 with Quasar as the frontend library into your Ruby on Rails application. This gem simplifies the process of setting up Vue 3 and Quasar, allowing you to focus on building amazing features without worrying about the initial setup.

Key Features:
Seamless Vue 3 Integration: Automatically configures your Rails app to work with Vue 3, enabling modern, reactive frontend development.
Quasar Framework Support: Brings the full power of Quasar's rich UI components and tools to your Rails app.
Effortless Setup: After installation, simply start your Rails server and enjoy a fully functional Vue 3 + Quasar environment.
How It Works:
Install the gem.
Run the provided setup commands.
Start the Rails server and begin building your application with a modern frontend stack.
This gem is perfect for developers looking for a hassle-free way to integrate a Vue 3 + Quasar frontend into their Ruby on Rails projects. Get started today and experience the seamless development process!

### **Libraries Included with `rails_vue3_quasar`**

The `rails_vue3_quasar` gem leverages several powerful libraries to enhance your development experience and streamline the integration of Vue 3 with Rails. Here’s an overview of the key dependencies included:  

1. **`vite_rails` (`~> 3.0`, `>= 3.0.17`)**  
   - A modern asset bundler for Rails that integrates seamlessly with Vite.  
   - Handles efficient frontend bundling and live reloading during development for a smooth developer experience.  

2. **`inertia_rails` (`~> 3.4`)**  
   - Bridges the gap between your Rails backend and Vue 3 frontend by enabling the use of Inertia.js.  
   - Allows you to build single-page applications without the complexity of a separate API.  

3. **`js_from_routes` (`~> 4.0`, `>= 4.0.1`)**  
   - Provides a convenient way to generate JavaScript route helpers directly from your Rails routes.  
   - Makes it easier to reference your backend routes directly in Vue components.  

These libraries work together to provide a robust and modern development stack, combining the power of Rails, Vue 3, and Quasar for building dynamic and responsive applications.  

Ready to dive in? Install `rails_vue3_quasar` and enjoy an optimized development workflow!  

## Installation

The rails_vue3_quasar gem is designed to work seamlessly with modern Ruby on Rails applications. Please ensure your environment meets the following requirements:

Rails Version: Compatible with Rails 6.0 or higher.
Ruby Version: Requires Ruby 2.5 or higher.
If your project does not meet these version requirements, consider upgrading your Rails or Ruby environment to enjoy the full benefits of rails_vue3_quasar.

Add this line to your application's Gemfile:

```ruby
gem 'rails_vue3_quasar'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rails_vue3_quasar

## Usage

---

### **How to Use `rails_vue3_quasar`**

Follow these simple steps to get started with `rails_vue3_quasar` in your Ruby on Rails project:

1. **Install the Gem and Run the Setup Command**  
   After adding the gem to your Gemfile, navigate to your project directory and run the following command:  
   ```bash
   rails_vue3_quasar
   ```  
   Wait for the installation process to complete.  
   **Note:** If you encounter any errors related to missing dependencies, make sure to run `bundle install` first.

2. **Start the Rails Server**  
   Launch your Rails server using one of the following commands:  
   ```bash
   rails s
   ```  
   or  
   ```bash
   bin/dev
   ```

3. **Start the Vue Development Server**  
   In a separate terminal, start the Vue development server:  
   ```bash
   yarn dev
   ```

4. **Access the Demo Page**  
   Open your browser and navigate to the path:  
   ```
   http://localhost:3000/demo_vue
   ```  
   This is a demo page to verify that everything is set up correctly.

5. **Customize as You Wish**  
   Explore the project structure, review the Vue 3 and Quasar setup, and make any changes to suit your needs.  

Good luck, and enjoy building with Rails, Vue 3, and Quasar!

--- 


## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/rails_vue3_quasar. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the RailsVue3Quasar project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/rails_vue3_quasar/blob/master/CODE_OF_CONDUCT.md).
