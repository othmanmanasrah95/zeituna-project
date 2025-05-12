# Zeituna Project - GitHub Repository Documentation

## 📂 Branching Strategy
This project follows the **GitFlow** branching strategy for organized version control.

### Branch Types and Naming Conventions

| Branch Type       | Naming Convention               | Purpose                                              |
| ---------------- | -------------------------------- | ---------------------------------------------------- |
| **Main**          | `main`                           | Stable production code                                |
| **Develop**       | `develop`                        | Latest development code                               |
| **Feature**       | `feature/feature-name`            | New features under development                        |
| **Bugfix**        | `bugfix/fix-description`          | Fixing bugs in the development branch                  |
| **Release**       | `release/version-number`          | Final testing before production                       |
| **Hotfix**        | `hotfix/fix-description`          | Urgent fixes directly applied to production            |
| **Support**       | `support/support-description`     | Maintenance or support for previous releases           |


## 🔧 Setting Up the Repository Locally

1. **Clone the repository:**
   ```bash
   git clone git@github.com:your-username/zeituna-project.git
   cd zeituna-project
   ```

2. **Initialize GitFlow (if not already initialized):**
   ```bash
   git flow init
   ```
   - Feature branches? [feature/]
   - Bugfix branches? [bugfix/]
   - Release branches? [release/]
   - Hotfix branches? [hotfix/]
   - Support branches? [support/]
   - Version tag prefix? []


## 🚀 Working with Branches

### Creating a New Feature Branch
```bash
git checkout develop
git flow feature start feature-name
```

### Merging a Finished Feature
```bash
git flow feature finish feature-name
git push origin develop
```

### Starting a Bugfix Branch
```bash
git checkout develop
git flow bugfix start fix-description
```

### Merging a Finished Bugfix
```bash
git flow bugfix finish fix-description
git push origin develop
```

### Creating a Release Branch
```bash
git checkout develop
git flow release start v1.0.0
```

### Finishing a Release
```bash
git flow release finish v1.0.0
git push origin main
git push origin develop
```

### Creating a Hotfix Branch
```bash
git checkout main
git flow hotfix start fix-description
```

### Finishing a Hotfix
```bash
git flow hotfix finish fix-description
git push origin main
git push origin develop
```

## 📝 Commit Message Guidelines
- Use meaningful and descriptive messages following the format:

```
[Category] Brief description

- feat: A new feature
- fix: A bug fix
- refactor: Code changes that neither fix a bug nor add a feature
- docs: Documentation changes
- style: Formatting, missing semi colons, etc.
- test: Adding or updating tests
- chore: Changes to the build process or auxiliary tools
```

### Example:
```
feat: Add user authentication feature
fix: Resolve login issue when credentials are empty
docs: Update README with API endpoints
```

## 🌍 Pushing and Pulling Changes

### Push to Remote Repository
```bash
git push origin branch-name
```

### Pull Latest Changes
```bash
git pull origin branch-name
```

## 🚑 Handling Merge Conflicts
- If a conflict occurs during merging, open the conflicting file and resolve manually.
- After resolving, mark as resolved:
  ```bash
  git add .
  git commit -m "fix: resolve merge conflict in file-name"
  ```

## 📊 Viewing Branch History
```bash
git log --oneline --graph --decorate --all
```

## 🤝 Contributing
- Fork the project and make your changes in a new branch.
- Submit a pull request when your changes are ready.
- Follow the commit message guidelines strictly.

## 🛠️ Maintenance
- Regularly pull changes from the **main** and **develop** branches to stay updated.
- Clean up local branches after merging:
  ```bash
  git branch -d feature/feature-name
  ```

For any issues or suggestions, please open a GitHub Issue or contact the project maintainer.
