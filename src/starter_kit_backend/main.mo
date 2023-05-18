import HashMap "mo:base/HashMap";
import Text "mo:base/Text";
import Principal "mo:base/Principal";
import Array "mo:base/Array";
import Debug "mo:base/Debug";
import Bool "mo:base/Bool";

actor MemeGallery {

  // Creamos tipos especificos
  type Mensaje = Text;
  type Artista = Principal;

  //creamos un tipo abstracto para nuestros memes
  type Meme = {
    url : Text;
    desc : Text;
    calificacion: Nat; // Creamos un termómetro de calificaciones
  };

  //creamos el hashmap para almacenar los memes
  let memes = HashMap.HashMap<Artista, Meme>(0, Principal.equal, Principal.hash);

  //función que almacena un meme en la galería
  public shared (msg) func saveMemeInGallery(meme : Meme) : async Meme {
    //Obtenemos la cuenta de quien invoco la función (Artista) mediante el objeto msg que contiene el mensaje asincrono del Actor.
    let artista : Principal = msg.caller;

    //insertamos en meme en la galeria
    memes.put(artista, meme);

    // Imprimimos en el log del ambiente de desarrollo creado al ejecutar
    // dfx start en tu terminal
    Debug.print("Tu meme fue almacenado correctamente en la galeria " # Principal.toText(artista) # "gracias! :)");
    return meme;
  };

  //funcion que obtiene un meme en caso de que exista en el HashMap
  public func getMeme(account : Artista) : async ?Meme {
    let meme = memes.get(account);
    return meme;
  };

  //funcion que lista todos los memes
  public func getNumberOfMemes() : async Int {
    //se obtiene el numero de elementos del HashMap como numero de memes
    memes.size();
  };

};
