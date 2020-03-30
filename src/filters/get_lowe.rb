params = { type: :rss,
           target: 'https://www.espn.com/espn/rss/nba/news',
           domain: 'https://filtrates.inqk.net',
           id: 'get-lowe',
           filters: [{ tag: 'title', pattern: /^Lowe:/ },
                     { tag: 'link', pattern: /\/zach\-lowe\-/ }],
           properties: { title: 'Get Lowe',
                         description: "Zach Lowe's ESPN columns." }}

Shakushi.generate_feed params
