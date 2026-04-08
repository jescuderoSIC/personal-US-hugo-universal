document.addEventListener("DOMContentLoaded", function () {
  document.querySelectorAll(".steps-shortcode").forEach(function (container) {
    var ol = container.querySelector("ol");
    if (!ol) {
      return;
    }

    var steps = [];
    Array.from(ol.children).forEach(function (li) {
      var titleEl = li.querySelector("h1, h2, h3, h4, h5, h6");
      if (!titleEl) {
        return;
      }

      var step = document.createElement("div");
      step.className = "step";

      var title = document.createElement("div");
      title.className = "step-title";
      title.innerHTML = titleEl.innerHTML;
      step.appendChild(title);

      var body = document.createElement("div");
      body.className = "step-body";
      Array.from(li.children)
        .filter(function (child) {
          return child !== titleEl;
        })
        .forEach(function (child) {
          body.appendChild(child.cloneNode(true));
        });

      if (body.innerHTML.trim().length > 0) {
        step.appendChild(body);
      }

      steps.push(step);
    });

    if (steps.length > 0) {
      container.innerHTML = "";
      steps.forEach(function (step) {
        container.appendChild(step);
      });
    }
  });
});
