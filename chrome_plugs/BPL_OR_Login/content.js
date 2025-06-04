console.log("Auto Login Clicker loaded.");

// Step 1: Click the "O’Reilly" button
function clickOReilly() {
    document.querySelectorAll("button span.title").forEach(el => {
        if (el.textContent.includes("O’Reilly")) {
            el.click();
            console.log("Clicked O’Reilly button.");
        }
    });
}

// Step 2: Retry every second to find and click "Access remotely from home"
function clickAccessRemotely() {
    const intervalId = setInterval(() => {
        const link = [...document.querySelectorAll('a')].find(
            l => l.textContent.trim().includes("Access remotely from home")
        );

        if (link) {
            console.log("Access link found. Clicking...");
            link.click();
            clearInterval(intervalId);  // Stop retrying after click
        } else {
            console.log("Access link not found yet...");
        }
    }, 100); // Retry every 100 ms
}

window.addEventListener('load', () => {
    clickOReilly();
    clickAccessRemotely();
});