
# Couch Patata 🎬🍿  
**Discover, Rate, and Discuss Your Favorite Movies**  

Couch Patata is a **movie and TV show discovery platform** that helps users find where to watch movies and shows across different streaming platforms using the **TMDB API**. Users can **rate and discuss** movies while experiencing a sleek, interactive UI with smooth animations and creative transitions.  

## 🚀 Why Couch Patata?  
Built using **Ruby on Rails**, Couch Patata was created to explore the framework beyond **Node.js**. Through this project, we aimed to understand:  

- **Rails’ SQL Capabilities** 🗄️ – With Active Record, Rails offers powerful query optimizations, associations, and seamless database migrations.  
- **Built-in Conventions** 📏 – Rails follows **convention over configuration**, reducing boilerplate and making development faster.  
- **Scalability & Performance** ⚡ – Thanks to caching mechanisms, background jobs, and efficient DB queries, Rails handles large-scale applications well.  
- **Security** 🔒 – Rails has built-in protections against SQL injection, XSS, CSRF, and session hijacking.  
- **API-First Approach** 🔗 – Rails makes it easy to build robust APIs with tools like **GraphQL**, **Active Model Serializers**, and **JWT authentication**.  

## 🏗️ Tech Stack  
- **Backend:** Ruby on Rails  
- **Database:** PostgreSQL  
- **API Integration:** TMDB API  
- **Frontend:** React (optional)  
- **Deployment:** Docker  

## 📌 Features  
✅ **Movie & TV Show Search** – Search for any movie or show and get detailed information from TMDB.  
✅ **User Ratings & Reviews** – Users can rate and review movies, helping others decide what to watch.  
✅ **Watch Providers** – Find where to stream movies based on location.  
✅ **Custom Recommendations** – Personalized movie recommendations based on user ratings.  
✅ **Interactive UI & Animations** – Smooth transitions, custom loading screens, and engaging visuals.  

## 📖 Getting Started  
### 1️⃣ Clone the Repo  
```bash
git clone https://github.com/yourusername/couch-patata.git
cd couch-patata
```

### 2️⃣ Install Dependencies  
```bash
bundle install
yarn install # If using React for frontend
```

### 3️⃣ Setup Database  
```bash
rails db:create
rails db:migrate
```

### 4️⃣ Start the Server  
```bash
rails s
```

### 5️⃣ Run Tests (if any)  
```bash
rspec
```

## 🛠️ API Endpoints  
| Method | Endpoint | Description |
|--------|---------|-------------|
| `GET` | `/movies` | Fetch all movies |
| `GET` | `/movies/:id` | Get details of a specific movie |
| `POST` | `/movies/:id/rate` | Rate a movie |
| `GET` | `/movies/:id/reviews` | Fetch all reviews for a movie |
| `POST` | `/movies/:id/reviews` | Add a review |

## 📚 Learning from This Project  
Through **Couch Patata**, we explored:  
- How **Ruby on Rails** differs from **Node.js** in backend development.  
- The power of **SQL queries** in Rails vs. MongoDB in Node.js.  
- Rails’ **Active Record ORM** compared to **Mongoose** in Node.js.  
- The benefits of **convention over configuration** in Rails, making development smoother.  
- Security features and built-in functionalities that reduce manual work.  

## 🌍 Contributing  
Pull requests are welcome! If you'd like to contribute, feel free to fork the repo and submit a PR.  
