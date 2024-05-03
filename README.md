# README

## Exercises

### 1. Search by product's name

- [ ] Partial search
      Ex.: Searching by **de** should return "El**de**n Ring" but also "**De**vil May Cry"

- [ ] Update URL
      Every new search should update the URL, ex.: "localhost:3000?**q=de**". Clicking "Back Button" on browers should go to previous query.

- [ ] Keep focus on searchbar
      When submitting the search, the user should not lose focus of the search bar so he can keep typing after each search.

### 2. Search by price

- [ ] Search on APPLY FILTER
      Select a price from the sidebar and click APLICAR FILTROS for the filter to be applied.

- [ ] Update URL
      The applied price must show up in the URL, ex.: "localhost:3000?price=50". Clicking "Back Button" on browers should go to previous query.

- [ ] Shareable URL
      The selected filter must match whatever is in the URL, so if URL is "localhost:3000?price=10", then ABAIXO DE R$10,00 option must be selected when the page is loaded.

### 3. Search by category

- [ ] Search on APPLY FILTER
      Select a category from the sidebar and click APLICAR FILTROS for the filter to be applied.

- [ ] Select Many
      User should be able to filter by 0-N categories.

- [ ] Category in URL
      The applied category must show up in the URL, ex.: "localhost:3000?categories[]=action".

- [ ] Shareable URL
      The selected filter must match whatever is in the URL, so if URL is "localhost:3000?categories[]=strategy&categories[]=simulation", then both STRATEGY and SIMULATION categories should be selected when the page is loaded.

### 4. Search within categories filter

- [ ] Search by pressing ENTER after typing.
- [ ] A category search should NOT refresh the page.
- [ ] A category search should NOT show up on the URL. There is no need for it to be shareable.
- [ ] Searching by category should not remove other already applied filters.
- [ ] BONUS: Search after every keystroke.
  - [ ] BONUS 2: Add 200ms of debounce before firing the search.

### 5. Remove selected filters

- [ ] Each selected filter should show up in a list of applied filters.
- [ ] Clicking on the (X) button of an applied filter should remove it for the query and rerun the search.
- [ ] Each category filter should appear as a differente item on the array of applied filters.
      Ex.: [**action (x)**] [**adventure (x)**] [**RPG (x)**]
- [ ] The list of applied filters must match whatever is in the URL.
      ex.: If URL is "localhost:3000?price=10&categories[]=racing&categories[]=simulation", then the list should be loaded as [**<= R$10,00 (x)**] [**Racing (x)**] [**Simulation (x)**]

### 6. Filter by type

- [ ] Clicking the buttons above the searchbar should apply a `&type[]` filter to the URL.
- [ ] User can select many types at a time.
- [ ] The search is fired on click.
- [ ] Unselecting types.
      Clicking a previously selected type should remove it from the list of filters.
- [ ] Show on applied filters list.
      Each selected `type[]` should show up on the applied filters list.
