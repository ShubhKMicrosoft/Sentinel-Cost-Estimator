# 🎯 Quick Start: Deploy in 5 Minutes

## Goal
Deploy your Sentinel Cost Estimator so Krishna and others can use it by just visiting a URL - **no API key setup required on their end**.

## Easiest Method: Vercel

### Step 1: Install Vercel CLI

```powershell
npm install -g vercel
```

### Step 2: Build Your App

```powershell
cd azure-react-llm
npm run build
```

### Step 3: Login to Vercel

```powershell
vercel login
```

Choose your preferred login method (GitHub recommended).

### Step 4: Deploy

```powershell
vercel
```

Answer the prompts:
- **Set up and deploy?** `Y`
- **Which scope?** Choose your account
- **Link to existing project?** `N`
- **Project name?** `sentinel-cost-estimator` (or any name)
- **In which directory?** `./` (press Enter)
- **Want to override settings?** `N`

### Step 5: Add Your Azure OpenAI Credentials

```powershell
vercel env add AZURE_OPENAI_ENDPOINT
```
Paste your endpoint (e.g., `https://your-resource.openai.azure.com/`)
Choose: **Production**

```powershell
vercel env add AZURE_OPENAI_KEY
```
Paste your API key
Choose: **Production**

```powershell
vercel env add AZURE_OPENAI_DEPLOYMENT
```
Enter your deployment name (e.g., `gpt-4`)
Choose: **Production**

```powershell
vercel env add AZURE_OPENAI_API_VERSION
```
Enter: `2024-02-15-preview`
Choose: **Production**

### Step 6: Deploy to Production

```powershell
vercel --prod
```

### Step 7: Share the URL! 🎉

Vercel will give you a URL like:
```
https://sentinel-cost-estimator-abc123.vercel.app
```

**Share this URL with Krishna and anyone else!** They can:
- ✅ Use the app immediately
- ✅ No setup required
- ✅ No API keys needed
- ✅ Works on any device

---

## Alternative: One-Command Deploy

Or just run this script:

```powershell
cd azure-react-llm
.\deploy.ps1
```

It will handle everything and prompt you for your Azure OpenAI credentials.

---

## After Deployment

### Test It
Visit your Vercel URL and make sure the chat works.

### Share It
Send the URL to:
- Krishna
- Your team
- Anyone who needs access

### Monitor Usage
- Check Azure OpenAI usage in Azure Portal
- Set up budget alerts if needed
- Vercel dashboard shows visitor stats

---

## Optional: Add Password Protection

If you want to control access with a simple password:

1. Add environment variable in Vercel:
   ```powershell
   vercel env add APP_PASSWORD
   ```
   Enter a password (e.g., `SentinelTeam2024`)

2. Update `server.js` (already has code ready, just uncomment it)

3. Share the password with authorized users only

---

## Need Help?

- **Vercel docs:** https://vercel.com/docs
- **Issues?** Check `DEPLOYMENT.md` for troubleshooting
- **Other hosting options:** See full `DEPLOYMENT.md` guide

---

**That's it!** Your app is live and shareable. 🚀
