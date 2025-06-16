import { cn } from "@/lib/utils";

export default function Home() {
	return (
		<main className="flex min-h-screen max-w-full grow flex-col items-center justify-center gap-6 font-mono">
			<h1 className={cn("font-bold text-xl")}>
				Welcome to next-shadcn-template
			</h1>
			<section className={cn("max-w-2xl space-y-2")}>
				<p>
					This is a Next.js template with a few features to help you
					get started quickly. It includes TypeScript, Biome, Tailwind
					CSS, and Motion (fka Framer Motion).
				</p>
				<div className="z-10 w-full items-center justify-between text-sm lg:flex">
					<p className="fixed top-0 left-0 flex w-full justify-center border-gray-300 border-b bg-linear-to-b from-zinc-200 pt-8 pb-6 backdrop-blur-2xl lg:static lg:w-auto lg:rounded-xl lg:border lg:bg-gray-200 lg:p-4 dark:border-neutral-800 dark:bg-zinc-800/30 dark:from-inherit lg:dark:bg-zinc-800/30">
						Get started by editing&nbsp;
						<code className="font-bold font-mono">
							app/page.tsx
						</code>
					</p>
					<div className="fixed bottom-0 left-0 flex h-48 w-full items-end justify-center bg-linear-to-t from-white via-white lg:static lg:size-auto lg:bg-none dark:from-black dark:via-black">
						<a
							className="flex place-items-center gap-2 p-8 hover:underline"
							href="https://glpecile.xyz"
							target="_blank"
							rel="noopener noreferrer"
						>
							By Gian Luca Pecile
						</a>
					</div>
				</div>
			</section>
		</main>
	);
}
