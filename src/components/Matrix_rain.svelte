<script lang="ts">
    import { onMount } from "svelte";
  
    let canvas: HTMLCanvasElement;
    const characters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
    const charactersArray = characters.split("");
    const fontSize = 16;
  
    let columns: number, matrix: number[];
  
    onMount(() => {
      const context = canvas.getContext("2d");
      resizeCanvas();
      initializeMatrix();
  
      function resizeCanvas() {
        canvas.width = window.innerWidth;
        canvas.height = window.innerHeight;
        columns = Math.floor(canvas.width / fontSize);
        initializeMatrix();
      }
  
      function initializeMatrix() {
        matrix = Array.from({ length: columns }).map(() => 1);
      }
  
      function drawMatrix() {
        if (context) {
          context.fillStyle = "rgba(200, 200, 200, 0.1)"; // Semi-transparent black background
          context.fillRect(0, 0, canvas.width, canvas.height);
  
          context.fillStyle = "#0f0"; // Matrix text color
          context.font = `${fontSize}px monospace`;
  
          for (let i = 0; i < matrix.length; i++) {
            const text = charactersArray[Math.floor(Math.random() * charactersArray.length)];
            context.fillText(text, i * fontSize, matrix[i] * fontSize);
  
            if (matrix[i] * fontSize > canvas.height && Math.random() > 0.975) {
              matrix[i] = 0;
            }
  
            matrix[i]++;
          }
        }
      }
  
      function animateMatrix() {
        drawMatrix();
        requestAnimationFrame(animateMatrix);
      }
  
      window.addEventListener("resize", resizeCanvas);
      animateMatrix();
  
      return () => {
        window.removeEventListener("resize", resizeCanvas);
      };
    });
  </script>
  
  <style>
  
    canvas {
      position: fixed;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      pointer-events: none; /* Prevent canvas interaction */
      z-index: -1; /* Send canvas behind other content */
    }
  
  </style>
  
  <canvas bind:this={canvas}></canvas>