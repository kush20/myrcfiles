console.log("Auto Login Clicker (content2) loaded.");

function clickLetsGoThenGotIt() {
    let attempts = 0;
    const maxAttempts = 100;

    const intervalId = setInterval(() => {
        attempts++;

        // 1️⃣ Look for "Let's Go" button first
        const letsGoButton = [...document.querySelectorAll('button')].find(
            btn => btn.textContent.trim().includes("Let's Go")
        );

        if (letsGoButton) {
            console.log("'Let's Go' button found. Clicking...");
            letsGoButton.click();

            // After clicking Let's Go, start checking for "Got It"
            waitForGotIt();
            clearInterval(intervalId);
            return;
        }

        console.log(`Attempt ${attempts}: "Let's Go" button not found yet...`);

        if (attempts >= maxAttempts) {
            console.log("Max attempts reached for 'Let's Go'. Stopping search.");
            clearInterval(intervalId);
        }

    }, 100); // Retry every 100 ms
}

function waitForGotIt() {
    let gotItAttempts = 0;
    const maxGotItAttempts = 100;

    const gotItInterval = setInterval(() => {
        gotItAttempts++;

        const gotItLink = [...document.querySelectorAll('a')].find(
            a => a.textContent.trim().includes("Got It")
        );

        if (gotItLink) {
            console.log("'Got It' link found. Clicking...");
            gotItLink.click();
            clearInterval(gotItInterval);
            return;
        }

        console.log(`Attempt ${gotItAttempts}: 'Got It' link not found yet...`);

        if (gotItAttempts >= maxGotItAttempts) {
            console.log("Max attempts reached for 'Got It'. Stopping search.");
            clearInterval(gotItInterval);
        }

    }, 100);
}

window.addEventListener('load', () => {
    clickLetsGoThenGotIt();
});
