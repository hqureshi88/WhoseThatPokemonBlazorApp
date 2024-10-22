using BlazorPokemonApp.Domain;
using BlazorPokemonApp.ServiceLayer;
using Microsoft.AspNetCore.Components;
using MudBlazor;

namespace BlazorPokemonApp.Components;

public partial class PokemonSelector
{
    [Inject]
    private PokemonDataService PokemonDataService { get; init; } = default!;

    private MudAutocomplete<PokemonInfo> _selectedPokemon = default!;
    private List<PokemonInfo>? _pokemon;

    public PokemonInfo? SelectedPokemon { get; set; }

    public void Clear()
    {
        _selectedPokemon.ClearAsync();
    }

    protected override async Task OnInitializedAsync()
    {
        await GetPokemonListAsync();
    }

    private Task<IEnumerable<PokemonInfo>?> Search(string value, CancellationToken cancellationToken)
    {
        // if text is null or empty, show complete list
        if (string.IsNullOrEmpty(value))
            return Task.FromResult(_pokemon?.Take(10));

        return Task.FromResult(_pokemon?
            .Where(pokemon => pokemon.Name.Contains(value, StringComparison.InvariantCultureIgnoreCase))
            .Take(10));
    }

    protected async Task GetPokemonListAsync()
    {
        _pokemon = await PokemonDataService.GetPokemonListAsync();
    }
}