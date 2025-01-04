<script lang="ts">
  import MatrixRain from "$components/Matrix_rain.svelte";
  // Placeholder for future functionality
</script>

<section class="relative min-h-screen flex flex-col items-center justify-center bg-cover bg-center" style="background-image: url('/images/intro-bg.jpg');">
  <!-- Overlay -->
  <div class="absolute inset-0 bg-black bg-opacity-80"></div>

  <!-- Content -->
  <div class="relative text-center text-white z-10">
    <h5 class="text-3xl uppercase tracking-widest text-pink-500">Hi,</h5>
    <h1 class="text-5xl md:text-7xl font-extrabold mt-4">I'm Charindu Thisara.</h1>
    <p class="text-lg md:text-xl mt-4 font-light flex justify-center space-x-4">
      <span>Computer Science and Engineering Undergraduate</span>
      <span class="text-gray-400">|</span>
      <span>Specialized in Cyber Security</span>
    </p>
    <a
      href="/Portfolio/about"
      class="mt-8 inline-block px-8 py-3 border border-white text-white rounded hover:bg-white hover:text-black transition"
    >
      More About Me >>>
    </a>
  </div>

  <MatrixRain />


  <!-- Social Media Icons -->
  <div class="absolute bottom-8 flex space-x-6">
    <a href="#" class="text-white text-xl hover:text-pink-500 transition"><i class="fab fa-facebook-f"></i></a>
    <a href="#" class="text-white text-xl hover:text-pink-500 transition"><i class="fab fa-behance"></i></a>
    <a href="#" class="text-white text-xl hover:text-pink-500 transition"><i class="fab fa-twitter"></i></a>
    <a href="#" class="text-white text-xl hover:text-pink-500 transition"><i class="fab fa-dribbble"></i></a>
    <a href="#" class="text-white text-xl hover:text-pink-500 transition"><i class="fab fa-instagram"></i></a>
  </div>
</section>