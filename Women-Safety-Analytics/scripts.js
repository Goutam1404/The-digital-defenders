function toggleNavbar() {
    var navbarCollapse = document.getElementById('navbarCollapse');
    navbarCollapse.classList.toggle('open');
}
// script.js

// Add any additional JavaScript functionality here, such as event listeners or animations
document.querySelector('.call-button').addEventListener('click', function() {
    alert('Calling emergency services...');
});
