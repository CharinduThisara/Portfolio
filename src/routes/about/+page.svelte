<script>
    // import Photo from './Photo.jpg // Import your photo component
  
    const fullName = 'Your Full Name';
    const birthDate = 'September 28, 1983';
    const job = 'Frontend Developer';
    const website = 'yourwebsite.com';
    const email = 'youremail@example.com';
  
    const skills = [
      { name: 'HTML5', level: 90 },
      { name: 'CSS3', level: 80 },
      { name: 'JQUERY', level: 70 },
      { name: 'PHP', level: 60 },
      { name: 'WORDPRESS', level: 50 },
    ];
  </script>
  
  <div class="container mx-auto">
    <div class="about text-center p-8">
      <h2 class="text-3xl font-bold mb-4">Let me introduce myself.</h2>
      <!-- <Photo class="rounded-full mb-4" /> {/* Use your imported photo component here */} -->
      <p class="text-lg leading-relaxed">
        Lorem ipsum Exercitation culpa qui dolor consequat exercitation fugiat
        laborum ex ea eiusmod ad do aliqua occaecat nimi ad mare sunt if paratur.
        Thus laboris amei exercitation veniam labore consectetur ea id quas eiusmod.
      </p>
    </div>
  
    <div class="profile p-8">
      <h3 class="text-2xl font-semibold mb-4">PROFILE</h3>
      <p class="text-lg leading-relaxed">
        Lorem ipsum Qui veniam ut consequat ex ullamco nulla in non ut esse in magna sint minim
        officia consectetur nisi caramada ea magna pariatur mellan.
      </p>
      <ul class="list-none p-0">
        <li class="flex items-center mb-2">
          <span class="font-semibold">FULLNAME:</span>
          <span class="ml-2">{fullName}</span>
        </li>
        <li class="flex items-center mb-2">
          <span class="font-semibold">BIRTH DATE:</span>
          <span class="ml-2">{birthDate}</span>
        </li>
        <li class="flex items-center mb-2">
          <span class="font-semibold">JOB:</span>
          <span class="ml-2">{job}</span>
        </li>
        <li class="flex items-center mb-2">
          <span class="font-semibold">WEBSITE:</span>
          <span class="ml-2">
            <a href={`http://${website}`} class="text-blue-500 hover:underline">
              {website}
            </a>
          </span>
        </li>
        <li class="flex items-center mb-2">
          <span class="font-semibold">EMAIL:</span>
          <span class="ml-2">
            <a href={`mailto:${email}`} class="text-blue-500 hover:underline">
              {email}
            </a>
          </span>
        </li>
      </ul>
    </div>
  
    <div class="skills p-8">
      <h3 class="text-2xl font-semibold mb-4">SKILLS</h3>
      <p class="text-lg leading-relaxed">
        Lorem ipsum Qui veniam ut consequat ex ullamco nulla in non ut esse in magna sint minim
        officia consectetur nisi caramada ea magna pariatur mellan.
      </p>
      {#each skills as skill}
        <div class="skill mb-4">
          <span class="font-semibold">{skill.name}</span>
          <div class="progress h-2 bg-gray-200 rounded-full">
            <div
              class="progress-bar bg-blue-500 rounded-full"
              style={`width: ${skill.level}%`}
            ></div>
          </div>
        </div>
      {/each}
    </div>
  
    <div class="buttons flex justify-center p-8">
      <button class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">
        HIRE ME
      </button>
      <a
        href="#"
        class="bg-gray-200 hover:bg-gray-300 text-gray-700 font-bold py-2 px-4 rounded ml-4"
      >
        DOWNLOAD CV
      </a>
    </div>
  </div>