using Microsoft.AspNetCore.Components;

namespace BlazorPokemonApp.Components;

public partial class WhosThatPokemonResult
{
    [Parameter]
    public bool Show { get; init; }
    [Parameter]
    public bool Correct { get; init; }
}