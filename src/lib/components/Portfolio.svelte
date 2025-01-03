<script>
  import { fade } from 'svelte/transition';
</script>

<section id="portfolio" class="portfolio">
    <h2>My Work</h2>
    <div class="projects">
      <div class="project" transition:fade>
        <img src="/assets/project1.jpg" alt="Project 1" />
        <h3>Project Title</h3>
        <p>Project description goes here.</p>
      </div>
      <div class="project" transition:fade>
        <img src="/assets/project2.jpg" alt="Project 2" />
        <h3>Project Title</h3>
        <p>Project description goes here.</p>
      </div>
    </div>
  </section>
  
  <style>
    .portfolio {
      padding: 2rem 1rem;
    }
    .projects {
      display: flex;
      gap: 1rem;
    }
    .project {
      flex: 1;
      padding: 1rem;
      border: 1px solid #ddd;
      text-align: center;
    }
    .project img {
      width: 100%;
      border-radius: 5px;
    }
  </style>
  