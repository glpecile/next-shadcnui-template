.PHONY: help install create_env build start deploy dev lint clean clean_cache up_next

help:
	@echo "📚 Available commands:"
	@echo "  - deps: Install pnpm and project dependencies"
	@echo "  - install: Install dependencies using pnpm"
	@echo "  - create_env: Create environment variables file to then fill out"
	@echo "  - build: Build the project"
	@echo "  - start: Start a production build of the project on specified port (default: 3000)"
	@echo "  - deploy: Runs a build and start command to deploy the project"
	@echo "  - dev: Start the development server on specified port (default: 3000)"
	@echo "  - lint: Run linting, this is run automatically before each commit"
	@echo "  - clean: Clean the project by removing node_modules and .next directories"
	@echo "  - clean_cache: Clean the project and pnpm cache"
	@echo "  - up_next: Update next.js and related dependencies"

install_pnpm:
	@echo "🚧 Installing pnpm..."
	npm install -g pnpm

install:
	@echo "🛠️ Installing..."
	pnpm install --frozen-lockfile

deps: install_pnpm install

create_env:
	@echo "🚚 Creating environment variables files .env",
	@cp .env.example .env

PORT ?= 3000

build:
	@echo "🏗️ Building..."
	pnpm build

start:
	@echo "🧜‍ Starting on port $(PORT)..."
	pnpm run start -p $(PORT)

deploy: build start

dev:
	@echo "🧑‍💻 Starting dev server on port $(PORT)..."
	pnpm run dev -p $(PORT)

lint:
	@echo "🧹 Linting..."
	pnpm lint

clean:
	@echo "🗑️ Cleaning..."
	rm -rf node_modules .next

clean_cache: clean
	@echo "🗑️ Cleaning everything..."
	pnpm cache clear --all

up_next:
	@echo "▲ Updating next..."
	pnpm up next react react-dom eslint-config-next --latest

up_biome:
	@echo "🆙 Updating biome..."
	pnpm up @biomejs/biome --latest
	pnpm dlx @biomejs/biome migrate --write
