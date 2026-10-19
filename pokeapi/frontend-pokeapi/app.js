
const inputNombre = document.getElementById("nombrePokemon");
const btnBuscar = document.getElementById("btnBuscar");
const mensaje = document.getElementById("mensaje");
const resultado = document.getElementById("resultado");

async function buscarPokemon() {
    const nombrePokemon = inputNombre.value.trim().toLowerCase();

    resultado.hidden = true;
    mensaje.textContent = "";

    if (!nombrePokemon) {
        mensaje.textContent = "Por favor, escribe el nombre de un Pokémon.";
        return;
    }

    mensaje.textContent = "Cargando...";

    try {
        const response = await fetch(
            `https://pokeapi.co/api/v2/pokemon/${encodeURIComponent(nombrePokemon)}`
        );

        if (!response.ok) {
            if (response.status === 404) {
                throw new Error("Pokémon no encontrado. Verifica el nombre e inténtalo nuevamente.");
            }

            throw new Error("No se pudo consultar el Pokémon. Inténtalo más tarde.");
        }

        const pokemon = await response.json();

        document.getElementById("nombre").textContent =
            pokemon.name.charAt(0).toUpperCase() + pokemon.name.slice(1);

        document.getElementById("imagen").src =
            pokemon.sprites.front_default || "";

        document.getElementById("imagen").alt =
            `Imagen de ${pokemon.name}`;

        document.getElementById("tipos").textContent =
            pokemon.types.map(tipo => tipo.type.name).join(", ");

        // El peso viene en hectogramos: dividir entre 10 para obtener kg.
        document.getElementById("peso").textContent =
            (pokemon.weight / 10).toFixed(1);

        // La altura viene en decímetros: dividir entre 10 para obtener metros.
        document.getElementById("altura").textContent =
            (pokemon.height / 10).toFixed(1);

        resultado.hidden = false;
        mensaje.textContent = "Pokémon encontrado correctamente.";

    } catch (error) {
        mensaje.textContent = error.message.includes("Pokémon no encontrado")
            ? error.message
            : error.message === "Failed to fetch"
                ? "Error de conexión. Verifica tu internet e inténtalo nuevamente."
                : error.message;
    }
}

btnBuscar.addEventListener("click", buscarPokemon);

inputNombre.addEventListener("keydown", (event) => {
    if (event.key === "Enter") {
        buscarPokemon();
    }
});
