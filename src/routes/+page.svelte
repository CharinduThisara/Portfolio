<script lang="ts">
  import Icon from '@iconify/svelte';
  import MatrixRain from "$components/Matrix_rain.svelte";
  import { on } from 'svelte/events';
  import { goto } from '$app/navigation';
  // Placeholder for future functionality
</script>

<section class="relative min-h-screen flex flex-col items-center justify-center bg-cover bg-center" style="background-image: url('/images/intro-bg.jpg');">
  <!-- Overlay -->
  <div class="absolute inset-0 bg-black bg-opacity-80"></div>

  <!-- Content -->
  <div class="relative text-center text-white z-10 px-4">
    <h5 class="text-2xl md:text-3xl uppercase tracking-widest text-pink-500">Hi,</h5>
    <h1 class="text-4xl md:text-5xl lg:text-7xl font-extrabold mt-4">I'm Charindu Thisara.</h1>
    <p class="text-base md:text-lg lg:text-xl mt-4 font-light flex flex-col md:flex-row justify-center space-y-2 md:space-y-0 md:space-x-4">
      <span>Computer Science and Engineering Undergraduate</span>
      <span class="hidden md:inline text-gray-400">|</span>
      <span>Specialized in Cyber Security</span>
    </p>
    <button class="relative mt-8 tracking-widest px-8 py-3 border border-white text-white rounded hover:bg-white hover:text-black transition flex justify-center items-center mx-auto w-full md:w-1/2"
            on:click={() => {
              goto('/Portfolio/about');
    }}>

      <a href="/Portfolio/about">
        More About Me 
      </a>
      <Icon icon="ant-design:double-right-outlined" width="30" height="30" style="color: #666" />
    </button>
  </div>

  <MatrixRain />


  <!-- Social Media Icons -->
  <div class="relative flex space-x-6 mt-8 z-10">
    <a href="https://github.com/CharinduThisara" class="text-white text-xl hover:text-gray-500 transition transform hover:scale-125 duration-300"><Icon icon="fa-brands:github" height="25" width="25" /></a>
    <a href="https://www.instagram.com/charinduthisara" class="text-white text-xl hover:text-pink-500 transition transform hover:scale-125 duration-300"><Icon icon="fa-brands:instagram" height="25" width="25" /></a>
    <a href="https://www.facebook.com/charindu.thisara?mibextid=ZbWKwL" class="text-white text-xl hover:text-blue-500 transition transform hover:scale-125 duration-300"><Icon icon="fa-brands:facebook-f" height="25" width="25" /></a>
  </div>
</section>