 // JavaScript to hide top row on scroll
        // Show or hide the button based on scroll position
        window.onscroll = function () {
            var scrollToTopBtn = document.getElementById("scrollToTopBtn");
            if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
                scrollToTopBtn.classList.remove("d-none");
            } else {
                scrollToTopBtn.classList.add("d-none");
            }
        };

        // Smooth scroll to top when the button is clicked
        document.getElementById("scrollToTopBtn").addEventListener("click", function () {
            document.body.scrollTop = 0; // For Safari
            document.documentElement.scrollTop = 0; // For Chrome, Firefox, IE, and Opera
        });


