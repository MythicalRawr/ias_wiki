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
    themes: ['@easyops-cn/docusaurus-search-local'],
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
                theme: { customCss: [require.resolve('./src/css/index.scss')] },
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
