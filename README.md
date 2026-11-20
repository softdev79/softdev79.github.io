# Vishal Gupta · AI Engineer portfolio

Live site: **https://softdev79.github.io**

A single static page (no build step) presenting six agentic AI projects deployed on AWS, each with evals and
live evidence in its own repo:

- [ClaimSense](https://github.com/softdev79/claimsense-agentic-claims-aws): agentic insurance claims processor (LangGraph, Bedrock, ECS Fargate, Terraform)
- [Comprehension Gate](https://github.com/softdev79/comprehension-gate): merge gate for AI-written code (GitHub App on Lambda + Bedrock)
- [Finance Deep Search](https://github.com/softdev79/finance-deep-search-aws): equity research agent with an eval release gate (Step Functions + Lambda + Bedrock)
- [AI Tutor](https://github.com/softdev79/ai-tutor-serverless-aws): agentic RAG with S3 Vectors and Lambda response streaming
- [Inventory Planning Agent](https://github.com/softdev79/inventory-agent-serverless-aws): serverless AI agent (Lambda + DynamoDB + Bedrock)
- [Trip Buddy](https://github.com/softdev79/trip-buddy-aws): multi-agent trip planner (RAG + MCP + A2A on ECS Fargate)

Hosted on GitHub Pages (HTTPS). A copy also runs as an Amazon S3 static website; `publish.ps1` updates that copy.
