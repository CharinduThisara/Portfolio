<script lang="ts">
  // Define reusable data for portfolio projects
  interface Project {
    title: string;
    duration: string;
    description: string;
    stack: string;
    contributions: string[];
    image: string;
    alt: string;
    link?: string;
  }

  export let name = 'Default Name';

  export const projects: Project[] = [
    {
      title: "Final Year Project",
      duration: "Ongoing",
      description: "Optimizing containerized workloads during container startup by automating resource allocation using a predictive approach.",
      stack: "Kubernetes, Docker, Go, Python, Bash",
      contributions: [
        "Customized Google’s Kubernetes Startup-CPU boost to implement automatic startup CPU boost.",
        "Investigated the correlation between the containerized application’s programming language and its startup CPU usage."
      ],
      image: "/images/portfolio/project-1.jpg",
      alt: "Final Year Project"
    },
    {
      title: "Professional Portfolio",
      duration: "May 2024 - Aug 2024",
      description: "A full-stack development project to create a global ICT learning platform for students.",
      stack: "SvelteKit, Laravel, MySQL",
      contributions: [
        "Developed frontend (student side and some admin features).",
        "Automated deployment processes."
      ],
      image: "/images/portfolio/project-2.jpg",
      alt: "Professional Portfolio",
      link: "https://ictfromabc.com"
    },
    {
      title: "Cyber Security Project",
      duration: "Sept 2023 - Nov 2023",
      description: "Securing \"Pandora Company\" using Networking, Operating System security, and Penetration testing.",
      stack: "CS3400 Cyber Security Project",
      contributions: [],
      image: "/images/portfolio/project-3.jpg",
      alt: "Cyber Security Project"
    },
    {
      title: "Big Number Library",
      duration: "Sept 2024 - Oct 2024",
      description: "A cryptography library performing arithmetic operations with huge integers.",
      stack: "C++, CMake",
      contributions: ["Individual"],
      image: "/images/portfolio/project-4.jpg",
      alt: "Big Number Library",
      link: "https://github.com/BigNumLibCPP"
    },
    {
      title: "Multi-Region Active-Active Deployment",
      duration: "Dec 2023 - May 2024",
      description: "Researching data-handling strategies for multi-region active-active deployments.",
      stack: "Java, OSGi, Kubernetes, Docker, Azure Cosmos DB, WSO2 Identity Server",
      contributions: [
        "Developed a mechanism to deploy WSO2 IS as HOT DR.",
        "Deployed WSO2 Identity Server as an Active-Active setup for limited use cases."
      ],
      image: "/images/portfolio/project-5.jpg",
      alt: "Multi-Region Active-Active Deployment"
    },
    {
      title: "Airline Reservation System",
      duration: "Sep 2022 - Feb 2023",
      description: "System for reservations and user authentication with admin panel monitoring.",
      stack: "ReactJS, Node.js, MySQL",
      contributions: [],
      image: "/images/portfolio/project-6.jpg",
      alt: "Airline Reservation System",
      link: "https://github.com/DBMS-Air-Line-Reservation"
    },
    {
      title: "Email Client",
      duration: "Jul 2022 - Aug 2022",
      description: "A Java-based email client using the javax.mail library.",
      stack: "Java",
      contributions: [],
      image: "/images/portfolio/project-7.jpg",
      alt: "Email Client",
      link: "https://github.com/EmailClient"
    },
    {
      title: "Pintos Project",
      duration: "Sep 2022 - Dec 2022",
      description: "Implementing fundamental OS operations like timers, synchronization, and job scheduling.",
      stack: "C",
      contributions: [],
      image: "/images/portfolio/project-8.jpg",
      alt: "Pintos Project",
      link: "https://github.com/Pintos"
    }
  ];
</script>

<section class="absolute inset-0 bg-black bg-opacity-80">
  <div class="projects mx-auto px-4 overflow-y-auto mt-24">
    <h2 class="text-4xl font-bold text-center mb-12">Projects</h2>
    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
      {#each projects as project}
        <div class="group bg-gray-100 p-6 rounded-lg shadow hover:shadow-lg transition">
          <img
            class="w-full h-48 object-cover rounded-md"
            src={project.image}
            alt={project.alt}
          />
          <h3 class="mt-4 text-xl font-bold group-hover:text-blue-500 transition">
            {project.title} ({project.duration})
          </h3>
          <p class="text-gray-600 mt-2">
              {project.description}
              <br><strong>Stack:</strong> {project.stack}
              {#if project.contributions.length > 0}
                <br><strong>Contributions:</strong>
              {/if}
            </p>
            {#if project.contributions.length > 0}
              <ul class="list-disc pl-6">
                {#each project.contributions as contribution}
                  <li>{contribution}</li>
                {/each}
              </ul>
            {/if}
            <p class="text-gray-600 mt-2">
              {#if project.link}
                <br><a href={project.link} target="_blank" class="text-blue-500 hover:underline">Learn More</a>
              {/if}
          </p>
        </div>
      {/each}
    </div>
  </div>
</section>

<style>

  .projects {
    width: 75%;
    max-height: calc(100vh - 128px);
    background-color: #7b91a700;
  }

  .projects img {
    border-radius: 8px;
  }

  .projects h3 {
    margin-bottom: 0.5rem;
  }

  .projects p {
    margin: 0.5rem 0;
  }

  .projects ul {
    margin: 0;
    padding: 0;
    list-style: none;
  }

  .projects ul li {
    margin-bottom: 0.5rem;
  }


</style>