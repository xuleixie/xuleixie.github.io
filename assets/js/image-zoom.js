document.addEventListener("DOMContentLoaded", () => {
  const images = document.querySelectorAll(".post-content img");
  let activeImage = null;
  let backdrop = null;

  const closeImage = () => {
    if (!activeImage) {
      return;
    }

    activeImage.classList.remove("is-zoomed");
    activeImage.setAttribute("aria-expanded", "false");
    activeImage.focus();
    activeImage = null;
    backdrop?.remove();
    backdrop = null;
    document.body.classList.remove("image-zoom-active");
  };

  const openImage = (image) => {
    activeImage = image;
    backdrop = document.createElement("button");
    backdrop.type = "button";
    backdrop.className = "image-zoom-backdrop";
    backdrop.setAttribute("aria-label", "关闭放大图片");
    backdrop.addEventListener("click", closeImage);
    document.body.append(backdrop);

    image.classList.add("is-zoomed");
    image.setAttribute("aria-expanded", "true");
    document.body.classList.add("image-zoom-active");
  };

  images.forEach((image) => {
    image.classList.add("zoomable-image");
    image.tabIndex = 0;
    image.setAttribute("role", "button");
    image.setAttribute("aria-label", image.alt ? `放大图片：${image.alt}` : "放大图片");
    image.setAttribute("aria-expanded", "false");

    image.addEventListener("click", () => {
      if (activeImage === image) {
        closeImage();
      } else {
        closeImage();
        openImage(image);
      }
    });

    image.addEventListener("keydown", (event) => {
      if (event.key === "Enter" || event.key === " ") {
        event.preventDefault();
        image.click();
      }
    });
  });

  document.addEventListener("keydown", (event) => {
    if (event.key === "Escape") {
      closeImage();
    }
  });
});