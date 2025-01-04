<script>
  const profile = {
    name: "Your Name",
    introduction:
      "I’m a dedicated computer science student with a deep interest in cyber-security, software development, and DevOps. My passion lies in creating software solutions that are secure, scalable, and innovative. With my curious and open mindset, I thrive on solving complex problems and exploring the collaboration of development and operations, committed to making a positive impact in the digital world.",
  };

  const education = [
    {
      title: "University of Moratuwa",
      location: "Moratuwa, Sri Lanka",
      details: "B.Sc. in Engineering Hons. (Computer Science and Engineering)",
      period: "Mar 2021 - Present",
      gpa: "CGPA: 3.83/4.0 (Up to and including 6th semester)",
      expectedGraduation: "Expected Graduation: 2025",
    },
    {
      title: "Maliyadeva College",
      location: "Kurunegala, Sri Lanka",
      details:
        "G.C.E. Advanced Level (Physical Science) & G.C.E. Ordinary Level",
      achievements: [
        "G.C.E. Advanced Level Examination (2017-2019): Z Score: 2.9597, District Rank: 4, Island Rank: 14",
        "G.C.E. Ordinary Level Examination (2015-2016): Passed with 9 Distinctions (A Grades)",
      ],
    },
  ];

  const workExperience = [
    {
      company: "WSO2",
      role: "Intern Engineer (IAM)",
      period: "Nov 2023 - May 2024",
      responsibilities: [
        "Explored the WSO2 Identity Server in depth (OIDC, SAML, WS-Fed configurations, and deployment strategies).",
        "Conducted research on Active-Active Deployment of WSO2 Identity Server using Azure Cosmos DB and OSGi bundling.",
        "Gained experience with Azure DevOps for vulnerability scanning and infrastructure deployment architecture.",
      ],
    },
  ];

  const skillsSummary = {
    technical: [
      "C", "C++", "Java", "Python", "JavaScript", "Bash", "SQL",
      "ReactJS", "NodeJS", "Svelte-kit", "Go", "Spring-boot",
    ],
    tools: [
      "VMs", "VSCode", "IntelliJ", "Git", "Linux", "Kubernetes", "Docker",
      "Azure Clouds",
    ],
    softSkills: [
      "Fast learning", "Adaptability", "Time Management",
      "Leadership", "Strategic Planning", "Communication Skills",
    ],
    languages: {
      english: "Professional working proficiency",
      sinhala: "Native proficiency",
    },
  };

  const areasOfInterest = [
    "DevOps",
    "Cyber Security",
    "Back-end Development",
    "Secure Application Development",
    "Front-end Development",
    "Computer Architecture",
  ];

  const coursework = {
    cyberSecurity: [
      "CS3460 Operating Systems Security (A)",
      "CS2043 Operating Systems (A+)",
      "CS3480 Principles of Secure Application Development (A)",
      "CS3400 Cyber Security Project (A)",
      "CS3053 Computer Security (A-)",
      "CS4433 Network and System Administration",
      "CS4463 Computer and Network Security",
      "CS4453 Information Security and Cryptography",
    ],
    databaseSystems: ["CS3043 Database Systems (A-)",],
    computerArchitecture: ["CS2053 Computer Architecture (A)"],
    computerNetworks: [
      "CS2033 Data Communication and Networking (A)",
      "CS3033 Computer Networks (A-)",
      "CS3413 Advanced Networking (B)",
    ],
    mathematics: [
      "MA2034 Linear Algebra (A+)",
      "MA2014 Differential Equations (A)",
      "MA3014 Applied Statistics (A)",
      "MA3024 Numerical Methods (A+)",
      "MA3030 Operational Research (A)",
      "MA2024 Calculus (A+)",
      "MA2054 Graph Theory (A+)",
      "MA4144 Neural Networks and Fuzzy Logic",
    ],
  };
</script>

