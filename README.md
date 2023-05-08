# Starter kit Motoko

Bienvenido al proyecto Starter Kit utilizando el lenguaje de Motoko, este proyecto es mantenido por la comunidad y tiene como objetivo ser un punto de partida para aprender a desarrollar Canisters en el ecosistema de Internet Computer Protocol.

Antes de considerar trabajar con este proyecto te recomendamos primero revisar la siguiente documentación:

- [Arquitectura de Internet Computer Protocol](https://internetcomputer.org/how-it-works/architecture-of-the-internet-computer/#canister-smart-contracts)
- [Despliega tu primer canister en 5 minutos](https://internetcomputer.org/docs/current/developer-docs/quickstart/hello10mins)
- [SDK Developer Tools](https://internetcomputer.org/docs/current/developer-docs/build/install-upgrade-remove)
- [Guia del lenguaje de programación de Motoko](https://internetcomputer.org/docs/current/developer-docs/build/cdks/motoko-dfinity/motoko/)
- [Referencia de la librería base de Motoko](https://internetcomputer.org/docs/current/references/motoko-ref/)

## Prerequisitos

- Contar con Mac/Linux o o WSL2 en caso de contar con computadoras con windows.
- Tener descargado e instalada la herramienta dfx de Dfinity

```bash
sh -ci "$(curl -fsSL https://internetcomputer.org/install.sh)"
```

- Tener detenido algun servicio de Internet Computer o otro proceso de red que tenga en uso el puerto 8000.

Considera los siguientes comandos para iniciar a trabajar:

```bash
cd starter_kit/
dfx help
dfx canister --help
```

## Corre este proyecto de forma local

Para correr este proyecto localmente asegurate de utiizar los siguientes comandos:

### 1. Inicia una replica de Internet Computer en segundo plano.

```bash
# Una replica es una instancia local que ejecuta una copia del estado del canister
dfx start --background
```

### 2. Abre una nueva ventana de tu terminal.

### 3. Reserva un identificador para tu Canister

```bash
dfx canister create starter_kit_backend
```

### 4. Compila y constuye el archivo wasm de tu Canister

```bash
dfx build
```

### 5. Despliega tu canister en la replica y genera la interfaz candid para consumir tu canister de forma visual

```bash
dfx deploy
```

## Realiza cambios en tu canister

Si has realizado cambios en tu archivo main.mo deberas compilar y actualizar tu canister.

```bash
# Compila de nuevo tu proyecto
dfx build

# Instala el archivo wasm generado de la compilación en tu canister
dfx canister install --all --mode upgrade

```

Una vez desplegado podrás consumir tu canister en una interfaz virtual web predeterminada en: `http://localhost:4943?canisterId={asset_canister_id}`.
