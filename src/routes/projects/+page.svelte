<section class="py-16 bg-white">
  <div class="container mx-auto px-4">
    <h2 class="text-4xl font-bold text-center mb-12">Portfolio</h2>
    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
      {#each Array.from({ length: 6 }) as _, i}
        <div class="group bg-gray-100 p-6 rounded-lg shadow hover:shadow-lg transition">
          <img
            class="w-full h-48 object-cover rounded-md"
            src={`/images/portfolio/project-${i + 1}.jpg`}
            alt={`Project ${i + 1}`}
          />
          <h3 class="mt-4 text-xl font-bold group-hover:text-blue-500 transition">
            Project {i + 1}
          </h3>
          <p class="text-gray-600 mt-2">Brief description of the project.</p>
        </div>
      {/each}
    </div>
  </div>
</section>
