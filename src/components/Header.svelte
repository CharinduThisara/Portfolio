<script lang="ts">
  import { page } from '$app/stores';  // Import $page store from SvelteKit
  import Icon from '@iconify/svelte';

  // Define the current route as a writable store (not needed now)
  // const currentRoute = writable('/Portfolio/'); // Default route 

  let mouseX = 0;
  let mouseY = 0;

  const handleMouseMove = (event: MouseEvent) => {
    mouseX = event.clientX / window.innerWidth;
    mouseY = event.clientY / window.innerHeight;
  };

  const icons = [
    { route: '/Portfolio/', icon: 'material-symbols:home-outline-rounded', label: 'Home' },
    { route: '/Portfolio/about', icon: 'ix:user-profile-filled', label: 'About' },
    { route: '/Portfolio/projects', icon: 'lucide:rocket', label: 'Portfolio' },
    { route: '/Portfolio/contact', icon: 'line-md:email-filled', label: 'Contact' },
  ];

  // You no longer need to use currentRoute manually; we'll use $page directly
  $: activeIcon = icons.find(icon => icon.route === $page.url.pathname);

</script>

<header
  class="header fixed top-0 left-0 w-full text-white z-50"
  on:mousemove={handleMouseMove}
  role="navigation"
  style="background-position: {mouseX * 50}% {mouseY * 50}%"
>
  <div class="mx-auto flex items-center lg:ml-16">
    <!-- Icon Section -->
    <div class="icon-wrapper relative flex items-center p-5">
      <!-- Show Active Icon -->
      <span class="active-icon p-5">
        {#each icons as { route, icon, label }}
          {#if $page.url.pathname === route}  <!-- Using $page.url.pathname to check current route -->
            <a
                href={route}
                class="cursor-pointer p-5"
                aria-label={label}
              >
              <div>
                <Icon icon={icon} width="40" height="40" style="color: #fff;" />
              </div>
            </a>
          {/if}
        {/each}
      </span>

      <!-- Hover Section for Other Icons -->
      <span class="hidden-icons">
        {#each icons as { route, icon, label }}
          {#if $page.url.pathname !== route}  <!-- Using $page.url.pathname to check current route -->
            <a
              href={route}
              class="hover-icon cursor-pointer p-5"
              aria-label={label}
            >
              <div>
                <Icon {icon} width="36" height="36" style="color: #aaa;" />
              </div>
            </a>
          {/if}
        {/each}
      </span>
    </div>
  </div>
</header>

<style>
  .header {
    background: linear-gradient(to top, rgba(185, 166, 166, 0), rgba(0, 0, 0, 0.425)); /* Darker gradient towards the top */
    text-align: center; /* Center the header content */
  }

  /* Keyframes for animations */
  @keyframes inactiveFadeIn {
    from {
      opacity: 0;
      transform: translateX(-20px);
    }
    to {
      opacity: 1;
      transform: translateX(0);
    }
  }

  @keyframes inactiveFadeOut {
    from {
      opacity: 1;
      transform: translateX(0);
    }
    to {
      opacity: 0;
      transform: translateX(-20px);
    }
  }

  @keyframes activeFadeIn {
    from {
      opacity: 0;
      transform: translateX(20px);
    }
    to {
      opacity: 1;
      transform: translateX(0);
    }
  }

  @keyframes activeFadeOut {
    from {
      opacity: 1;
      transform: translateX(0);
    }
    to {
      opacity: 0;
      transform: translateX(20px);
    }
  }

  /* Active icon styling */
  .active-icon {
    transition: opacity 0.3s ease, transform 0.3s ease;
    animation: activeFadeIn 0.5s forwards;
  }

  .active-icon a {
    opacity: 1;
    transition: opacity 0.3s ease, transform 0.3s ease;
    animation: activeFadeIn 0.5s forwards;
  }

  

  /* Hover state for the icons */
  .icon-wrapper:hover .hidden-icons {
    opacity: 1;
    pointer-events: auto;
    transform: translateX(0);
  }

  /* Initially hide the icons off-screen */
  .hidden-icons {
    display: flex;
    opacity: 0;
    pointer-events: none;
    transform: translateX(-20px);
    transition: opacity 0.3s ease-out, transform 0.5s ease-in-out;
  }

  /* Hover effects for icons */
  .hidden-icons a {
    transition: transform 0.3s ease-in-out, opacity 0.3s ease-in-out;
    opacity: 0;
    transform: translateX(-20px);
    animation: fadeOut 0.5s forwards;
  }

  /* Make icons larger when hovered */
  .hidden-icons a:hover {
    transform: scale(1.2);
    opacity: 1;
  }

  /* Show icons on hover */
  .icon-wrapper:hover .hidden-icons a {
    opacity: 1;
    transform: translateX(0);
    animation: inactiveFadeIn 0.5s forwards;
  }

  .icon-wrapper:not(:hover) .hidden-icons a {
    animation: inactiveFadeOut 0.5s forwards;
    opacity: 0; /* Ensure visibility is set to 0 */
    transform: translateX(-20px); /* Ensure it moves off-screen */
  }


  /* Mobile responsiveness */
  @media (max-width: 768px) {
    .header {
      text-align: center; /* Center header content horizontally on mobile */
      padding: 10px; /* Add padding for better spacing */
      display: flex; /* Use flexbox for centering */
      justify-content: center; /* Center content horizontally */
    }

    .icon-wrapper {
      flex-direction: row; /* Keep icons in a row on mobile */
      align-items: center; /* Center align icons */
      
    }

    .hidden-icons {
      flex-direction: row; /* Keep hidden icons in a row */
      opacity: 1; /* Ensure hidden icons are always visible */
      pointer-events: auto; /* Enable pointer events */
      transform: translateX(0); /* No transform needed */
    }

    .hidden-icons a {
      transform: translateX(0); /* No transform needed */
      opacity: 1; /* Ensure icons are fully visible */
    }

    .icon-wrapper:hover .hidden-icons {
      transform: translateX(0); /* No transform needed */
    }

    .icon-wrapper:hover .hidden-icons a {
      transform: translateX(0); /* No transform needed */
    }
  }
</style>
