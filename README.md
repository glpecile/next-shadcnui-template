# Not another Next.js starter

This is a [Next.js](https://nextjs.org/) project template bootstrapped
with [`create-next-app`](https://github.com/vercel/next.js/tree/canary/packages/create-next-app)
by [Gian Luca Pecile](https://github.com/glpecile).

## 🔋 What's included

- [Next.js 15](https://nextjs.org/)
- [Shadcn UI 2](https://ui.shadcn.com/)
- [TypeScript](https://www.typescriptlang.org/)
- [Biome.js](https://biomejs.dev/)
- [Motion for React](https://motion.dev/docs/react-quick-start)
- [Husky](https://typicode.github.io/husky/)

## 🏎️ Getting Started

The project is based on [Next.js](https://nextjs.org/), a React framework for production. It
uses [TypeScript](https://www.typescriptlang.org/) and [Tailwind CSS](https://tailwindcss.com/).

Commits are linted using [Husky](https://typicode.github.io/husky/) and [commitlint](https://commitlint.js.org/),
therefore [conventional commits](https://www.conventionalcommits.org/en/v1.0.0/) are mandatory in order to use the
template's default config.

The package manager is [pnpm](https://pnpm.io/), so you need to install it first using the following command:

```sh
make deps
```

This command will try to install `pnpm` globally using the existing `npm` version and then proceed to
run `pnpm install`.

If you have `pnpm` installed globally already, you can run:

```sh
make install
```

Behind the scenes, this will do a `pnpm install` of the `package.json` dependencies, creating a `node_module` folder
locally.

### 📨 Environment Variables

No environment variables are required to run the template. These should be added to a `.env` file in the root of the
project
and should be prefixed with `NEXT_PUBLIC_` to be available in the client-side code.

```dotenv
NEXT_PUBLIC_YOUR_ENV_VARIABLE
```

The following table describes each environment variable:

| Variable                        | Description           |
|---------------------------------|-----------------------|
| `NEXT_PUBLIC_YOUR_ENV_VARIABLE` | Example env variable. |

Run the following command to create a `.env` file based on `.env.example` with the required environment variables:

```sh
make create_env
```

This will create a `.env` file with the required environment variables. Make sure to update the values of the variables
in the `.env` file to match your environment.

### 👨‍💻 Development

To start a development build of the webapp, run:

```sh
make dev
```

This runs `next dev`, which starts the application in development mode with hot-code reloading, error reporting, and
more.

Then open [http://localhost:3000](http://localhost:3000) with your browser to view the application.

Make sure to update environment variables in `.env` to match your environment. See `.env.example` for an example of
which variables are required. For more information, see the [Environment Variables](#-Environment-Variables) section.

#### 🧹 Linting

To lint the webapp, run:

```sh
make lint
```

This runs `next lint`, which runs ESLint on the pages and components in the webapp and reports any linting errors.
Make sure to fix all linting errors before submitting a pull request.

#### 🆙 Updating dependencies

Dependencies are updated via renovate. The config setup allows for instant merge of miscellaneous minor dependencies and
issues for major ones which should be done manually.

Additionally, you can run:

```sh
make up_next up_biome
```

To update both the `next` and `biome` dependencies using their official helper scripts.

### 🚚 Production

To run the production build of the webapp, run:

```sh
make build
```

This runs `next build`, which generates an optimized version of your application for production. HTML, CSS, and
JavaScript files are created based on your pages. JavaScript is compiled and browser bundles are minified using the
Next.js Compiler to help achieve the best performance and support all modern
browsers[<sup>1</sup>](https://nextjs.org/docs/app/building-your-application/deploying#production-builds).

#### Running the production build

To start the production build of the webapp, run:

```sh
make start
```

This runs `next start`, which starts the Node.js server. This server supports all Next.js
features[<sup>2</sup>](https://nextjs.org/docs/app/building-your-application/deploying#nodejs-server).

Alternatively, you can run:

```sh
make deploy
```

This runs `next build && next start`, which builds and starts the application in production mode.

Then open [http://localhost:3000](http://localhost:3000) with your browser to view the application.

#### Running in a different port

To run the webapp in a different port, run:

```sh
make start PORT=3069
```

or:

```sh
make deploy PORT=3069
```

This starts the application in production mode in port `3069`.

## 🎀 Make it your own

To make this template your own, you SHOULD:

- Update the `name`, `description`, `author` and `repository` fields in [`package.json`](/package.json).
- Edit the [`site.ts`](/config/site.ts) file in the `src/config` folder to match your site's information.

### ⚙️ Site Config Options

The `site.ts` file contains the following options:

| Option            | Description                                                                                                                      |
|-------------------|----------------------------------------------------------------------------------------------------------------------------------|
| `title`           | The title of the site.                                                                                                           |
| `description`     | The description of the site.                                                                                                     |
| `emoji`           | The emoji to be displayed as the favicon of the site.                                                                            |
| `backgroundColor` | The background color of the site.                                                                                                |
| `themeColor`      | The theme color of the site.                                                                                                     |
| `siteUrl`         | The URL of the site.                                                                                                             |
| `mainNav`         | The values to be used in the main navigation bar of the site with the shape `{ title, href }`.                                   |
| `links`           | Social media links to be used throughout the app, these include by default twitter, telegram, github and docs. Extend as needed. |

## ✍️ Acknowledgements

* [Shadcn](https://shadcn.com) for ui, the beautifully designed components.
* [Manu Arora](https://manuarora.in) for aceternity ui components.

<hr/>
