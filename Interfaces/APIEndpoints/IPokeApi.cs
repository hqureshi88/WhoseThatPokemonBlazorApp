using BlazorPokemonApp.Domain.PokeApi;
using Refit;

namespace BlazorPokemonApp.Interfaces.APIEndpoints;

public interface IPokeApi
{
    [Get("/pokemon-species")]
    Task<PokemonPagination<PokemonHateoas>> GetAllPokemonSpecies([AliasAs("limit")] int limit = 151);
}