<section class="absolute inset-0 bg-black bg-opacity-80">
  <div class="mx-auto px-4 overflow-y-auto mt-24">
    <div class="about-section mt-8">
      <div class="section">
        <h2>About Me</h2>
        <p>{profile.introduction}</p>
      </div>
  
      <div class="section">
        <h2>Education</h2>
        {#each education as edu}
          <div>
            <h3>{edu.title}</h3>
            <p>{edu.location}</p>
            <p>{edu.details}</p>
            <p>{edu.period}</p>
            {#if edu.gpa}<p>{edu.gpa}</p>{/if}
            {#if edu.expectedGraduation}<p>{edu.expectedGraduation}</p>{/if}
            {#if edu.achievements}
              <ul>
                {#each edu.achievements as achievement}
                  <li>{achievement}</li>
                {/each}
              </ul>
            {/if}
          </div>
        {/each}
      </div>
  
      <div class="section">
        <h2>Work Experience</h2>
        {#each workExperience as work}
          <div>
            <h3>{work.role} at {work.company}</h3>
            <p>{work.period}</p>
            <ul>
              {#each work.responsibilities as responsibility}
                <li>{responsibility}</li>
              {/each}
            </ul>
          </div>
        {/each}
      </div>
  
      <div class="section">
        <h2>Skills</h2>
        <div class="skills-list">
          <h3>Technical Skills:</h3>
          {#each skillsSummary.technical as skill}
            <span>{skill}</span>
          {/each}
          <h3>Tools:</h3>
          {#each skillsSummary.tools as tool}
            <span>{tool}</span>
          {/each}
          <h3>Soft Skills:</h3>
          {#each skillsSummary.softSkills as skill}
            <span>{skill}</span>
          {/each}
          <h3>Languages:</h3>
          <p>English: {skillsSummary.languages.english}</p>
          <p>Sinhala: {skillsSummary.languages.sinhala}</p>
        </div>
      </div>
  
      <div class="section">
        <h2>Areas of Interest</h2>
        <ul>
          {#each areasOfInterest as area}
            <li>{area}</li>
          {/each}
        </ul>
      </div>
  
      <div class="section">
        <h2>Coursework</h2>
        <div>
          <h3>Cyber Security</h3>
          <ul>
            {#each coursework.cyberSecurity as course}
              <li>{course}</li>
            {/each}
          </ul>
  
          <h3>Database Systems</h3>
          <ul>
            {#each coursework.databaseSystems as course}
              <li>{course}</li>
            {/each}
          </ul>
  
          <h3>Computer Architecture</h3>
          <ul>
            {#each coursework.computerArchitecture as course}
              <li>{course}</li>
            {/each}
          </ul>
  
          <h3>Computer Networks</h3>
          <ul>
            {#each coursework.computerNetworks as course}
              <li>{course}</li>
            {/each}
          </ul>
  
          <h3>Mathematics</h3>
          <ul>
            {#each coursework.mathematics as course}
              <li>{course}</li>
            {/each}
          </ul>
        </div>
      </div>
    </div>
  </div>
</section>

<style>
  .about-section {
    margin: 128px auto 0;
    overflow-y: auto;
    width: 75%;
    max-height: calc(100vh - 128px);
  }

  .section h2 {
    margin-bottom: 1rem;
    font-size: 1.8rem;
    font-weight: bold;
    color: #2c3e50;
  }

  ul {
    margin: 0;
    padding: 0;
    list-style: none;
  }

  ul li {
    margin-bottom: 0.5rem;
  }

  .skills-list span {
    display: inline-block;
    background: #ecf0f1;
    margin: 0.3rem;
    padding: 0.3rem 0.6rem;
    border-radius: 4px;
  }

  h3 {
    font-size: 1.4rem;
    color: #34495e;
    margin-bottom: 0.5rem;
  }

  p {
    margin: 0.5rem 0;
  }

  .skills-list {
    margin-top: 1rem;
  }

  .skills-list h3 {
    margin-top: 1rem;
  }

  .about-section ul {
    margin-left: 1.5rem;
  }

  .about-section ul li {
    list-style: disc;
  }
</style>