# Event Management System

A modern, full-featured event management web application built with Ruby on Rails 7.1.6. Connect, create, and celebrate with our community events platform.

## ✨ Features

- **User Authentication**: Secure sign-up and sign-in with Devise
- **Event Management**: Create, edit, and manage events with rich details
- **Ticket System**: Purchase tickets with instant email confirmations
- **Modern UI/UX**: Beautiful Bootstrap 5 interface with custom styling
- **Responsive Design**: Works perfectly on desktop, tablet, and mobile
- **Email Notifications**: Automated ticket confirmations via ActionMailer
- **Professional Branding**: Custom logo and consistent design system

## 🚀 Live Demo

[View the live application](https://your-domain.com) *(deploy when ready)*

## 🛠️ Tech Stack

- **Backend**: Ruby on Rails 7.1.6
- **Database**: SQLite (development), PostgreSQL (production)
- **Frontend**: Bootstrap 5, FontAwesome icons, Custom CSS
- **Authentication**: Devise gem
- **Email**: ActionMailer with SMTP
- **Deployment**: Docker ready

## 📋 Prerequisites

- Ruby 3.0.2 or higher
- Rails 7.1.6
- SQLite 3 (development)
- Node.js and Yarn (for asset compilation)

## 🔧 Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/your-username/event-management-system.git
   cd event-management-system
   ```

2. **Install dependencies**
   ```bash
   bundle install
   yarn install
   ```

3. **Database setup**
   ```bash
   rails db:create
   rails db:migrate
   rails db:seed
   ```

4. **Start the server**
   ```bash
   rails server
   ```

5. **Visit the application**
   Open [http://localhost:3000](http://localhost:3000) in your browser

## 📊 Database Seeds

The application comes with sample data:
- 2 test users (test@example.com, organizer@example.com)
- 5 sample events across different categories
- Password for all users: `password123`

## 🎨 UI/UX Features

- **Hero Section**: Eye-catching gradient background with animations
- **Event Cards**: Professional cards with images and hover effects
- **Load More**: Progressive loading with smooth animations
- **Responsive Grid**: 4-column layout that adapts to screen size
- **Modern Buttons**: Gradient buttons with micro-interactions
- **Consistent Branding**: Logo in header and footer

## 📁 Project Structure

```
event-management-system/
├── app/
│   ├── assets/          # Stylesheets, JavaScript, images
│   ├── controllers/     # Rails controllers
│   ├── helpers/         # View helpers
│   ├── mailers/         # Email functionality
│   ├── models/          # Data models
│   └── views/           # ERB templates
├── config/              # Rails configuration
├── db/                  # Database files and migrations
├── lib/                 # Custom libraries
├── public/              # Static assets
├── test/                # Test files
└── vendor/              # Third-party code
```

## 🔐 Authentication

- **Sign Up**: Create new account
- **Sign In**: Login with email/password
- **Password Reset**: Forgot password functionality
- **Account Management**: Edit profile and settings

## 🎫 Ticket System

- **Browse Events**: View all available events
- **Purchase Tickets**: Secure ticket purchasing
- **Email Confirmations**: Instant ticket confirmations
- **Ticket Management**: View purchased tickets

## 📧 Email Configuration

Configure email settings in `config/environments/development.rb`:

```ruby
config.action_mailer.delivery_method = :smtp
config.action_mailer.smtp_settings = {
  address: "smtp.gmail.com",
  port: 587,
  # ... other settings
}
```

## 🧪 Testing

Run the test suite:
```bash
rails test
```

## 🚀 Deployment

### Docker Deployment
```bash
docker build -t event-management-system .
docker run -p 3000:3000 event-management-system
```

### Heroku Deployment
1. Create Heroku app
2. Set environment variables
3. Push to Heroku
4. Run migrations: `heroku run rails db:migrate`

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests
5. Submit a pull request

## 📝 License

© 2025 Event Management System - Richard Sawanaka

## 📞 Support

For questions or support, please open an issue on GitHub.

---

**Built with ❤️ using Ruby on Rails**
