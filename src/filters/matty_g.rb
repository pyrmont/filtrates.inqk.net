params = { type: :atom,
           target: 'https://www.vox.com/rss/index.xml',
           domain: 'https://filtrates.inqk.net',
           id: 'matty-g',
           filters: [{ tag: 'name', pattern: /Matthew Yglesias/ }],
           properties: { title: 'Matty G' } }

Shakushi.generate_feed params
