using Microsoft.AspNetCore.Components;

namespace BlazorPokemonApp.Components;

public partial class WhosThatPokemonData
{
    [Parameter]
    public int PokemonId { get; init; }
    [Parameter]
    public required string PokemonName { get; init; }
    [Parameter]
    public bool Show { get; init; }
}