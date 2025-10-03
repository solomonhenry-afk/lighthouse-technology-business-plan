#!/bin/bash
# Deployment script for Lighthouse Technology Business Plan

# Prompt for commit message
echo "Enter commit message: "
read msg

# Git add, commit, and push
git add .
git commit -m "$msg"
git push origin main

# Deploy to Vercel production
vercel --prod --yes --confirm

# Force alias to custom domain
vercel alias set lighthouse-technology-business-plan.vercel.app lighthouse-technology.vercel.app
