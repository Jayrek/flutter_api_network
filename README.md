# Activity: Fake JSON API Integration

A group activity for building a Flutter app that consumes a **fake JSON API** and presents it with a polished, thematic UI.

---

## Objective

Each group will:

1. **Choose one API** from the [public-apis](https://github.com/public-apis/public-apis) list that returns **fake/test JSON data** (no auth or minimal auth preferred).
2. **Integrate 4–5 endpoints** from that API into a single app.
3. **Design a UI** that is **relevant** to the API’s domain and **visually coherent**—show your artistry.

---

## 1. Pick a Fake JSON API

- Browse: **[public-apis/public-apis](https://github.com/public-apis/public-apis)** (e.g. **Animals**, **Anime**, **Entertainment**, **Food & Drink**, **Games & Comics**, **Test Data**, **Personality**, **Video**, etc.).
- Prefer APIs that:
  - Return **JSON**.
  - Need **no auth** or only a simple **apiKey**.
  - Have **HTTPS** and clear docs.
- **Examples** of APIs with multiple endpoints and fake/friendly data:
  - **JSONPlaceholder** – posts, comments, users, todos, albums, photos  
  - **ReqRes** – users, single user, list, create, update, delete  
  - **Random User** – random user, multiple users  
  - **Dog CEO** – random dog image, list breeds, by breed  
  - **Studio Ghibli** – films, people, locations, species, vehicles  
  - **PokéAPI** – Pokémon, species, types, abilities, etc.  
  - **Open Trivia** – categories, questions  
  - **Bored API** – random activity  
  - **REST Countries** – countries, by name, by code, etc.  
  - **TheMealDB / TheCocktailDB** – meals, cocktails, search, filter  
  - **Cat Facts / Cataas** – facts, images  
  - **Jikan (MyAnimeList)** – anime, manga, characters, search  

Document your choice (name, base URL, and list of endpoints you will use).

---

## 2. Integrate 4–5 Endpoints

- Use **4–5 distinct endpoints** from your chosen API (e.g. list, get by id, search, filter, create if supported).
- Implement:
  - **HTTP client** (e.g. `http` or `dio`) with a single base URL.
  - **Models** (e.g. Dart classes) for the JSON responses you use.
  - **Service/repository** that calls the API and returns typed data.
  - **Error handling** (no response, non-200, parse errors) and optional **loading** states.
- Each integrated endpoint should be **visible in the app** (different screen, tab, or section).

**Checklist:**

- [ ] Endpoint 1: ________________ (e.g. GET list)
- [ ] Endpoint 2: ________________ (e.g. GET by id)
- [ ] Endpoint 3: ________________ (e.g. search/filter)
- [ ] Endpoint 4: ________________
- [ ] Endpoint 5: ________________ (optional)

---

## 3. Suggested App Structure

- **Navigation**: Bottom nav, drawer, or tabs so users can reach each “endpoint feature.”
- **Screens**: At least one screen (or section) per endpoint (e.g. List, Detail, Search, Filters).

---

## 4. Deliverables

1. **Working app** that:
   - Calls 4–5 endpoints from one public fake JSON API.
   - Shows the data in a clear, thematic UI.
2. **Short write-up** (e.g. in README or a doc) including:
   - API name and link.
   - List of endpoints used (method + path).
   - One or two sentences on your UI/theme choices.

---

## Grading Checklist

Use this checklist when grading the activity. Tick each item that is satisfactorily met.

### API & integration

| # | Feature | ✓ | Notes |
|---|---------|---|--------|
| 1 | API is from [public-apis](https://github.com/public-apis/public-apis) (or equivalent curated list) | | |
| 2 | API returns JSON; docs or base URL are identifiable | | |
| 3 | **4–5 endpoints** are integrated (not just 1–2) | | |
| 4 | Each integrated endpoint is **reachable in the app** (visible screen/section) | | |
| 5 | HTTP client used with a consistent base URL | | |
| 6 | Response data is mapped to **Dart models/classes** (no raw JSON in UI) | | |
| 7 | **Service or repository** layer calls the API (not scattered in widgets) | | |
| 8 | **Error handling** present (e.g. failed request, parse error, or empty state) | | |


**Grading:**  
- **Excellent:** All or nearly all items checked; integration is clean and UI is clearly thematic.  
- **Good:** Most items checked; minor gaps in error handling, loading, or polish.  
- **Satisfactory:** At least 4 endpoints integrated and visible; basic UI relevance; some missing error/loading or artistry.  
- **Needs improvement:** Fewer than 4 endpoints, no service layer, or UI not aligned with the API.

---


https://github.com/user-attachments/assets/e039c6d5-465f-4984-8d7e-920f3adb12c8

