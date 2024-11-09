<?php
require "db_connection.php";
include "./utilities/header.php";
?>

    <header>
      <h1>Services Page</h1>
      <nav>
        <ul>
          <li>
            <a href="index.php">Home</a>
          </li>
          <span>></span>
          <li>
            <a href="about.php">About</a>
          </li>
          <span>></span>
          <li class="active">
            <a href="services.php">Services</a>
          </li>
          <span>></span>
          <li>
            <a href="contact.php">Contact</a>
          </li>
        </ul>
      </nav>
    </header>

    <main>
      <section class="services">
        <h2 class="services-title">Our Services</h2>
        <div class="services-grid">
          <div class="service-card service-card--featured">
            <div class="service-icon">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                width="24"
                height="24"
                viewBox="0 0 24 24"
                fill="none"
                stroke="currentColor"
                stroke-width="2"
                stroke-linecap="round"
                stroke-linejoin="round"
              >
                <rect width="20" height="14" x="2" y="7" rx="2" ry="2" />
                <path d="M16 21V5a2 2 0 0 0-2-2h-4a2 2 0 0 0-2 2v16" />
              </svg>
            </div>
            <h3 class="service-title">Landscape Design and Consultation</h3>
            <p class="service-description">
              Transform your outdoor space with our creative landscape design
              service. Our experts collaborate with you to create beautiful,
              sustainable gardens that reflect your vision. Enjoy a harmonious
              blend of aesthetics and nature.
            </p>
          </div>
          <div class="service-card">
            <div class="service-icon">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                width="24"
                height="24"
                viewBox="0 0 24 24"
                fill="none"
                stroke="currentColor"
                stroke-width="2"
                stroke-linecap="round"
                stroke-linejoin="round"
              >
                <rect width="20" height="14" x="2" y="7" rx="2" ry="2" />
                <path d="M16 21V5a2 2 0 0 0-2-2h-4a2 2 0 0 0-2 2v16" />
              </svg>
            </div>
            <h3 class="service-title">Garden Maintenance</h3>
            <p class="service-description">
              Keep your garden flourishing with our comprehensive maintenance
              service. We provide tailored care, including weeding, pruning, and
              fertilization. Relax while we ensure your garden remains healthy
              and vibrant.
            </p>
          </div>
          <div class="service-card">
            <div class="service-icon">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                width="24"
                height="24"
                viewBox="0 0 24 24"
                fill="none"
                stroke="currentColor"
                stroke-width="2"
                stroke-linecap="round"
                stroke-linejoin="round"
              >
                <rect width="20" height="14" x="2" y="7" rx="2" ry="2" />
                <path d="M16 21V5a2 2 0 0 0-2-2h-4a2 2 0 0 0-2 2v16" />
              </svg>
            </div>
            <h3 class="service-title">Sustainable Gardening Solutions</h3>
            <p class="service-description">
              Embrace eco-friendly gardening with our sustainable solutions. We
              offer consultations on organic practices, rainwater harvesting,
              and composting to minimize your environmental impact. Cultivate a
              thriving garden while protecting the planet.
            </p>
          </div>
        </div>
      </section>
      <section class="how-it-works">
        <h2>How It Works</h2>
        <div class="steps">
          <div class="step">
            <div class="step-number">1</div>
            <h3>Browse Products</h3>
            <p>
              Explore our wide range of gardening products, easily filtered by
              category and price.
            </p>
          </div>
          <div class="step">
            <div class="step-number">2</div>
            <h3>Screenshot & Inquire</h3>
            <p>
              Take a screenshot of products you're interested in and send it to
              our Facebook page.
            </p>
          </div>
          <div class="step">
            <div class="step-number">3</div>
            <h3>Receive Information</h3>
            <p>
              Our team quickly responds with product details, availability, and
              pricing.
            </p>
          </div>
          <div class="step">
            <div class="step-number">4</div>
            <h3>Complete Purchase</h3>
            <p>
              Finalize your order through our secure checkout process or via
              Facebook.
            </p>
          </div>
        </div>
      </section>
      <section class="faq-section">
        <h2>Frequently Asked Questions</h2>
        <div class="faq-list">
          <div class="faq-item">
            <button class="faq-question" aria-expanded="false">
              How do I place an order?
              <span class="faq-icon" aria-hidden="true"></span>
            </button>
            <div class="faq-answer" hidden>
              <p>
                To place an order, browse our products, select the items you
                want, and proceed to checkout. You can also send a screenshot of
                the product to our Facebook page for assistance.
              </p>
            </div>
          </div>
          <div class="faq-item">
            <button class="faq-question" aria-expanded="false">
              What payment methods do you accept?
              <span class="faq-icon" aria-hidden="true"></span>
            </button>
            <div class="faq-answer" hidden>
              <p>
                We accept various payment methods including credit/debit cards,
                PayPal, and bank transfers. For specific options, please check
                our payment page during checkout.
              </p>
            </div>
          </div>
          <div class="faq-item">
            <button class="faq-question" aria-expanded="false">
              How can I track my order?
              <span class="faq-icon" aria-hidden="true"></span>
            </button>
            <div class="faq-answer" hidden>
              <p>
                Once your order is shipped, you'll receive a tracking number via
                email. You can use this number to track your package on our
                website or the courier's site.
              </p>
            </div>
          </div>
          <div class="faq-item">
            <button class="faq-question" aria-expanded="false">
              What is your return policy?
              <span class="faq-icon" aria-hidden="true"></span>
            </button>
            <div class="faq-answer" hidden>
              <p>
                We offer a 30-day return policy for most items. Products must be
                unused and in their original packaging. Please contact our
                customer service for specific return instructions.
              </p>
            </div>
          </div>
          <div class="faq-item">
            <button class="faq-question" aria-expanded="false">
              How can I contact customer support?
              <span class="faq-icon" aria-hidden="true"></span>
            </button>
            <div class="faq-answer" hidden>
              <p>
                You can reach our customer support team via email at
                support@greengarden.com, through our Facebook page, or by phone
                at (555) 123-4567 during business hours.
              </p>
            </div>
          </div>
        </div>
      </section>
    </main>

    <script>
      document.addEventListener("DOMContentLoaded", () => {
        const faqItems = document.querySelectorAll(".faq-item");

        faqItems.forEach((item) => {
          const question = item.querySelector(".faq-question");
          const answer = item.querySelector(".faq-answer");

          question.addEventListener("click", () => {
            const isExpanded =
              question.getAttribute("aria-expanded") === "true";

            // Close all other FAQ items
            faqItems.forEach((otherItem) => {
              if (otherItem !== item) {
                otherItem
                  .querySelector(".faq-question")
                  .setAttribute("aria-expanded", "false");
                otherItem
                  .querySelector(".faq-answer")
                  .setAttribute("hidden", "");
              }
            });

            // Toggle current FAQ item
            question.setAttribute("aria-expanded", !isExpanded);
            if (isExpanded) {
              answer.setAttribute("hidden", "");
            } else {
              answer.removeAttribute("hidden");
            }
          });
        });
      });
    </script>
                                
<?php include "./utilities/footer.php"; ?>
