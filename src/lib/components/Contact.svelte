<section id="contact" class="contact">
    <h2>Contact Me</h2>
    <form>
      <input type="text" placeholder="Name" required />
      <input type="email" placeholder="Email" required />
      <textarea placeholder="Message" rows="5" required></textarea>
      <button type="submit">Send</button>
    </form>
  </section>
  
  <style>
    .contact {
      padding: 2rem 1rem;
      text-align: center;
    }
    form {
      display: flex;
      flex-direction: column;
      gap: 1rem;
      max-width: 400px;
      margin: 0 auto;
    }
    form input,
    form textarea {
      width: 100%;
      padding: 0.5rem;
      border: 1px solid #ddd;
      border-radius: 5px;
    }
    form button {
      background: #f39c12;
      color: white;
      padding: 0.5rem;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    }
    form button:hover {
      background: #d35400;
    }
  </style>
  