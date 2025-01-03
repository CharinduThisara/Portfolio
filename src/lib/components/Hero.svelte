<script>
    import { fade } from "svelte/transition";
  </script>
  
  <section id="home" class="hero" in:fade={{ duration: 800 }}>
    <div class="content">
      <h1>Hello, I'm <span>John Doe</span></h1>
      <p>Frontend Developer & Designer</p>
      <a href="#portfolio" class="btn">View Portfolio</a>
    </div>
  </section>
  
  <style>
    .hero {
      display: flex;
      align-items: center;
      justify-content: center;
      height: 100vh;
      background: url('/assets/hero-bg.jpg') no-repeat center center/cover;
      text-align: center;
      color: white;
    }
    .btn {
      background: #f39c12;
      color: white;
      padding: 0.5rem 1rem;
      text-decoration: none;
      border-radius: 5px;
      transition: background 0.3s;
    }
    .btn:hover {
      background: #d35400;
    }
  </style>
  