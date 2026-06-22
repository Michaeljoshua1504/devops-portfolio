# DevOps + AI + Multi-Cloud Learning Tracker

> Upload this file to your Claude Project. At the start of every session, Claude reads this and continues exactly where we left off.

---

## Our Approach (Never Change This)

### Core Principles
- **One topic per session**
- **Concept first, always** — understand the PROBLEM before touching any tool
- **Tool-independent thinking** — learn ideas so deeply you can pick up ANY tool, not just one specific one
- **AI woven in from day one** — not a separate advanced topic, but part of everything
- **Multi-cloud from the start** — AWS, Azure, GCP compared side by side
- **Simple language, real-world analogies**
- **One hands-on exercise per session**
- **Mini-Project Rule:** Every topic MUST have a mini-project. A topic is only marked ✅ Done AFTER the mini-project code is built and successfully pushed to the `devops-portfolio` GitHub repo.
- **Python only when it relates to a real DevOps task**
- **Always explain WHY a tool exists before HOW to use it**
- **Security is not a phase — it is a thread.** Every topic from Phase 1 onward includes a security lens. When we learn networking, we ask: how can this be attacked? When we write scripts, we ask: are passwords hardcoded? When we build pipelines, we add automated scanning.

### What "Concept First, Tool Independent" Means
Before learning any tool, we answer:
- What PROBLEM does this solve?
- What would happen if this tool did not exist?
- If this tool disappeared tomorrow, could I use another one?

### What "AI + DevOps" Actually Means
There are two layers — you need both:

**Layer 1 — AI as your learning co-pilot (starts today)**
Use AI (Claude, ChatGPT, Copilot, Gemini ) while you learn and work.

**Layer 2 — AI built into DevOps work itself (learned progressively)**
- Use AI tools to write infrastructure code faster
- Build pipelines that automatically scan code using AI
- Set up systems where AI watches servers and predicts failures
- Call AI APIs (Claude, OpenAI, Gemini, Groq) from scripts to automate decisions
- Deploy and manage AI models in the cloud

---

## How to Use This File

1. After every session/topic, update the status of that topic and add detailed session notes
2. Save the updated file
3. At the start of the next chat, paste this exact message:

> "Here is my updated learning tracker. Read it and continue from where we left off."

---

## Problem-Solving Framework (Always Apply This)

1. **Observe** — What is actually happening?
2. **Ask why** — Five times if needed. Find the root cause.
3. **Isolate** — Change one thing at a time.
4. **Verify** — Prove it is fixed. Do not assume.
5. **Document** — Write down what broke and how you fixed it.

---

## Master Topic List (67 Topics Total)

### Phase 1 — Foundations (How Computers Think)

| # | Topic | Status | Session Notes |
|---|-------|--------|---------------|
| 1.1 | How computers work — input, processing, output mental model | ✅ Done | Computer = city analogy. Hardware vs OS vs apps. Input → Process → Output. ATM example. Why Linux: free, stable, lightweight, open source. |
| 1.2 | The terminal — what it is and why it exists | ✅ Done | Terminal = direct line to OS. Mayor analogy. Commands vs clicking. Servers are text-only. AI as co-pilot from day one. |
| 1.3 | Terminal hands-on — navigating like a detective | ✅ Done | Learned to navigate file system like a detective. pwd, ls, cd, cd .., cd ~. Explored /etc/ folder. |
| 1.4 | Files and folders — how computers organise everything | ✅ Done | File = named container. Folder = tree structure. Absolute vs relative paths. /etc/ for config, /var/log/ for logs. Permission denied = first preview of Topic 1.7. |
| 1.5 | Your first shell script — making the computer do a task for you | ⬅ Next | |
| 1.6 | Processes — what is actually running inside your computer | ⬜ Not started | |
| 1.7 | Permissions — who is allowed to do what, and why this matters in security | ⬜ Not started | |

*(Other phases remain unchanged, truncated for brevity but assume full 67 topics are here)*

---

## Current Status

- **Last completed topic:** 1.4 — Files and folders
- **Next topic:** 1.5 — Your first shell script (Mini-project pending)
- **Phase:** 1 — Foundations
- **Total topics completed:** 4 of 67

## Ecosystem Status

**1. Tracker Web App**
- **URL:** michaeljoshua1504.github.io/devops.tracker
- **GitHub:** github.com/Michaeljoshua1504/devops.tracker
- **Backend:** Supabase (6 tables)
- **Status:** All tabs (Dashboard, Session Log, Topics, Portfolio, Mindset, Daily Log, Terminal Cmds, War room) are 100% working.
- **Jarvis:** Fixed. It is now a functioning floating button, not a tab. 

**2. Portfolio Repository**
- **URL:** github.com/Michaeljoshua1504/devops-portfolio
- **Purpose:** Storage for all end-of-topic mini-projects.
- **Structure Rule:** `Phase-X-Name/Topic-X.X-Name/` (e.g., `Phase-1-Foundations/Topic-1.5-Health-Check/`)

---

## End of Session Output Format (Claude Must Follow This Exactly)

After the topic is taught AND the mini-project is pushed to GitHub, Claude must generate the session outputs in this exact structure for easy copy-pasting into the Tracker App:

**1. Save Completed Session (Session Log tab)**
- Date: 
- Time: 
- Topic ID: 
- Topic Name: 
- Full Teaching Notes: 
- Summary (2 to 3 lines max): 
- Key Concepts (comma separated): 

**2. Add Portfolio Project (Portfolio tab)**
- Title: 
- Phase: 
- Description: 
- Tech Stack: 
- GitHub URL: *(Link to the specific folder in devops-portfolio)*

**3. Add Mindset Moment (Mindset tab)**
- Date: 
- Time: 
- Moment Type: (Question or Situation)
- Insight Source: (AI or Me)
- Question or Situation: 
- Rating: (e.g., Good Direction or Strong instinct)
- Concept / Tag: 
- Linked Topic: 
- Insight / Action Taken: 

**4. Daily Log / Journal (Daily Log tab)**
- Date: 
- Author: Michael Joshua
- Title: 
- Linked Topic: 
- Entry: 

**5. Add Command (Terminal Cmds tab)** *(One block per command)*
- Command Text: 
- Category: (Linux, Git, Docker, Kubernetes, Terraform, Python, Cloud CLI)
- Topic Reference: 
- Meaning / What it does: 
- Example Usage: 
- Future Notes: 
- Security Notes: 
- Helpful Links: 

**6. New Report (Warroom tab)** *(one report per one situation or problem)*
- Date: 
- Report Type: (Bug/Issue, Deep Dive, Build Report, Incident Post-Mortem)
- Title: 
- Error Code: (if applicable)
- Solution / Fix: 
- Attach Detailed AI Report: (Detailed markdown text explaining the build or bug fix)

---

## What Claude Must Do at the Start of Every Session

1. Read this file completely
2. Say "Welcome back! Continuing from Topic X.X — [topic name]" OR acknowledge the tracker task if one is pending
3. Do NOT re-explain already completed topics unless asked
4. Apply the full approach: concept first, tool independent, AI woven in, security lens always on
5. Guide the user to build the Topic Mini-Project
6. Provide exact Git commands to push the project to `devops-portfolio`
7. Generate the final form outputs using the "End of Session Output Format"