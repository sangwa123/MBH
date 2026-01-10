# Automatic Netlify Deployment Setup

Your repository is now initialized with Git! Follow these steps to enable automatic deployments to Netlify:

## Step 1: Push to GitHub

1. **Create a new repository on GitHub:**
   - Go to https://github.com/new
   - Name it (e.g., `portfolio` or `bonfils-portfolio`)
   - Don't initialize with README, .gitignore, or license
   - Click "Create repository"

2. **Connect your local repository to GitHub:**
   ```bash
   cd "/Users/apple/Desktop/HTML CODE"
   git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git
   git branch -M main
   git push -u origin main
   ```
   (Replace `YOUR_USERNAME` and `YOUR_REPO_NAME` with your actual GitHub username and repository name)

## Step 2: Connect to Netlify

1. **Go to Netlify Dashboard:**
   - Visit https://app.netlify.com
   - Sign in or create an account

2. **Add a new site:**
   - Click "Add new site" → "Import an existing project"
   - Choose "GitHub" and authorize Netlify to access your GitHub account
   - Select your repository from the list

3. **Configure build settings:**
   - **Build command:** Leave empty (no build needed for static HTML)
   - **Publish directory:** Leave empty or set to `/` (root)
   - Click "Deploy site"

## Step 3: Enable Continuous Deployment

Netlify will automatically:
- ✅ Deploy every time you push to the `main` branch
- ✅ Show a preview URL for each deployment
- ✅ Keep your site updated automatically

## Step 4: Future Updates

Every time you make changes in Cursor:

1. **Stage your changes:**
   ```bash
   git add .
   ```

2. **Commit your changes:**
   ```bash
   git commit -m "Description of your changes"
   ```

3. **Push to GitHub:**
   ```bash
   git push
   ```

Netlify will automatically detect the push and deploy your changes within 1-2 minutes!

## Optional: Netlify CLI (Alternative Method)

If you prefer to deploy directly from your terminal:

1. **Install Netlify CLI:**
   ```bash
   npm install -g netlify-cli
   ```

2. **Login to Netlify:**
   ```bash
   netlify login
   ```

3. **Link your site:**
   ```bash
   netlify link
   ```

4. **Deploy:**
   ```bash
   netlify deploy --prod
   ```

---

**Note:** The GitHub + Netlify integration is the recommended method as it provides automatic deployments, preview deployments for pull requests, and a complete deployment history.
