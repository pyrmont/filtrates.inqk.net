params = { type: :rss,
           target: 'http://www.nhk.or.jp/r-news/podcast/nhkradionews.xml',
           domain: 'https://filtrates.inqk.net',
           id: 'nhk-japanese',
           filters: [ { tag: 'title', pattern: /夜7|７時/ } ],
           properties: { title: 'NHK Radio News (Japanese)' },
           function: lambda do |entry|
                       entry
                       .child(selector: 'description')
                       .content = "The 7 o'clock news."

                       url = entry.child(selector: 'enclosure')['url']

                       entry
                       .child(selector: 'enclosure')
                       .[]=('url', url.sub('http://', 'https://'))
                     end }

Shakushi.generate_feed params
