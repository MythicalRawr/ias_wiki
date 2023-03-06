// @ts-check

'use strict';

const codeTheme = require('./src/utils/prismDark.js');
//const remarkGitContributors = require('remark-git-contributors');
//const remarkGithub = require('remark-github');

/** @type {import('@docusaurus/types').Config} */
const config = {
    title: "It's Absolutely Safe",
    tagline: 'Dev Wiki',
    favicon: '/img/game_icon.ico',

    url: 'https://iaswiki.rawr.dev/',
    baseUrl: '/',

    // GitHub pages deployment config.
    // If you aren't using GitHub pages, you don't need these.
    organizationName: 'MythicalRawr', // Usually your GitHub org/user name.
    projectName: 'ias_wiki', // Usually your repo name.

    onBrokenLinks: 'throw',
    onBrokenMarkdownLinks: 'throw',

    i18n: {
        defaultLocale: 'en',
        locales: ['en'],
    },

    plugins: ['docusaurus-plugin-sass'],

    presets: [
        [
            'classic',
            /** @type {import('@docusaurus/preset-classic').Options} */
            ({
                docs: {
                    sidebarPath: require.resolve('./sidebars.js'),
                    editUrl: 'https://github.com/MythicalRawr/ias_wiki/tree/master/ias-lib',
                    showLastUpdateAuthor: true,
                    showLastUpdateTime: true,
                    admonitions: {
                        tag: ':::',
                        keywords: ['info', 'error', 'warning'],
                    },
                    remarkPlugins: [
                        //remarkGitContributors
                    ],
                },
                theme: {
                    customCss: [require.resolve('./src/css/index.scss')],
                },
            }),
        ],
    ],

    themeConfig:
        /** @type {import('@docusaurus/preset-classic').ThemeConfig} */
        ({
            image: 'img/small_capsule.png',
            navbar: {
                title: "It's Absolutely Safe",
                logo: {
                    alt: 'logo',
                    src: 'img/game_icon.png',
                },
                items: [
                    {
                        type: 'doc',
                        docId: 'index',
                        position: 'left',
                        label: 'WIKI',
                    },
                    {
                        type: 'search',
                        position: 'right',
                    },
                    /*{
                        type: 'localeDropdown',
                        position: 'right',
                    },*/
                    {
                        type: 'docsVersionDropdown',
                        position: 'right',
                    },
                    {
                        href: 'https://github.com/MythicalRawr/ias_wiki',
                        position: 'right',
                        className: 'header-github-link',
                        'aria-label': 'GitHub repository',
                    },
                ],
            },
            algolia: {
                // The application ID provided by Algolia
                appId: 'YOUR_APP_ID',

                // Public API key: it is safe to commit it
                apiKey: 'YOUR_SEARCH_API_KEY',

                indexName: 'YOUR_INDEX_NAME',

                // Optional: see doc section below
                contextualSearch: true,

                // Optional: Specify domains where the navigation should occur through window.location instead on history.push. Useful when our Algolia config crawls multiple documentation sites and we want to navigate with window.location.href to them.
                externalUrlRegex: 'external\\.com|domain\\.com',

                // Optional: Replace parts of the item URLs from Algolia. Useful when using the same search index for multiple deployments using a different baseUrl. You can use regexp or string in the `from` param. For example: localhost:3000 vs myCompany.com/docs
                replaceSearchResultPathname: {
                    from: '/docs/', // or as RegExp: /\/docs\//
                    to: '/',
                },

                // Optional: Algolia search parameters
                searchParameters: {},

                // Optional: path for search page that enabled by default (`false` to disable it)
                searchPagePath: 'search',

                //... other Algolia params
            },
            footer: {
                style: 'dark',
                links: [],
                copyright: `Copyright © ${new Date().getFullYear()} MythicalRawr 🐲. Built with Docusaurus 🦖`,
            },
            prism: {
                darkTheme: codeTheme,
                theme: codeTheme,

                additionalLanguages: ['lua'],
            },
            colorMode: {
                defaultMode: 'dark',
                disableSwitch: true,
            },
        }),
};

module.exports = config;
