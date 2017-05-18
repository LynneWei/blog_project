# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )

Rails.application.config.assets.precompile += %w( 
  app/assets/stylesheets/governance/v2/shared/navigation_bar.css
  app/assets/stylesheets/governance/v2/dashboards/show.css
  app/assets/stylesheets/governance/v2/sessions/new.css
  app/assets/stylesheets/governance/v2/shared/footer.css
  app/assets/stylesheets/governance/v2/articles/index.css
  app/assets/stylesheets/governance/v2/articles/show.css
  app/assets/stylesheets/governance/v2/leave_messages/index.css

  app/assets/stylesheets/governance/v2/shared/navigation_bar.js

  app/assets/images/governance/v2/users/icon_01.png

)

