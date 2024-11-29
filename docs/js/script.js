months = [
    "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"
]

function startUp() {
    let msgLength = 0;
    fetch('https://api.github.com/repos/The007who/behero-decomp/commits?sha=gh-pages').then(response => response.json())
    .then(data => {
        const commits = data.map(commit => {
            const date = commit.commit.author.date;
            const message = commit.commit.message;
            const link = commit.html_url;

            const new_date = date.substring(8, 10) + months[date.substring(5, 7) - 1]
                + date.substring(0, 4);

            msgLength += new_date.length + message.length + 2;
            if (msgLength < 250) {
                return `<li><a href="${link}">${new_date}: ${message}</a></li>`;
            } else {
                return '';
            }
        });

        document.getElementById('commit-history').innerHTML = commits.join('');
    });
}



function imageClick2 () {
    const image = document.getElementsByClassName('content');

    image.addEventListener('click', () => {
        const currentScale = getComputedStyle(image)
            .getPropertyValue('transform')
            .split(' ')[0]
            .replace('scale(', '')
            .replace(')', '');

        const newScale = parseFloat(currentScale) + 0.5;
        image.style.transform = `scale(${newScale})`;
    });
}