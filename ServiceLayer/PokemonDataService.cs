using BlazorPokemonApp.Domain;
using BlazorPokemonApp.Interfaces.APIEndpoints;
using Microsoft.Extensions.Configuration;
using Refit;

namespace BlazorPokemonApp.ServiceLayer;

public class PokemonDataService
{
    private List<PokemonInfo>? _pokemonList;
    private readonly IPokeApi _pokeApi;

    public PokemonDataService(IConfiguration configuration)
    {
        var baseUrl = configuration!["PokeApiBaseUrl"];

        if(string.IsNullOrEmpty(baseUrl))
        {
            throw new ArgumentNullException("PokeApiBaseUrl", "PokeApiBaseUrl is not configured.");
        }

        _pokeApi = RestService.For<IPokeApi>(baseUrl);
    }                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  

    public async Task<List<PokemonInfo>> GetPokemonListAsync()
    {
        if (_pokemonList == null)
        {
            var species = await _pokeApi.GetAllPokemonSpecies();

            _pokemonList = species.Results
                .Select(pokemonSpecie => new PokemonInfo()
                {
                    Id = GetPokemonIdFromUrl(pokemonSpecie.Url),
                    Name = pokemonSpecie.Name.ToUpperInvariant()
                })
                .ToList();
        }

        return _pokemonList;
    }

    public async Task<PokemonInfo> GetPokemonByIdAsync(int id)
    {
        _pokemonList ??= await GetPokemonListAsync();

        return _pokemonList.Single(a => a.Id == id);
    }

    public async Task<int> GetPokemonCountAsync()
    {
        _pokemonList ??= await GetPokemonListAsync();

        return _pokemonList.Count;
    }

    private static int GetPokemonIdFromUrl(string url)
    {
        return int.Parse(new Uri(url).Segments.LastOrDefault()?.Trim('/') ?? "0");
    }


}