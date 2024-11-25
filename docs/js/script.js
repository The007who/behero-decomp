months = [
    "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"
]

function startUp() {
    fetch('https://api.github.com/repos/The007who/behero-decomp/commits').then(response => response.json())
    .then(data => {
        const commits = data.map(commit => {
            const date = commit.commit.author.date
            const message = commit.commit.message
            const link = commit.html_url

            const new_date = date.substring(8, 10) + months[date.substring(5, 7) - 1]
                + date.substring(0, 4)

            return `<li><a href="${link}">${new_date}: ${message}</a></li>`;
        });
        document.getElementById('commit-history').innerHTML = commits.join('');
    });
}

