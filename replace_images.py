import os
import re
import random
from collections import defaultdict

ASSET_DIR = "assets/images"

# Step 1: Collect all available images in assets/images (including subdirectories)
available_images = []
for root, dirs, files in os.walk(ASSET_DIR):
    for f in files:
        if f.lower().endswith(('.png', '.jpg', '.jpeg', '.gif', '.webp', '.bmp')):
            available_images.append(os.path.join(root, f))

if not available_images:
    print("No images found in assets/images")
    exit(1)

print(f"Found {len(available_images)} available images in {ASSET_DIR}")

# Step 2: Collect all markdown files
md_files = []
for root, dirs, files in os.walk("."):
    dirs[:] = [d for d in dirs if not d.startswith(".")]
    for f in files:
        if f.endswith(".md"):
            md_files.append(os.path.join(root, f))

# Step 3: Find all image references
image_refs = []
for filepath in md_files:
    with open(filepath, "r", encoding="utf-8") as f:
        content = f.read()
    for m in re.finditer(r"!\[(.*?)\]\((.*?)\)", content):
        alt_text = m.group(1)
        old_path = m.group(2)
        # Only replace local asset images (not external URLs)
        if old_path.startswith("/assets/images/") or old_path.startswith("assets/images/"):
            image_refs.append((filepath, alt_text, old_path, m.start(), m.end()))

print(f"Found {len(image_refs)} local image references across {len(md_files)} markdown files.")

# Step 4: Replace references in markdown files with random available images
replacements_by_file = defaultdict(list)

random.seed()  # Initialize random seed

for filepath, alt_text, old_path, start, end in image_refs:
    # Pick a random image from available images
    new_local = random.choice(available_images)

    md_dir = os.path.dirname(filepath)
    rel_path = os.path.relpath(new_local, md_dir)
    rel_path = rel_path.replace("\\", "/")

    replacements_by_file[filepath].append({
        "start": start,
        "end": end,
        "old": f"![{alt_text}]({old_path})",
        "new": f"![{alt_text}]({rel_path})"
    })

for filepath, reps in replacements_by_file.items():
    with open(filepath, "r", encoding="utf-8") as f:
        content = f.read()

    # Apply replacements in reverse order to preserve indices
    for rep in sorted(reps, key=lambda x: x["start"], reverse=True):
        content = content[:rep["start"]] + rep["new"] + content[rep["end"]:]

    with open(filepath, "w", encoding="utf-8") as f:
        f.write(content)
    print(f"Updated: {filepath}")

print("\nDone!")
