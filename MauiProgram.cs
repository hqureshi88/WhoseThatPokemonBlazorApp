﻿using Microsoft.Extensions.Logging;
using Microsoft.Extensions.Configuration;
using MudBlazor.Services;
using System.Reflection;
using BlazorPokemonApp.ServiceLayer;
using Refit;
using BlazorPokemonApp.Interfaces.APIEndpoints;

namespace BlazorPokemonApp;

public static class MauiProgram
{
	public static MauiApp CreateMauiApp()
	{
		var builder = MauiApp.CreateBuilder();
		builder
			.UseMauiApp<App>()
			.ConfigureFonts(fonts =>
			{
				fonts.AddFont("OpenSans-Regular.ttf", "OpenSansRegular");
			});

		builder.Services.AddMauiBlazorWebView();

		builder.AddAppSettingsConfiguration();

#if DEBUG
		builder.Services.AddBlazorWebViewDeveloperTools();
		builder.Logging.AddDebug();
#endif
		// Add MudBlazor services
		builder.Services.AddMudServices();

		// Register your data service
		builder.Services.AddSingleton<PokemonDataService>();
		
		return builder.Build();
	}

	private static void AddAppSettingsConfiguration(this MauiAppBuilder builder)
    {
        var a = Assembly.GetExecutingAssembly();
        using var stream = a.GetManifestResourceStream("BlazorPokemonApp.appsettings.json");

		if(stream is null) 
		{
			throw new FileNotFoundException("Embedded resource 'BlazorPokemonApp.appsettings.json' not found.");
		}
        var config = new ConfigurationBuilder()
                    .AddJsonStream(stream!)
                    .Build();

        builder.Configuration.AddConfiguration(config);
    }
}
