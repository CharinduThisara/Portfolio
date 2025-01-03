<script>
    let links = ["Home", "About", "Portfolio", "Contact"];
  </script>
  
  <nav class="navbar">
    <div class="container">
      <h1 class="logo">My Portfolio</h1>
      <ul class="nav-links">
        {#each links as link}
          <li><a href={`#${link.toLowerCase()}`}>{link}</a></li>
        {/each}
      </ul>
    </div>
  </nav>
  
  <style>
    .navbar {
      display: flex;
      justify-content: space-between;
      padding: 1rem;
      background: #111;
      color: white;
    }
    .nav-links li {
      display: inline;
      margin-right: 1rem;
    }
    .nav-links a {
      color: white;
      text-decoration: none;
      transition: color 0.3s;
    }
    .nav-links a:hover {
      color: #f39c12;
    }
  </style>
  