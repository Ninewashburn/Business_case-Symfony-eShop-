interface IProductTitle {
    title: string;
}

window.addEventListener('load', () => {
    const inputSearch: HTMLInputElement = document.querySelector('[data-product-search]');
    if (inputSearch) {
        const autocomplete = require('autocompleter');
        let arrayProductTitle: IProductTitle[] = [];
        autocomplete({
            minLength: 1,
            input: inputSearch,
            fetch: function (text, update) {
                text = text.toLowerCase();
                fetch('/ajax/product/findAllNames/' + text)
                    .then((response) => {
                        return response.json();
                    })
                    .then((products) => {
                        arrayProductTitle = products;
                    })
                    .catch((e) => {
                    })
                ;
                const suggestions = arrayProductTitle.filter(n => n.title.toLowerCase().includes(text));
                update(suggestions);
            },
            onSelect: function (item) {
                inputSearch.value = item.title;
                window.location.href = '/product/' + item.title;
            },
            render: function (item) {
                const itemElement = document.createElement("div");
                itemElement.classList.add('autocomplete-item');
                itemElement.textContent = item.title;
                itemElement.addEventListener('click', () => {
                    inputSearch.value = item.title;
                });
                return itemElement;
            }
        });
    }
});

window.addEventListener('load', () => {
    const inputSearch: HTMLInputElement = document.querySelector('[data-product-search-responsive]');
    if (inputSearch) {
        const autocomplete = require('autocompleter');
        let arrayProductTitle: IProductTitle[] = [];
        autocomplete({
            minLength: 1,
            input: inputSearch,
            fetch: function (text, update) {
                text = text.toLowerCase();
                fetch('/ajax/product/findAllNames/' + text)
                    .then((response) => {
                        return response.json();
                    })
                    .then((products) => {
                        arrayProductTitle = products;
                    })
                    .catch((e) => {
                    })
                ;
                const suggestions = arrayProductTitle.filter(n => n.title.toLowerCase().includes(text));
                update(suggestions);
            },
            onSelect: function (item) {
                inputSearch.value = item.title;
                window.location.href = '/product/' + item.title;
            },
            render: function (item) {
                const itemElement = document.createElement("div");
                itemElement.classList.add('autocomplete-item');
                itemElement.textContent = item.title;
                itemElement.addEventListener('click', () => {
                    inputSearch.value = item.title;
                });
                return itemElement;
            }
        });
    }
});
