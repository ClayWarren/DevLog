#!/usr/bin/env node

import { execSync } from "child_process";
import fs from "fs";

function getCommits(): string {
  return execSync(
    `git log --pretty=format:"%ad|%s" --date=short`,
    { encoding: "utf-8" }
  );
}

function groupCommitsByDate(log: string) {
  const grouped: Record<string, string[]> = {};
  const lines = log.split("\n");

  for (const line of lines) {
    const [date, message] = line.split("|");
    if (!grouped[date]) grouped[date] = [];
    grouped[date].push(message);
  }

  return grouped;
}

function formatMarkdown(grouped: Record<string, string[]>) {
  let md = "";
  for (const date of Object.keys(grouped).sort().reverse()) {
    md += `## ${date}\n`;
    for (const msg of grouped[date]) {
      md += `- ${msg}\n`;
    }
    md += "\n";
  }
  return md;
}

function writeDevLog(md: string) {
  fs.writeFileSync("DEVLOG.md", md);
  console.log("✅ DEVLOG.md updated!");
}

try {
  const log = getCommits();
  const grouped = groupCommitsByDate(log);
  const md = formatMarkdown(grouped);
  writeDevLog(md);
} catch (error) {
  console.error("❌ Error: Are you in a git repository?");
}
