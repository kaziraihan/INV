<body>
<?php include 'header.php';?>
<!--header-->
      <body>
        <!-- Responsive navbar-->
        <?php include 'logo.php';?>

<!-- Globe Container -->

<style>
        .body1 { margin: 0; overflow: hidden; background: black; }
        canvas { display: block; }
        #globe-container {
            width: 100%;
            height: 85%; /* Adjust as needed */
            display: flex;
            justify-content: center;
            align-items: center;
            position: relative;
            background-color: black;
        }
    </style>
<div class="justify-content-center" class="body1" id="globe-container"></div>

<!-- Three.js Library -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/three.js/r128/three.min.js"></script>

<!-- Orbit Controls for Zooming & Rotating -->
<script src="https://cdn.jsdelivr.net/npm/three@0.135.0/examples/js/controls/OrbitControls.js"></script>

<script>
    // Scene Setup
    const scene = new THREE.Scene();
    const camera = new THREE.PerspectiveCamera(50, window.innerWidth / window.innerHeight, 0.1, 1000);
    const renderer = new THREE.WebGLRenderer({ antialias: true });

    // Attach renderer to the container
    const container = document.getElementById("globe-container");
    renderer.setSize(container.clientWidth, container.clientHeight);
    container.appendChild(renderer.domElement);

    // Orbit Controls
    const controls = new THREE.OrbitControls(camera, renderer.domElement);
    controls.enableDamping = true;
    controls.enableZoom = false;

    // Create Globe (Earth)
    const textureLoader = new THREE.TextureLoader();
    const earthTexture = textureLoader.load("img/earth.jpg"); // Earth texture image
    const sphereGeometry = new THREE.SphereGeometry(5, 64, 64);
    const sphereMaterial = new THREE.MeshBasicMaterial({ map: earthTexture });
    const globe = new THREE.Mesh(sphereGeometry, sphereMaterial);

    // Create a Parent Object to Rotate Everything Together
    const globeGroup = new THREE.Group();
    globeGroup.add(globe);
    scene.add(globeGroup);

    // Position Camera
    camera.position.set(0, 0, 12);
    controls.update();

    // Flags Data with Latitude & Longitude
    const flags = [
        { name: "Bangladesh", lat: 23.685, lon: 90.3563, img: "img/flags/Flag_of_Bangladesh.svg.png", link: "bangladesh.php" },
        { name: "Hong Kong", lat: 22.3193, lon: 114.1694, img: "img/flags/Flag_of_Hong_kong.svg.png", link: "#" },
        { name: "Sri Lanka", lat: 7.8731, lon: 80.7718, img: "img/flags/Flag_of_Sri_Lanka.svg.png", link: "#" },
        { name: "India", lat: 20.5937, lon: 78.9629, img: "img/flags/Flag_of_India.png", link: "#" },
        { name: "Turkey", lat: 38.9637, lon: 35.2433, img: "img/flags/Flag_of_turkey.png", link: "#" },
        { name: "Vietnam", lat: 14.0583, lon: 108.2772, img: "img/flags/Flag_of_vn.svg.png", link: "#" },
        { name: "China", lat: 35.8617, lon: 104.1954, img: "img/flags/Flag_of_the_China.svg.png", link: "#" },
        { name: "United Kingdom", lat: 55.3781, lon: -3.4360, img: "img/flags/Flag_of_the_United_Kingdom.png", link: "#" },
        { name: "Egypt", lat: 26.8206, lon: 30.8025, img: "img/flags/Flag_of_Egypt.jpg", link: "#" },
        { name: "Myanmar", lat: 21.9162, lon: 95.9560, img: "img/flags/Flag_of_Myanmar.jpg", link: "#" },
        { name: "Morocco", lat: 31.7917, lon: -7.0926, img: "img/flags/Flag_of_Morocco.jpg", link: "#" },
    ];

    // Function to Convert Latitude & Longitude to 3D Coordinates
    function latLonToVector3(lat, lon, radius) {
        const phi = (90 - lat) * (Math.PI / 180);
        const theta = (lon + 180) * (Math.PI / 180);
        return new THREE.Vector3(
            -(radius * Math.sin(phi) * Math.cos(theta)),
            radius * Math.cos(phi),
            radius * Math.sin(phi) * Math.sin(theta)
        );
    }

    // Add Flags to Globe
    flags.forEach(flag => {
        const flagTexture = new THREE.TextureLoader().load(flag.img);
        const flagMaterial = new THREE.SpriteMaterial({ map: flagTexture });
        const flagSprite = new THREE.Sprite(flagMaterial);

        const position = latLonToVector3(flag.lat, flag.lon, 5.2); // Position slightly above the globe
        flagSprite.position.set(position.x, position.y, position.z);
        flagSprite.scale.set(0.6, 0.4, 1); // Adjust flag size

        flagSprite.userData = { url: flag.link }; // Store link in flag

        // Attach flag to globeGroup so it rotates with the Earth
        globeGroup.add(flagSprite);
    });

    // Raycaster for Clickable Flags
    const raycaster = new THREE.Raycaster();
    const mouse = new THREE.Vector2();

    window.addEventListener("click", (event) => {
        mouse.x = (event.clientX / window.innerWidth) * 2 - 1;
        mouse.y = -(event.clientY / window.innerHeight) * 2 + 1;

        raycaster.setFromCamera(mouse, camera);
        const intersects = raycaster.intersectObjects(globeGroup.children);

        if (intersects.length > 0) {
            const clickedObject = intersects[0].object;
            if (clickedObject.userData.url) {
                window.location.href = clickedObject.userData.url; // Redirect
            }
        }
    });

    // Rotate Globe Animation
    function animate() {
        requestAnimationFrame(animate);
        globeGroup.rotation.y += 0.002; // Adjust speed
        controls.update();
        renderer.render(scene, camera);
    }
    animate();

    // Handle Window Resize
    window.addEventListener("resize", () => {
        const newWidth = container.clientWidth;
        const newHeight = container.clientHeight;
        camera.aspect = newWidth / newHeight;
        camera.updateProjectionMatrix();
        renderer.setSize(newWidth, newHeight);
    });

</script>

<?php include 'vision.php';?>  


<?php include 'footer.php';?>