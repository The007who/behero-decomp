
function startUp() {

    // Set correct lang
    switchLangText();

    // News Query
    if (localStorage.getItem('newsQuery') !== null) {
        document.getElementById('commit-history').innerHTML = localStorage.getItem('newsQuery');
        return;
    }

    let months = [
        "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"
    ]

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

        document.getElementById('commit-history').innerHTML = commits[0];
        localStorage.setItem('newsQuery', commits[0]);

    });
}


function buttonLang( lang ) {
    if (localStorage.getItem('lang') !== lang) {
        localStorage.setItem('lang', lang);
        switchLangText();
    }
}

function switchLangText() {
    let showLang = localStorage.getItem('lang');
    if (showLang == null) {
        localStorage.setItem('lang', 'ita');
        return;
    }

    let hideLang = "";
    if (showLang == 'ita') {
        hideLang = 'eng';
    } else {
        hideLang = 'ita';
    }

    let className = "." + showLang + "-text";
    let classItems = document.querySelectorAll(className);
    for (const element of classItems) {
        element.style.display = 'block';
    }

    className = "." + hideLang + "-text";
    classItems = document.querySelectorAll(className);
    for (const element of classItems) {
        element.style.display = 'none';
    }
}


// function imageClick2 () {
//     const image = document.getElementsByClassName('content');
// 
//     image.addEventListener('click', () => {
//         const currentScale = getComputedStyle(image)
//             .getPropertyValue('transform')
//             .split(' ')[0]
//             .replace('scale(', '')
//             .replace(')', '');
// 
//         const newScale = parseFloat(currentScale) + 0.5;
//         image.style.transform = `scale(${newScale})`;
//     });
// }