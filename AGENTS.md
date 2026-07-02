# next-shadcn-template

Template repository: Next.js (App Router) + Tailwind CSS v4 + shadcn/ui, with TypeScript, Biome, and Motion.

## Commands

- `pnpm dev` — start the dev server (Turbopack is the default in Next 16)
- `pnpm build` — production build
- `pnpm lint` — ESLint (flat config in `eslint.config.mjs`)
- `make check` / Biome — formatting and code style are handled by Biome (`biome.json`), not Prettier

The package manager is **pnpm** (see `packageManager` in `package.json`). Do not use npm or yarn.

## Structure

- `app/` — App Router pages, layout, and metadata routes (`icon.tsx`, `manifest.tsx`, `robots.tsx`, `sitemap.tsx`)
- `components/ui/` — shadcn/ui components (generated via `pnpm dlx shadcn@latest add <component>`; config in `components.json`)
- `components/` — app-level components (e.g. `theme-provider.tsx` for next-themes)
- `lib/utils.ts` — exports `cn`, backed by [cnfast](https://github.com/aidenybai/cnfast) (a fast drop-in replacement for clsx + tailwind-merge)
- `config/`, `hooks/` — shared config and React hooks

## Conventions

- Import `cn` from `@/lib/utils` for conditional/merged Tailwind classes. Do not add `clsx` or `tailwind-merge` — cnfast replaces both.
- Tailwind v4: theme tokens live in `app/globals.css` (CSS-first config); there is no `tailwind.config.ts`.
- Biome formatting uses tabs; run Biome rather than hand-formatting.
- Commits must follow [Conventional Commits](https://www.conventionalcommits.org/) — enforced by commitlint + Husky.
- Dark mode is class-based via `next-themes` (`ThemeProvider` in `app/layout.tsx`).
- Client-side env vars must be prefixed `NEXT_PUBLIC_`.

## Skills

Reusable agent skills live in `.agents/skills/` (symlinked for Claude Code):

- `emil-design-eng` — design engineering guidelines (animation, interaction polish)
- `web-design-guidelines` — Vercel web design/UI guidelines
- `next-upgrade` — assists with Next.js version upgrades

Use them when doing UI/design work or framework upgrades.
