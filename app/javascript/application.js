// Entry point for the build script in your package.json
import "@hotwired/turbo-rails";
import "./controllers";
import "./components/navbar.js";
import "./components/services-section-image-switch";
import "./components/services-list-handler";

import "bootstrap";

window.bootstrap = bootstrap;
