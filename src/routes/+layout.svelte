<script lang="ts">
  import Footer from "$components/Footer.svelte";
  import Header from "$components/Header.svelte";
  import "../app.css";
</script>

<div class="min-h-screen flex flex-col">
  <main class="flex-grow">
    <Header />
    <slot />
    <Footer />
  </main>
</div>

<svelte:head>
  <meta name="viewport" content="width=device-width height=device-height initial-scale=1.0" />
  <!-- Any other meta tags or head elements can be added here -->
</svelte:head>

<style>

  :global(body, html) {
      margin: 0;
      padding: 0;
      height: 100%;
      width: 100%;
      overflow: hidden; /* Ensure no scrollbars */
    }
  
</style>